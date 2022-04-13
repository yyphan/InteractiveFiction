using System;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using TMPro;

public class InkPlayer : MonoBehaviour
{
    public static event Action<Story> OnCreateStory;
    public Story story;
    //_inkJsonAsset is a reference to the story file which will be used to create an instance of the Story class
    public TextAsset conversationInkleFile = null;
    public Canvas canvas = null;
    public TextMeshProUGUI textPrefab = null;
    public Button buttonPrefab = null;
    public float buttonSpace;

    public NotebookManager notebookManager;

    private void Start()
    {
        StartStory();
    }

    private void EndStory()
    {
        Debug.Log("Story ended");
    }

    // Destroy all instantiated UI Components (Text, Button etc.)
    private void RemoveChildren()
    {
        int childCount = canvas.transform.childCount;
        for (int i = 0; i < childCount; i++)
        {
            GameObject UIObject = canvas.transform.GetChild(i).gameObject;
            if (!UIObject.CompareTag("Static UI")) Destroy(UIObject);
        }
    }

    private void StartStory()
    {
        notebookManager.ResetNotebook();
        story = new Story(conversationInkleFile.text);
        if (OnCreateStory != null) OnCreateStory(story);
        RefreshView();
    }

    // This is the main function called every time the story changes. It does a few things:
    // Destroys all the old content and choices.
    // Continues over all the lines of text, then displays all the choices. If there are no choices, the story is finished!
    private void RefreshView()
    {
        RemoveChildren();

        // Display the content
        while (story.canContinue)
        {
            string text = story.Continue(); // gets next line
            text = text.Trim(); // removes white space from text
            CreateContentView(text);
        }

        // Display the choices
        if (story.currentChoices.Count > 0)
        {
            for (int i = 0; i < story.currentChoices.Count; i++)
            {
                Choice choice = story.currentChoices[i];
                Button button = CreateChoiceView(choice.text.Trim());
                Vector3 pos = button.GetComponent<RectTransform>().position;
                button.transform.position += new Vector3(0, -i * buttonSpace, 0);
                button.onClick.AddListener(
                    delegate
                    {
                        OnClickChoiceButton(choice);
                    }
                );
            }
        }
        else
        {
            string endText = "Rewind Time to the Start of Day";
            Button button = CreateChoiceView(endText);
            button.onClick.AddListener(
                delegate
                {
                    StartStory();
                }
            );
        }

        if (story.currentTags.Count > 0)
        {
            foreach (string s in story.currentTags)
            {
                int index = int.Parse(s) - 1;
                notebookManager.AddNewPhoto(index);
            }
        }
    }

    private void CreateContentView(string text)
    {
        TextMeshProUGUI storyText = Instantiate(textPrefab);
        storyText.text = text;
        storyText.transform.SetParent(canvas.transform, false);
    }

    private Button CreateChoiceView(string text)
    {
        // creates the button from a prefab
        Button choiceButton = Instantiate(buttonPrefab);
        choiceButton.transform.SetParent(canvas.transform, false);
        TextMeshProUGUI buttonText = choiceButton.GetComponentInChildren<TextMeshProUGUI>();
        buttonText.text = text;

        // make the button expand to fit the text
        HorizontalLayoutGroup layoutGroup = choiceButton.GetComponent<HorizontalLayoutGroup>();
        layoutGroup.childForceExpandHeight = false;

        return choiceButton;
    }

    private void OnClickChoiceButton(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index); // tells ink which choice was selected
        RefreshView(); // removes choices from the screen
    }
}

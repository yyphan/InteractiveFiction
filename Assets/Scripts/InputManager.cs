using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InputManager : MonoBehaviour
{
    public GameObject NotebookPanel;
    public GameObject MenuPanel;

    public void QuitApplication()
    {
        Application.Quit();
    }

    public void ToggleMenu()
    {
        if (MenuPanel.activeSelf)
        {
            MenuPanel.SetActive(false);
        }
        else
        {
            MenuPanel.SetActive(true);
        }
    }

    private void ToggleNotebook()
    {
        if (NotebookPanel.activeSelf)
        {
            NotebookPanel.SetActive(false);
        }
        else
        {
            NotebookPanel.SetActive(true);
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Tab))
        {
            ToggleNotebook();
        }

        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (NotebookPanel.activeSelf)
            {
                ToggleNotebook();
            }
            else
            {
                ToggleMenu();
            }
        }
    }
}

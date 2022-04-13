using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InputManager : MonoBehaviour
{
    public GameObject NotebookPanel;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Tab))
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

        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (NotebookPanel.activeSelf)
            {
                NotebookPanel.SetActive(false);
            }
            else
            {
                Application.Quit();
            }
        }
    }
}

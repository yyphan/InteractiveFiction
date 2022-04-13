using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class NotebookManager : MonoBehaviour
{
    public TMP_InputField selfNotes;
    public TextMeshProUGUI photoDescription;
    public Image currentPhoto;

    public List<Photo> allPhotos;
    private List<Photo> unlockedPhotos = new List<Photo>();
    private int currentPhotoIndex = -1;

    public void AddNewPhoto(int index)
    {
        if (index < allPhotos.Count)
        {
            unlockedPhotos.Add(allPhotos[index]);
            currentPhotoIndex++;
        }
        else
        {
            Debug.LogWarning("Photo index out of bound");
        }

        UpdateCurrentPhoto();
    }

    public void ResetNotebook()
    {
        unlockedPhotos.Clear();
        selfNotes.text = "";
        currentPhotoIndex = -1;

        UpdateCurrentPhoto();
    }

    public void UpdateCurrentPhoto()
    {
        if (currentPhotoIndex == -1)
        {
            currentPhoto.sprite = null;
            photoDescription.text = "No Photo Here";
            return;
        }

        currentPhoto.sprite = unlockedPhotos[currentPhotoIndex].photoSprite;
        photoDescription.text = unlockedPhotos[currentPhotoIndex].description;
    }

    public void NextPhoto()
    {
        if (currentPhotoIndex < unlockedPhotos.Count - 1)
        {
            currentPhotoIndex++;
            UpdateCurrentPhoto();
        }
    }

    public void PreviousPhoto()
    {
        if (currentPhotoIndex > 0)
        {
            currentPhotoIndex--;
            UpdateCurrentPhoto();
        }
    }
}

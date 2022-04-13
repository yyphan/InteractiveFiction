using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Photo", menuName = "Photo", order = 0)]
public class Photo : ScriptableObject
{
    public Sprite photoSprite;
    public string description;
}

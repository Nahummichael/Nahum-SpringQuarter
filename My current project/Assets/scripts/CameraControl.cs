using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControls : MonoBehaviour
{
    [SerializeField, Tooltip("A reference to the target's transform component.")]
    private Transform target;

    [SerializeField, Tooltip("An offset for the camera's position relative to the target's position.")]
    private Vector3 posOffset; 


    private void LateUpdate()
    {
        if (target != null) transform.position = target.position + posOffset;
    }
}
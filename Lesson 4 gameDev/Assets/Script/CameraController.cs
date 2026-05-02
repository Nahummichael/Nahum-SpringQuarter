using UnityEngine;

public class NewMonoBehaviourScript : MonoBehaviour
{
    //Create Variables
    [SerializeField, Tooltip("A reference to the target's transform component.")]
    private Transform target;

    public  Vector3 posoffset;


    private void LateUpdate()
    {
        //Every Frame Update the camera's position based on the target's position
        transform.position = target.position + posoffset;
    }
    
   

}

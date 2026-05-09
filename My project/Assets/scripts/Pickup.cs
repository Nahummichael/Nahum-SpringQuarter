using UnityEngine;

public class Pickup : MonoBehaviour
{
    public float rotateSpeed = 10f;

    private void Update()
    {
        // spin only on the Y axis
        transform.Rotate(Vector3.up * rotateSpeed * Time.deltaTime);
    }

    private void OnTriggerEnter(Collider other)
    {
        // check if the collision is with the player
        PlayerController player = other.gameObject.GetComponent<PlayerController>();

        // check if the variable is not empty
        if (player != null)
        {
            // destroy pickup
            Destroy(gameObject);

            // earn points
            UIManager.Instance.EarnPoints(10);
        }
    }
}

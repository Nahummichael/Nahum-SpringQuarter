using UnityEngine;
using TMPro;

public class UIManager : MonoBehaviour
{
    // The player's score
    public static UIManager Instance {get; private set;}
    public int playerScore = 0;
    public TextMeshProUGUI scoreText;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(this);
        }
    }

    public void Start()
    {
        // setting the score to 0
        playerScore = 0;
        scoreText.text = "Score: " + playerScore.ToString();
    }

    public void EarnPoints(int points)
    {
        playerScore = playerScore + points;
        scoreText.text = "Score: " + playerScore.ToString();
    }
}

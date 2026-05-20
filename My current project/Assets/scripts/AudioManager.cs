using UnityEngine;
using UnityEngine.Audio;


public class AudioManager : MonoBehaviour
{
    public static AudioManager Instance {get; private set;}

    [SerializeField, Tooltip("An array of sounds in the entire game.")]
    private Sound[] sounds;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            // destroy the duplicates
            Destroy(this);
        }

        // dont destroy the audio when restarting
        //DontDestroyOnLoad(this); had to be removed because that gamemanger wasn't being destroyed causing problems

        // loop through our array of sounds
        foreach (Sound s in sounds)
        {
            // add an audio source component for that sound
            s.audioSource = gameObject.AddComponent<AudioSource>();
            s.audioSource.clip = s.audioClip;
            s.audioSource.volume = s.volume;
            s.audioSource.pitch = s.pitch;
            s.audioSource.loop = s.loop;
        }
    }

    private void Start()
    {
        // play the main theme music
        PlaySound("Main Theme");
    }

    public void PlaySound(string name)
    {
        Sound sound = System.Array.Find(sounds, sound => sound.name == name);
        if (sound == null)
        {
            Debug.LogWarning($"Could not find {name} sound!");
        }

        // playing the sound
        sound.audioSource.Play();
    }

    public void StopSound(string name)
    {
        Sound sound = System.Array.Find(sounds, sound => sound.name == name);
        if (sound == null)
        {
            Debug.LogWarning($"Could not find {name} sound!");
        }

        // stopping the sound
        sound.audioSource.Stop();
    }
}


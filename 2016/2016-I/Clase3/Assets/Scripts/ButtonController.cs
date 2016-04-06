﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ButtonController : MonoBehaviour {

	// Use this for initialization
	Button pauseButton;
	Button startButton;
	GameObject pauseParent;
	GameObject playParent;

	const string PAUSE_BUTTON = "pauseButton";
	const string START_BUTTON = "startButton";
	void Start () {
		pauseParent = GameObject.Find 
			(PAUSE_BUTTON);
		pauseButton = pauseParent.GetComponent<Button> ();
		playParent = GameObject.Find (START_BUTTON);
		startButton = playParent.GetComponent<Button> ();
		pauseButton.onClick.AddListener (() => pauseGame());
		startButton.onClick.AddListener (() => pauseGame());
		playParent.SetActive (false);
	}

	void pauseGame(){
		if (!playParent.activeInHierarchy) {
			playParent.SetActive (true);
			pauseParent.SetActive (false);	
			Time.timeScale = 0;
		} else {
			playParent.SetActive (false);
			pauseParent.SetActive (true);	
			Time.timeScale = 1f;
		}

	}
	
	// Update is called once per frame
	void Update () {
	
	}
}

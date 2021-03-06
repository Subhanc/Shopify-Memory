#  Shopify iOS Internship Summer 2020 Challenge Submission.
## By: Subhan Chaudhry 



<p float="left" align="center">
    <img src="./Documentation-Folder/FirstVideo.gif" width="200"/>
    <img src="./Documentation-Folder/PlayingGame.gif" width="200"/>
    <img src="./Documentation-Folder/GameOver.gif" width="200"/>
</p>

This is my project submission for the Mobile Developer Intern (iOS) - Summer 2020 Position at Shopify in Toronto, Montreal, and Ottawa. The project challenge can be read at: https://docs.google.com/document/d/1M2VsBSZr8696HU6mO3MWveSB7p3Do9lOkMrjT5nKiEg/edit

This iOS game is a version of the concentration card game known as Memory written in **Swift** using the new **SwiftUI** and **Combine** frameworks by Apple. 
# Documentation 

Documentation of the entire project can be found at: https://subhanc.github.io/Shopify-Memory/

# Third Party Dependecies
## Packages 

The project has the following third-party dependecies and uses Swift Packagesfor management:

* Alamofire - for HTTP Requests @ https://github.com/Alamofire/Alamofire
* SwiftyJSON - for parsing data @ https://github.com/SwiftyJSON/SwiftyJSON
* Lottie - To render animations natively. @ https://github.com/airbnb/lottie-ios
* Jazzy - to  generates documentation for the project. @ https://github.com/realm/jazzy

## Third Party Files 
  * ParticleEmitter - Converts a swift CAAnimationLayer to be usable in SwifTUI.@ https://github.com/ArthurGuibert/SwiftUI-Particless
  * StopWatch - SwiftUI View that is used to handle time. Includes functions with .stop() .start() ..etc
  
  ## Third Party Assets
  
  * All audio from http://www.orangefreesounds.com/
  * Trophy Lottie animation from https://lottiefiles.com/677-trophy
  
  
# File Architecture - MVVM 

* This project is built using Apple's new **SwiftUI** - user interface toolkit that lets us design apps in a **declarative way** and the **Combine Framework** - A declarative Swift API for processing values over time.

This project follows the *Model, View, ViewModel (MVVM)* structural design pattern*

* **Audio**: Includes the .mp3 assests used in the project. 
* **Third-Party**: Includes all third party files used in the project. 
* **Services:** Handles API Related code. Utilizes the Alamofire framework.  
* **Models:**  Includes custom models to be used to parse API results which houses all the data and game functionality,  and sound. 
* **ViewModels:** Includes files that are responsible for exposing the data objects from the model in such a way that objects are easily managed and presented. An example used within the project is the CardsViewModel.
* **Assets.xcassets:** Includes all images and colours used for this app
* **Extensions**: Includes the extenstions made to any existing swift file.
* **ContentView**: The view of the actual game. 
  
# Getting Started

### System Requirements
macOS Catalina or later and Xcode to build this project.

### Instructions
To clone this project in Xcode, click "Clone or download" and select "Open in Xcode".

# Features

## Game Modes 

The game consists of three game modes in which the player is able to choose from: 

| Game Mode   | Description                                                                                                                                                                                                                                                                          |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Regular     | Achieve all the matches on the cards field. Play at your own pace!                                                                                                                                                                                                                   |
| Lowest Time | Achieve all the matches on the cards field in the lowest amount of time!                                                                                                                                                                                                             |
| One Shot    | When starting your game, all cards on the field will be face-up for 7 seconds. Use this time wisley to memorize the card field because they will be flipped back over! You have only one shot on matching all the cards pairs on the cards field, if you get a pair wrong, you lose! |


<p float="left" align="center">
    <img src="./Documentation-Folder/Regular.gif" width="200"/>
    <img src="./Documentation-Folder/LowestTime.gif" width="200"/>
    <img src="./Documentation-Folder/OneShot.gif" width="200"/>
</p>

## Game Difficulties

For each game mode listed above, the player can select a difficulty level.

| Difficulty | Grid Size  | # Products Per Match |
|------------|------------|----------------------|
| Easy       | 4x4        | 2 Products           |
| Medium     | 6x5        | 3 Products           |
| Hard       | 6x6        | 4 Products           |


<p float="left" align="center">
    <img src="./Documentation-Folder/EasyMode.PNG" width="200"/>
    <img src="./Documentation-Folder/MediumMode.PNG" width="200"/>
    <img src="./Documentation-Folder/HardMode.PNG" width="200"/>
</p>

## Extra features

### Restart your game.

Pressed the counter-clockwise arrow to restart your curent game. 

<p float="left">
    <img src="./Documentation-Folder/Restart.gif" width="200"/>
</p>

### Music and Sound

Make sure your volume is turned on to enhance your game experience!  

<p float="left">
    <img src="./Documentation-Folder/SoundandMusic.gif" width="200"/>
</p>

### Pause the game

Need a break? Feel free to pause the game

<p float="left">
    <img src="./Documentation-Folder/PauseScreen.gif" width="200"/>
</p>

```

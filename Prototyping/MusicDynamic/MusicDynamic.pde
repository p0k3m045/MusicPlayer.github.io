//Static Music

//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffects = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs;

//Void
void setup() {
  fullScreen();
  println(displayWidth, displayHeight);
  int appWidth = displayWidth;
  int appHeight = displayHeight;

  minim = new Minim(this);
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependenciesFolder = "Dependencies";

  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "The Final Countdown";
  currentSong++;
  songName[currentSong] = "In The End";
  currentSong++;
  songName[currentSong] = "Join Us For A Bite";
  currentSong = 0;

  /*
   String songName1 = "The Final Countdown";
   String songName2 = "In The End";
   String songName3 = "Join Us For A Bite";
   */

  String soundEffect = "Click";
  String fileExtention = ".mp3";

  String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open;
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open;
  String file;

  for ( int i = 0; i<numberOfSongs; i++) {
  //CAUTION: remove ReadMe.txt
  file = musicDirectory + songName[i] + fileExtention;
    println("Inside FOR, Pathway:", file);
    playList[ i ] = minim.loadFile( file );
    //CAUTION; not currentSong var
    println(currentSong);
  }

  file = soundEffectsDirectory + soundEffect + fileExtention;
  soundEffects[currentSong] = minim.loadFile( file );

  for ( int i = 0; i<numberOfSongs; i++) {
    if ( playList[i]==null ) { 
      println("The Play List or Sound Effects did not load properly");
      printArray(playList);
      exit();
    }
  }
  if ( soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    println("The Play List or Sound Effects did not load properly");
    printArray(soundEffects);
    exit();
  }
}//End Setup

void draw() {
  playList[currentSong].play(); //No Loop Built In
}

void mousePressed() {
}//End Mouse Pressed

void keyPressed() {
}// End Key Pressed
//Display


//Music Loading - STRUCTURED Review

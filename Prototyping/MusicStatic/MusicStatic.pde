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


//Display
fullScreen();
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;

//Music Loading - STRUCTURED Review
minim = new Minim(this);
String upArrow = "..";
String open = "/";
String musicFolder = "Music";
String soundEffectsFolder = "Sound Effects";
String dependenciesFolder = "Dependencies";
String songName1 = "The Final Countdown";
String songName2 = "In The End";
String songName3 = "Join Us For A Bite";
String soundEffect = "Click";
String fileExtention = ".mp3";

String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open;
String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open;
String file = musicDirectory +songName1 + fileExtention;
playList[ currentSong ] = minim.loadFile( file );
file = soundEffectsDirectory + soundEffect + fileExtention;
soundEffects[currentSong] = minim.loadFile( file );

if ( playList[currentSong]==null || soundEffects[currentSong]==null ) { //ERROR, play list is NULL
  //See FILE or minim.loadFile
  println("The Play List or Sound Effects did not load properly");
  printArray(playList);
  printArray(soundEffects);
  /*
  println("Music Pathway", musicDirectory);
  println("Full Music File Pathway", file);
  */
} else {
  playList[currentSong].play();
  printArray(playList);
}

playList[currentSong].play();

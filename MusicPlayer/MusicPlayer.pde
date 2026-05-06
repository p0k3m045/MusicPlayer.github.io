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
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs;
String[] songName = new String[numberOfSongs];
float songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight, greenlightDivX, greenlightDivY, greenlightDivWidth, greenlightDivHeight, redlightDivX, redlightDivY, redlightDivWidth, redlightDivHeight, looponceDivX, looponceDivY, looponceDivWidth, looponceDivHeight;
float loopforeverDivX, loopforeverDivY, loopforeverDivWidth, loopforeverDivHeight, stoploopingDivX, stoploopingDivY, stoploopingDivWidth, stoploopingDivHeight, restartDivX, restartDivY, restartDivWidth, restartDivHeight;
float rewindtenDivX, rewindtenDivY, rewindtenDivWidth, rewindtenDivHeight, pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight, playDivX, playDivY, playDivWidth, playDivHeight;
float skipfifteenDivX, skipfifteenDivY, skipfifteenDivWidth, skipfifteenDivHeight, nextsongDivX, nextsongDivY, nextsongDivWidth, nextsongDivHeight, fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight, tenDivX, tenDivY, tenDivWidth, tenDivHeight;
float fontSize2, fontSize3, fontSize4, fontSize5, fontSize6;
color blackInk, whiteInk, resetInk, brownInk, redInk, greenInk, tanInk, buttonInk, textInk;
boolean isPaused = false;
boolean isMuted = false;
String upArrow = "..";
String open = "/";
String musicFolder = "Music";
String soundEffectsFolder = "Sound Effects";
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName1 = "Join Us For A Bite";
String imageName2 = "Europe TFC";
String imageName3 = "Hybrid Theory";
String fileExension = ".jpg";

//Void
void setup() {
  fullScreen();
  tanInk = #D1B95B;
  background(tanInk);
  println(displayWidth, displayHeight);

  int appWidth = displayWidth;
  int appHeight = displayHeight;
  int paperWidth = 279;
  int paperHeight = 216;

  blackInk = #000000;
  redInk = #FF0000;
  greenInk = #00FF00;
  buttonInk = #C66102;
  textInk = #CE9E00;
  whiteInk = #FFFFFF; //Grey Scale is 255
  resetInk = whiteInk;



  float songtitleboxDivX = appWidth * 10 / paperWidth;
  float songtitleboxDivY = appHeight * 12 / paperHeight;
  float songtitleboxDivWidth = appWidth * 80 / paperWidth;
  float songtitleboxDivHeight = appHeight * 20 / paperHeight;

  songtitleDivX = appWidth * 12 / paperWidth;
  songtitleDivY = appHeight * 14 / paperHeight;
  songtitleDivWidth = appWidth * 76 / paperWidth;
  songtitleDivHeight = appHeight * 16 / paperHeight;


  float recordplayerimageDivX = appWidth * 10 / paperWidth;
  float recordplayerimageDivY = appHeight * 40 / paperHeight;
  float recordplayerimageDivWidth = appWidth * 120 / paperWidth;
  float recordplayerimageDivHeight = appHeight * 90 / paperHeight;

  greenlightDivX = appWidth * 95 / paperWidth;
  greenlightDivY = appHeight * 100 / paperHeight;
  greenlightDivWidth = appWidth * 5 / paperWidth;
  greenlightDivHeight = appHeight * 5 / paperHeight;

  redlightDivX = appWidth * 105 / paperWidth;
  redlightDivY = appHeight * 100 / paperHeight;
  redlightDivWidth = appWidth * 5 / paperWidth;
  redlightDivHeight = appHeight * 5 / paperHeight;

  looponceDivX = appWidth * 10 / paperWidth;
  looponceDivY = appHeight * 140 / paperHeight;
  looponceDivWidth = appWidth * 10 / paperWidth;
  looponceDivHeight = appHeight * 10 / paperHeight;

  loopforeverDivX = appWidth * 30 / paperWidth;
  loopforeverDivY = appHeight * 140 / paperHeight;
  loopforeverDivWidth = appWidth * 10 / paperWidth;
  loopforeverDivHeight = appHeight * 10 / paperHeight;

  stoploopingDivX = appWidth * 50 / paperWidth;
  stoploopingDivY = appHeight * 140 / paperHeight;
  stoploopingDivWidth = appWidth * 10 / paperWidth;
  stoploopingDivHeight = appHeight * 10 / paperHeight;

  restartDivX = appWidth * 9 / paperWidth;
  restartDivY = appHeight * 170 / paperHeight;
  restartDivWidth = appWidth * 15 / paperWidth;
  restartDivHeight = appHeight * 15 / paperHeight;

  rewindtenDivX = appWidth * 32 / paperWidth;
  rewindtenDivY = appHeight * 170 / paperHeight;
  rewindtenDivWidth = appWidth * 15 / paperWidth;
  rewindtenDivHeight = appHeight * 15 / paperHeight;

  pauseDivX = appWidth * 56 / paperWidth;
  pauseDivY = appHeight * 170 / paperHeight;
  pauseDivWidth = appWidth * 15 / paperWidth;
  pauseDivHeight = appHeight * 15 / paperHeight;

  playDivX = appWidth * 79 / paperWidth;
  playDivY = appHeight * 170 / paperHeight;
  playDivWidth = appWidth * 15 / paperWidth;
  playDivHeight = appHeight * 15 / paperHeight;

  skipfifteenDivX = appWidth * 103 / paperWidth;
  skipfifteenDivY = appHeight * 170 / paperHeight;
  skipfifteenDivWidth = appWidth * 15 / paperWidth;
  skipfifteenDivHeight = appHeight * 15 / paperHeight;

  nextsongDivX = appWidth * 126 / paperWidth;
  nextsongDivY = appHeight * 170 / paperHeight;
  nextsongDivWidth = appWidth * 15 / paperWidth;
  nextsongDivHeight = appHeight * 15 / paperHeight;

  float uiboxDivX = appWidth * 0 / paperWidth;
  float uiboxDivY = appHeight * 135 / paperHeight;
  float uiboxDivWidth = appWidth * 150 / paperWidth;
  float uiboxDivHeight = appHeight * 81 / paperHeight;

  float searchbarDivX = appWidth * 215 / paperWidth;
  float searchbarDivY = appHeight * 5 / paperHeight;
  float searchbarDivWidth = appWidth * 45 / paperWidth;
  float searchbarDivHeight = appHeight * 10 / paperHeight;

  float magnifyingglassimageDivX = appWidth * 217 / paperWidth;
  float magnifyingglassimageDivY = appHeight * 7 / paperHeight;
  float magnifyingglassimageDivWidth = appWidth * 6 / paperWidth;
  float magnifyingglassimageDivHeight = appHeight * 6 / paperHeight;

  float boxforxDivX = appWidth * (paperWidth - 10) / paperWidth;
  float boxforxDivY = appHeight * 0 / paperHeight;
  float boxforxDivWidth = appWidth * 10 / paperWidth;
  float boxforxDivHeight = appHeight * 10 / paperHeight;

  float xDivX = appWidth * (paperWidth - 8) / paperWidth;
  float xDivY = appHeight * 0 / paperHeight;
  float xDivWidth = appWidth * 8 / paperWidth;
  float xDivHeight = appHeight * 8 / paperHeight;

  float nextupandlyricsboxDivX = appWidth * 165 / paperWidth;
  float nextupandlyricsboxDivY = appHeight * 20 / paperHeight;
  float nextupandlyricsboxDivWidth = appWidth * 105 / paperWidth;
  float nextupandlyricsboxDivHeight = appHeight * 180 / paperHeight;

  float nextupDivX = appWidth * 175 / paperWidth;
  float nextupDivY = appHeight * 27.5 / paperHeight;
  float nextupDivWidth = appWidth * 35 / paperWidth;
  float nextupDivHeight = appHeight * 10 / paperHeight;

  float lyricsDivX = appWidth * 225 / paperWidth;
  float lyricsDivY = appHeight * 27.5 / paperHeight;
  float lyricsDivWidth = appWidth * 35 / paperWidth;
  float lyricsDivHeight = appHeight * 10 / paperHeight;

  float albumcoverimagefinalcountdownDivX = appWidth * 167 / paperWidth;
  float albumcoverimagefinalcountdownDivY = appHeight * 47 / paperHeight;
  float albumcoverimagefinalcountdownDivWidth = appWidth * 20 / paperWidth;
  float albumcoverimagefinalcountdownDivHeight = appHeight * 20 / paperHeight;

  float songNamefinalcountdownDivX = appWidth * 187 / paperWidth;
  float songNamefinalcountdownDivY = appHeight * 47 / paperHeight;
  float songNamefinalcountdownDivWidth = appWidth * 50 / paperWidth;
  float songNamefinalcountdownDivHeight = appHeight * 10 / paperHeight;

  float nameofartisteuropeDivX = appWidth * 187 / paperWidth;
  float nameofartisteuropeDivY = appHeight * 57 / paperHeight;
  float nameofartisteuropeDivWidth = appWidth * 30 / paperWidth;
  float nameofartisteuropeDivHeight = appHeight * 5 / paperHeight;

  float playnextfinalcountdownDivX = appWidth * 252 / paperWidth;
  float playnextfinalcountdownDivY = appHeight * 52 / paperHeight;
  float playnextfinalcountdownDivWidth = appWidth * 10 / paperWidth;
  float playnextfinalcountdownDivHeight = appHeight * 10 / paperHeight;

  float albumcoverimageintheendDivX = appWidth * 167 / paperWidth;
  float albumcoverimageintheendDivY = appHeight * 72 / paperHeight;
  float albumcoverimageintheendDivWidth = appWidth * 20 / paperWidth;
  float albumcoverimageintheendDivHeight = appHeight * 20 / paperHeight;

  float songNameintheendDivX = appWidth * 187 / paperWidth;
  float songNameintheendDivY = appHeight * 72 / paperHeight;
  float songNameintheendDivWidth = appWidth * 50 / paperWidth;
  float songNameintheendDivHeight = appHeight * 10 / paperHeight;

  float nameofartistlinkinparkDivX = appWidth * 187 / paperWidth;
  float nameofartistlinkinparkDivY = appHeight * 82 / paperHeight;
  float nameofartistlinkinparkDivWidth = appWidth * 30 / paperWidth;
  float nameofartistlinkinparkDivHeight = appHeight * 5 / paperHeight;

  float playnextintheendDivX = appWidth * 252 / paperWidth;
  float playnextintheendDivY = appHeight * 77 / paperHeight;
  float playnextintheendDivWidth = appWidth * 10 / paperWidth;
  float playnextintheendDivHeight = appHeight * 10 / paperHeight;

  float albumcoverimagejoinusforabiteDivX = appWidth * 167 / paperWidth;
  float albumcoverimagejoinusforabiteDivY = appHeight * 97 / paperHeight;
  float albumcoverimagejoinusforabiteDivWidth = appWidth * 20 / paperWidth;
  float albumcoverimagejoinusforabiteDivHeight = appHeight * 20 / paperHeight;

  float songNamejoinusforabiteDivX = appWidth * 187 / paperWidth;
  float songNamejoinusforabiteDivY = appHeight * 97 / paperHeight;
  float songNamejoinusforabiteDivWidth = appWidth * 50 / paperWidth;
  float songNamejoinusforabiteDivHeight = appHeight * 10 / paperHeight;

  float nameofartistjtmusicDivX = appWidth * 187 / paperWidth;
  float nameofartistjtmusicDivY = appHeight * 107 / paperHeight;
  float nameofartistjtmusicDivWidth = appWidth * 30 / paperWidth;
  float nameofartistjtmusicDivHeight = appHeight * 5 / paperHeight;

  float playnextjoinusforabiteDivX = appWidth * 252 / paperWidth;
  float playnextjoinusforabiteDivY = appHeight * 102 / paperHeight;
  float playnextjoinusforabiteDivWidth = appWidth * 10 / paperWidth;
  float playnextjoinusforabiteDivHeight = appHeight * 10 / paperHeight;

  float finalcountdownuiboxDivX = appWidth * 165 / paperWidth;
  float finalcountdownuiboxDivY = appHeight * 45 / paperHeight;
  float finalcountdownuiboxDivWidth = appWidth * 105 / paperWidth;
  float finalcountdownuiboxDivHeight = appHeight * 25 / paperHeight;

  float intheenduiboxDivX = appWidth * 165 / paperWidth;
  float intheenduiboxDivY = appHeight * 70 / paperHeight;
  float intheenduiboxDivWidth = appWidth * 105 / paperWidth;
  float intheenduiboxDivHeight = appHeight * 25 / paperHeight;

  float joinusforabiteuiboxDivX = appWidth * 165 / paperWidth;
  float joinusforabiteuiboxDivY = appHeight * 95 / paperHeight;
  float joinusforabiteuiboxDivWidth = appWidth * 105 / paperWidth;
  float joinusforabiteuiboxDivHeight = appHeight * 25 / paperHeight;

  tenDivX = appWidth * 37 / paperWidth;
  tenDivY = appHeight * 175 / paperHeight;
  tenDivWidth = appWidth * 5 / paperWidth;
  tenDivHeight = appHeight * 5 / paperHeight;

  fifteenDivX = appWidth * 108 / paperWidth;
  fifteenDivY = appHeight * 175 / paperHeight;
  fifteenDivWidth = appWidth * 5 / paperWidth;
  fifteenDivHeight = appHeight * 5 / paperHeight;

  float lyricWordsDivX = appWidth * 165 / paperWidth;
  float lyricWordsDivY = appHeight * 45 / paperHeight;
  float lyricWordsDivWidth = appWidth * 105 / paperWidth;
  float lyricWordsDivHeight = appHeight * 155 / paperHeight;

  //rect( DivX, DivY, DivWidth, DivHeight );
  brownInk = #834503;
  fill(brownInk);
  rect( songtitleboxDivX, songtitleboxDivY, songtitleboxDivWidth, songtitleboxDivHeight );

  fill(resetInk);
  rect( recordplayerimageDivX, recordplayerimageDivY, recordplayerimageDivWidth, recordplayerimageDivHeight );

  fill(brownInk);
  rect( uiboxDivX, uiboxDivY, uiboxDivWidth, uiboxDivHeight );

  fill(buttonInk);
  rect( looponceDivX, looponceDivY, looponceDivWidth, looponceDivHeight );
  rect( loopforeverDivX, loopforeverDivY, loopforeverDivWidth, loopforeverDivHeight );
  rect( stoploopingDivX, stoploopingDivY, stoploopingDivWidth, stoploopingDivHeight );
  rect( restartDivX, restartDivY, restartDivWidth, restartDivHeight );
  rect( rewindtenDivX, rewindtenDivY, rewindtenDivWidth, rewindtenDivHeight );
  rect( pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight );
  rect( playDivX, playDivY, playDivWidth, playDivHeight );
  rect( skipfifteenDivX, skipfifteenDivY, skipfifteenDivWidth, skipfifteenDivHeight );
  rect( nextsongDivX, nextsongDivY, nextsongDivWidth, nextsongDivHeight );

  fill(brownInk);
  rect( searchbarDivX, searchbarDivY, searchbarDivWidth, searchbarDivHeight );

  fill(resetInk);
  rect( magnifyingglassimageDivX, magnifyingglassimageDivY, magnifyingglassimageDivWidth, magnifyingglassimageDivHeight );

  fill(redInk);
  rect( boxforxDivX, boxforxDivY, boxforxDivWidth, boxforxDivHeight );
  rect( xDivX, xDivY, xDivWidth, xDivHeight );

  fill(brownInk);
  rect( nextupandlyricsboxDivX, nextupandlyricsboxDivY, nextupandlyricsboxDivWidth, nextupandlyricsboxDivHeight );

  fill(buttonInk);
  rect( nextupDivX, nextupDivY, nextupDivWidth, nextupDivHeight );
  rect( lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight );

  fill(brownInk);
  rect( finalcountdownuiboxDivX, finalcountdownuiboxDivY, finalcountdownuiboxDivWidth, finalcountdownuiboxDivHeight );
  rect( intheenduiboxDivX, intheenduiboxDivY, intheenduiboxDivWidth, intheenduiboxDivHeight );
  rect( joinusforabiteuiboxDivX, joinusforabiteuiboxDivY, joinusforabiteuiboxDivWidth, joinusforabiteuiboxDivHeight );

  fill(resetInk);
  rect( albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, albumcoverimagefinalcountdownDivWidth, albumcoverimagefinalcountdownDivHeight );

  fill(textInk);
  rect( songNamefinalcountdownDivX, songNamefinalcountdownDivY, songNamefinalcountdownDivWidth, songNamefinalcountdownDivHeight );
  rect( nameofartisteuropeDivX, nameofartisteuropeDivY, nameofartisteuropeDivWidth, nameofartisteuropeDivHeight );

  fill(buttonInk);
  rect( playnextfinalcountdownDivX, playnextfinalcountdownDivY, playnextfinalcountdownDivWidth, playnextfinalcountdownDivHeight );

  fill(resetInk);
  rect( albumcoverimageintheendDivX, albumcoverimageintheendDivY, albumcoverimageintheendDivWidth, albumcoverimageintheendDivHeight );

  fill(textInk);
  rect( songNameintheendDivX, songNameintheendDivY, songNameintheendDivWidth, songNameintheendDivHeight );
  rect( nameofartistlinkinparkDivX, nameofartistlinkinparkDivY, nameofartistlinkinparkDivWidth, nameofartistlinkinparkDivHeight );

  fill(buttonInk);
  rect( playnextintheendDivX, playnextintheendDivY, playnextintheendDivWidth, playnextintheendDivHeight );

  fill(resetInk);
  rect( albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, albumcoverimagejoinusforabiteDivWidth, albumcoverimagejoinusforabiteDivHeight );

  fill(textInk);
  rect( songNamejoinusforabiteDivX, songNamejoinusforabiteDivY, songNamejoinusforabiteDivWidth, songNamejoinusforabiteDivHeight );
  rect( nameofartistjtmusicDivX, nameofartistjtmusicDivY, nameofartistjtmusicDivWidth, nameofartistjtmusicDivHeight );

  fill(buttonInk);
  rect( playnextjoinusforabiteDivX, playnextjoinusforabiteDivY, playnextjoinusforabiteDivWidth, playnextjoinusforabiteDivHeight );

  //rect( tenDivX, tenDivY, tenDivWidth, tenDivHeight );
  //rect( fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight );

  // rect ( lyricWordsDivX, lyricWordsDivY, lyricWordsDivWidth, lyricWordsDivHeight);

  fill(resetInk);

  minim = new Minim(this);

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

  //String title = "Title";

  String soundEffect = "Click";
  String fileExtention = ".mp3";

  String musicDirectory = upArrow + open + dependenciesFolder + open + musicFolder + open;
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open;
  String file;

  for ( int i = 0; i<numberOfSongs; i++) {
    //CAUTION: remove ReadMe.txt
    file = musicDirectory + songName[i] + fileExtention;
    println("Inside FOR, Pathway:", file);
    playList[ i ] = minim.loadFile( file );
    playListMetaData[i] = playList[i].getMetaData();
    //CAUTION; not currentSong var
    println(currentSong);
  }

  file = soundEffectsDirectory + soundEffect + fileExtention;
  soundEffects[currentSong] = minim.loadFile( file );

  for ( int i = 0; i<numberOfSongs; i++) {
    if ( playList[i]==null ) {
      println("The Play List or Sound Effects did not load properly");
      printArray(playList);
      //exit();
    }
    if ( playListMetaData[i]==null ) {
      println("The Play List or Sound Effects did not load properly");
      printArray(playList);
      //exit();
    }
  }
  if ( soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    println("The Play List or Sound Effects did not load properly");
    printArray(soundEffects);
    exit();
  }

  //rect(height) is biggest font is word is the smallest
  float fontSize1 = songtitleDivHeight; //1:1 Font Height to rectHeight
  fontSize2 = xDivHeight;
  fontSize3 = tenDivHeight;
  fontSize4 = nextupDivHeight;
  fontSize5 = songNamefinalcountdownDivHeight;
  fontSize6 = nameofartisteuropeDivHeight;

  PFont font; //Font Varaible Name, able to have more than one Font
  String PLBI = "Palatino Linotype Bold Italic";
  font = createFont(PLBI, fontSize1);
  //
  //Drawing Text
  //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour

  fill(blackInk); //Ink, hexidecimal copied from Color Selector
  //Grey Scale 0-255
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  //
  // Procedure Passing RECT(#2) && fontSize(RECT#)
  float constantDecrease = 0.99;
  int iWhile=0;
  textFont(font, fontSize1); //must include textSize() before text() & textWidth()
  while ( textWidth(playListMetaData[currentSong].fileName()) > songtitleDivWidth ) {
    //println("While #1"); //Infinite WHILE Check
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infninte WHILE Loop");
      exit();
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  println(fontSize1, songtitleDivHeight);
  println("mETA dATA:", playListMetaData[currentSong].title() == null);
  //textFont(font, 10); //fixes WHILE loop

  if (playListMetaData[currentSong].title().equals("")) {

    text(songName[currentSong], songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight );
    fill(resetInk);
  } else {

    text(playListMetaData[currentSong].title (), songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight);
    fill(resetInk);
  }

  String imageDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
  String pathway1 = imageDirectory + imageName1 + fileExension;
  String pathway2 = imageDirectory + imageName2 + fileExension;
  String pathway3 = imageDirectory + imageName3 + fileExension;
  //println(pathway);
  //

  PImage image1 = loadImage( pathway1 );
  PImage image2 = loadImage( pathway2 );
  int imageWidth2 = 500;
  int imageHeight2 = 500;
  PImage image3 = loadImage( pathway3 );

  float image2AspectRatio_GreaterOne = ( imageWidth2 > imageHeight2 ) ? float (imageWidth2) / float (imageHeight2)  : float (imageHeight2) / float (imageWidth2);
  float imageWidthAdjusted = albumcoverimagefinalcountdownDivWidth;
  float imageHeightAdjusted;

  if ( imageWidth2 >= albumcoverimageintheendDivWidth ) {
    imageHeightAdjusted = imageWidthAdjusted / image2AspectRatio_GreaterOne;
    while ( imageHeightAdjusted > albumcoverimageintheendDivHeight) {
      imageWidthAdjusted *= 0.99;
      imageHeightAdjusted = imageWidthAdjusted / image2AspectRatio_GreaterOne;
    }
  } else {
    imageHeightAdjusted = imageWidthAdjusted * image2AspectRatio_GreaterOne;
    while ( imageHeightAdjusted > albumcoverimageintheendDivHeight) {
      imageWidthAdjusted *= 0.99;
      imageHeightAdjusted = imageWidthAdjusted * image2AspectRatio_GreaterOne;
    }
  };

  //println( float (imageWidth2) / float (imageHeight2) );
  //Ternary Operator
  println(image2AspectRatio_GreaterOne);

  rect( albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, albumcoverimagefinalcountdownDivWidth, albumcoverimagefinalcountdownDivHeight );
  rect( albumcoverimageintheendDivX, albumcoverimageintheendDivY, albumcoverimageintheendDivWidth, albumcoverimageintheendDivHeight );
  rect( albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, albumcoverimagejoinusforabiteDivWidth, albumcoverimagejoinusforabiteDivHeight );
  image( image1, albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, imageWidthAdjusted+1, imageWidthAdjusted+1 );
  image( image2, albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, imageWidthAdjusted+1, imageHeightAdjusted+1 );
  image( image3, albumcoverimageintheendDivX, albumcoverimageintheendDivY, imageWidthAdjusted+1, imageHeightAdjusted+1 );

  //
}//End Setup

void draw() {
  textAlign(CENTER, CENTER);
  fill(textInk);
  rect(songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight);
  fill(blackInk);

  if (playListMetaData[currentSong].title().equals("")) {
    text(songName[currentSong], songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight);
  } else {
    text(playListMetaData[currentSong].title(), songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight);
  }

  fill(resetInk);

  if (!playList[currentSong].isPlaying() && !isPaused) {
    playList[currentSong].play();
  }

  float playSymbolDivX1 = playDivX + playDivWidth*1/4;
  float playSymbolDivY1 = playDivY +  playDivHeight*1/4;
  float playSymbolDivX2 = playDivX + playDivWidth*3/4;
  float playSymbolDivY2 = playDivY +  playDivHeight*1/2;
  float playSymbolDivX3 = playDivX + playDivWidth*1/4;
  float playSymbolDivY3 = playDivY +  playDivHeight*3/4;
  //

  float pauseSymbolDivX1 = pauseDivX + pauseDivWidth*1/4;
  float pauseSymbolDivY1 = pauseDivY + pauseDivHeight*1/4;
  float pauseSymbolDivWidth1 = pauseDivWidth*1/8;
  float pauseSymbolDivHeight1 = pauseDivHeight*1/2;
  float pauseSymbolDivX2 = pauseDivX + pauseDivWidth*5/8;
  float pauseSymbolDivY2 = pauseDivY + pauseDivHeight*1/4;
  float pauseSymbolDivWidth2 = pauseDivWidth*1/8;
  float pauseSymbolDivHeight2 = pauseDivHeight*1/2;
  //

  float skipFifteenDivX = skipfifteenDivX+skipfifteenDivWidth*1/2;
  float skipFifteenDivY = skipfifteenDivY+skipfifteenDivHeight*1/2;
  float skipFifteenDivWidth = skipfifteenDivWidth*1/2;
  float skipFifteenDivHeight = skipfifteenDivHeight*1/2;
  float skipFifteenDivStart = 0;
  float skipFifteenDivStop = PI+PI*1/2;
  float skipFifteenDivWidth2 = skipFifteenDivWidth*7/8;
  float skipFifteenDivHeight2 = skipFifteenDivHeight*7/8;
  float skipFifteenLineDivX1 = skipfifteenDivX+skipfifteenDivWidth*3/4;
  float skipFifteenLineDivY1 = skipfifteenDivY+skipfifteenDivHeight*1/2;
  float skipFifteenLineDivX2 = skipfifteenDivX+skipfifteenDivWidth*3/4-(skipfifteenDivWidth*1/32);
  float skipFifteenLineDivY2 = skipfifteenDivY+skipfifteenDivHeight*1/2;
  float skipFifteenTriangleDivX1 = skipfifteenDivX+(skipfifteenDivWidth*1/2);
  float skipFifteenTriangleDivY1 = skipfifteenDivY+(skipfifteenDivHeight*3/16);
  float skipFifteenTriangleDivX2 = skipfifteenDivX+(skipfifteenDivWidth*1/2);
  float skipFifteenTriangleDivY2 = skipfifteenDivY+(skipfifteenDivHeight*11/32);
  float skipFifteenTriangleDivX3 = skipfifteenDivX+(skipfifteenDivWidth*11/16);
  float skipFifteenTriangleDivY3 = skipfifteenDivY+(skipfifteenDivHeight*17/64);
  //
  /*
   float rewindTenDivX = DivX+DivWidth*1/2;
   float rewindTenDivY = DivY+DivHeight*1/2;
   float rewindTenDivWidth = DivWidth*1/2;
   float rewindTenDivHeight = DivHeight*1/2;
   float rewindTenDivStart = PI+PI*1/2;
   float rewindTenDivStop = PI+PI*2;
   float rewindTenDivWidth2 = rewindTenDivWidth*7/8;
   float rewindTenDivHeight2 = rewindTenDivHeight*7/8;
   float rewindTenLineDivX1 = DivX+(DivWidth*1/4);
   float rewindTenLineDivY1 = DivY+DivHeight*1/2;
   float rewindTenLineDivX2 = DivX+DivWidth*1/4+(DivWidth*1/32);
   float rewindTenLineDivY2 = DivY+DivHeight*1/2;
   float rewindTenTriangleDivX1 = DivX+(DivWidth*1/2);
   float rewindTenTriangleDivY1 = DivY+(DivHeight*3/16);
   float rewindTenTriangleDivX2 = DivX+(DivWidth*1/2);
   float rewindTenTriangleDivY2 = DivY+(DivHeight*11/32);
   float rewindTenTriangleDivX3 = DivX+(DivWidth*5/16);
   float rewindTenTriangleDivY3 = DivY+(DivHeight*17/64);
   //
   float restartSongDivX = DivX+DivWidth*1/2;
   float restartSongDivY = DivY+DivHeight*1/2;
   float restartSongDivWidth = DivWidth*1/2;
   float restartSongDivHeight = DivHeight*1/2;
   float restartSongDivStart = PI+PI*1/2;
   float restartSongDivStop = PI+PI*2;
   float restartSongDivWidth2 = rewindTenDivWidth*7/8;
   float restartSongDivHeight2 = rewindTenDivHeight*7/8;
   float restartSongLineDivX1 = DivX+(DivWidth*1/4);
   float restartSongLineDivY1 = DivY+DivHeight*1/2;
   float restartSongLineDivX2 = DivX+DivWidth*1/4+(DivWidth*1/32);
   float restartSongLineDivY2 = DivY+DivHeight*1/2;
   float restartSongTriangleDivX1 = DivX+(DivWidth*1/2);
   float restartSongTriangleDivY1 = DivY+(DivHeight*3/16);
   float restartSongTriangleDivX2 = DivX+(DivWidth*1/2);
   float restartSongTriangleDivY2 = DivY+(DivHeight*11/32);
   float restartSongTriangleDivX3 = DivX+(DivWidth*5/16);
   float restartSongTriangleDivY3 = DivY+(DivHeight*17/64);
   float restartSongPauseDivX1 = DivX+DivWidth*25/64;
   float restartSongPauseDivY1 = DivY+DivHeight*3/8;
   float restartSongPauseDivWidth1 = DivWidth*1/16;
   float restartSongPauseDivHeight1 = DivHeight*1/4;
   float restartSongPauseDivX2 = DivX+DivWidth*35/64;
   float restartSongPauseDivY2 = DivY+DivHeight*3/8;
   float restartSongPauseDivWidth2 = DivWidth*1/16;
   float restartSongPauseDivHeight2 = DivHeight*1/4;
   //
   float skipSongTriangleOneDivX1 = DivX+DivWidth*1/4;
   float skipSongTriangleOneDivY1 = DivY+DivHeight*1/4;
   float skipSongTriangleOneDivX2 = DivX+DivWidth*1/4;
   float skipSongTriangleOneDivY2 = DivY+DivHeight*3/4;
   float skipSongTriangleOneDivX3 = DivX+DivWidth*1/2;
   float skipSongTriangleOneDivY3 = DivY+DivHeight*1/2;
   float skipSongTriangleTwoDivX1 = DivX+DivWidth*1/2;
   float skipSongTriangleTwoDivY1 = DivY+DivHeight*1/4;
   float skipSongTriangleTwoDivX2 = DivX+DivWidth*1/2;
   float skipSongTriangleTwoDivY2 = DivY+DivHeight*3/4;
   float skipSongTriangleTwoDivX3 = DivX+DivWidth*3/4;
   float skipSongTriangleTwoDivY3 = DivY+DivHeight*1/2;
   //
   float loopOnceFirstArrowLineOneDivX1 = DivX+DivWidth*3/16;
   float loopOnceFirstArrowLineOneDivY1 = DivY+DivHeight*1/4;
   ;
   float loopOnceFirstArrowLineOneDivX2 = DivX+DivWidth*3/16;
   float loopOnceFirstArrowLineOneDivY2 = DivY+DivHeight*1/2;
   float loopOnceFirstArrowLineTwoDivX1 = DivX+DivWidth*1/4;
   float loopOnceFirstArrowLineTwoDivY1 = loopOnceFirstArrowLineOneDivY1+(DivHeight*1/16);
   float loopOnceFirstArrowLineTwoDivX2 = DivX+DivWidth*1/4;
   float loopOnceFirstArrowLineTwoDivY2 = DivY+DivHeight*1/2;
   float loopOnceFirstArrowLineThreeDivX1 = loopOnceFirstArrowLineOneDivX2;
   float loopOnceFirstArrowLineThreeDivY1 = loopOnceFirstArrowLineOneDivY2;
   float loopOnceFirstArrowLineThreeDivX2 = loopOnceFirstArrowLineTwoDivX2;
   float loopOnceFirstArrowLineThreeDivY2 = loopOnceFirstArrowLineTwoDivY2;
   float loopOnceFirstArrowLineFourDivX1 = loopOnceFirstArrowLineOneDivX1;
   float loopOnceFirstArrowLineFourDivY1 = loopOnceFirstArrowLineOneDivY1;
   float loopOnceFirstArrowLineFourDivX2 = DivX+DivWidth*5/8;
   float loopOnceFirstArrowLineFourDivY2 = loopOnceFirstArrowLineOneDivY1;
   float loopOnceFirstArrowLineFiveDivX1 = loopOnceFirstArrowLineTwoDivX1;
   float loopOnceFirstArrowLineFiveDivY1 = loopOnceFirstArrowLineFourDivY1+(DivHeight*1/16);
   float loopOnceFirstArrowLineFiveDivX2 = DivX+DivWidth*5/8;
   float loopOnceFirstArrowLineFiveDivY2 = loopOnceFirstArrowLineFourDivY1+(DivHeight*1/16);
   float loopOnceFirstArrowTriangleDivX1 = loopOnceFirstArrowLineFiveDivX2;
   float loopOnceFirstArrowTriangleDivY1 = DivHeight*5/32+DivY;
   float loopOnceFirstArrowTriangleDivX2 = loopOnceFirstArrowLineFiveDivX2;
   float loopOnceFirstArrowTriangleDivY2 = DivHeight*13/32+DivY;
   float loopOnceFirstArrowTriangleDivX3 = loopOnceFirstArrowLineFiveDivX2+(DivWidth*3/16);
   float loopOnceFirstArrowTriangleDivY3 = (loopOnceFirstArrowLineFiveDivY1+loopOnceFirstArrowLineFourDivY1)*1/2;
   
   float loopOnceSecondArrowLineOneDivX1 = DivX+DivWidth*3/4+DivWidth*1/16;
   float loopOnceSecondArrowLineOneDivY1 = DivY+DivHeight*1/2;
   float loopOnceSecondArrowLineOneDivX2 = DivX+DivWidth*3/4;
   float loopOnceSecondArrowLineOneDivY2 = DivY+DivHeight*1/2;
   float loopOnceSecondArrowLineTwoDivX1 = DivX+DivWidth*3/4+DivWidth*1/16;
   float loopOnceSecondArrowLineTwoDivY1 = DivY+DivHeight*1/2;
   float loopOnceSecondArrowLineTwoDivX2 = DivX+DivWidth*3/4+DivWidth*1/16;
   float loopOnceSecondArrowLineTwoDivY2 = DivY+DivHeight*3/4;
   float loopOnceSecondArrowLineThreeDivX1 = DivX+DivWidth*3/4;
   float loopOnceSecondArrowLineThreeDivY1 = DivY+DivHeight*1/2;
   float loopOnceSecondArrowLineThreeDivX2 = DivX+DivWidth*3/4;
   float loopOnceSecondArrowLineThreeDivY2 = DivY+DivHeight*11/16;
   float loopOnceSecondArrowLineFourDivX1 = DivX+DivWidth*3/8;
   float loopOnceSecondArrowLineFourDivY1 = DivY+DivHeight*11/16;
   float loopOnceSecondArrowLineFourDivX2 = loopOnceSecondArrowLineThreeDivX2;
   float loopOnceSecondArrowLineFourDivY2 = DivY+DivHeight*11/16;
   float loopOnceSecondArrowLineFiveDivX1 = DivX+DivWidth*3/8;
   float loopOnceSecondArrowLineFiveDivY1 = DivY+DivHeight*3/4;
   float loopOnceSecondArrowLineFiveDivX2 = DivX+DivWidth*3/4+DivWidth*1/16;
   float loopOnceSecondArrowLineFiveDivY2 = DivY+DivHeight*3/4;
   float loopOnceSecondArrowTriangleDivX1 = loopOnceFirstArrowLineOneDivX2;
   float loopOnceSecondArrowTriangleDivY1 = (loopOnceSecondArrowLineFiveDivY1+loopOnceSecondArrowLineFourDivY1)*1/2;
   float loopOnceSecondArrowTriangleDivX2 = DivX+DivWidth*3/8;
   float loopOnceSecondArrowTriangleDivY2 = DivHeight*19/32+DivY;
   float loopOnceSecondArrowTriangleDivX3 = DivX+DivWidth*3/8;
   float loopOnceSecondArrowTriangleDivY3 = DivHeight*27/32+DivY;
   //
   float loopForeverFirstArrowLineOneDivX1 = DivX+DivWidth*3/16;
   float loopForeverFirstArrowLineOneDivY1 = DivY+DivHeight*1/4;
   ;
   float loopForeverFirstArrowLineOneDivX2 = DivX+DivWidth*3/16;
   float loopForeverFirstArrowLineOneDivY2 = DivY+DivHeight*1/2;
   float loopForeverFirstArrowLineTwoDivX1 = DivX+DivWidth*1/4;
   float loopForeverFirstArrowLineTwoDivY1 = loopForeverFirstArrowLineOneDivY1+(DivHeight*1/16);
   float loopForeverFirstArrowLineTwoDivX2 = DivX+DivWidth*1/4;
   float loopForeverFirstArrowLineTwoDivY2 = DivY+DivHeight*1/2;
   float loopForeverFirstArrowLineThreeDivX1 = loopForeverFirstArrowLineOneDivX2;
   float loopForeverFirstArrowLineThreeDivY1 = loopForeverFirstArrowLineOneDivY2;
   float loopForeverFirstArrowLineThreeDivX2 = loopForeverFirstArrowLineTwoDivX2;
   float loopForeverFirstArrowLineThreeDivY2 = loopForeverFirstArrowLineTwoDivY2;
   float loopForeverFirstArrowLineFourDivX1 = loopForeverFirstArrowLineOneDivX1;
   float loopForeverFirstArrowLineFourDivY1 = loopForeverFirstArrowLineOneDivY1;
   float loopForeverFirstArrowLineFourDivX2 = DivX+DivWidth*5/8;
   float loopForeverFirstArrowLineFourDivY2 = loopForeverFirstArrowLineOneDivY1;
   float loopForeverFirstArrowLineFiveDivX1 = loopForeverFirstArrowLineTwoDivX1;
   float loopForeverFirstArrowLineFiveDivY1 = loopForeverFirstArrowLineFourDivY1+(DivHeight*1/16);
   float loopForeverFirstArrowLineFiveDivX2 = DivX+DivWidth*5/8;
   float loopForeverFirstArrowLineFiveDivY2 = loopForeverFirstArrowLineFourDivY1+(DivHeight*1/16);
   float loopForeverFirstArrowTriangleDivX1 = loopForeverFirstArrowLineFiveDivX2;
   float loopForeverFirstArrowTriangleDivY1 = DivHeight*5/32+DivY;
   float loopForeverFirstArrowTriangleDivX2 = loopForeverFirstArrowLineFiveDivX2;
   float loopForeverFirstArrowTriangleDivY2 = DivHeight*13/32+DivY;
   float loopForeverFirstArrowTriangleDivX3 = loopForeverFirstArrowLineFiveDivX2+(DivWidth*3/16);
   float loopForeverFirstArrowTriangleDivY3 = (loopForeverFirstArrowLineFiveDivY1+loopForeverFirstArrowLineFourDivY1)*1/2;
   
   float loopForeverSecondArrowLineOneDivX1 = DivX+DivWidth*3/4+DivWidth*1/16;
   float loopForeverSecondArrowLineOneDivY1 = DivY+DivHeight*1/2;
   float loopForeverSecondArrowLineOneDivX2 = DivX+DivWidth*3/4;
   float loopForeverSecondArrowLineOneDivY2 = DivY+DivHeight*1/2;
   float loopForeverSecondArrowLineTwoDivX1 = DivX+DivWidth*3/4+DivWidth*1/16;
   float loopForeverSecondArrowLineTwoDivY1 = DivY+DivHeight*1/2;
   float loopForeverSecondArrowLineTwoDivX2 = DivX+DivWidth*3/4+DivWidth*1/16;
   float loopForeverSecondArrowLineTwoDivY2 = DivY+DivHeight*3/4;
   float loopForeverSecondArrowLineThreeDivX1 = DivX+DivWidth*3/4;
   float loopForeverSecondArrowLineThreeDivY1 = DivY+DivHeight*1/2;
   float loopForeverSecondArrowLineThreeDivX2 = DivX+DivWidth*3/4;
   float loopForeverSecondArrowLineThreeDivY2 = DivY+DivHeight*11/16;
   float loopForeverSecondArrowLineFourDivX1 = DivX+DivWidth*3/8;
   float loopForeverSecondArrowLineFourDivY1 = DivY+DivHeight*11/16;
   float loopForeverSecondArrowLineFourDivX2 = loopForeverSecondArrowLineThreeDivX2;
   float loopForeverSecondArrowLineFourDivY2 = DivY+DivHeight*11/16;
   float loopForeverSecondArrowLineFiveDivX1 = DivX+DivWidth*3/8;
   float loopForeverSecondArrowLineFiveDivY1 = DivY+DivHeight*3/4;
   float loopForeverSecondArrowLineFiveDivX2 = DivX+DivWidth*3/4+DivWidth*1/16;
   float loopForeverSecondArrowLineFiveDivY2 = DivY+DivHeight*3/4;
   float loopForeverSecondArrowTriangleDivX1 = loopForeverFirstArrowLineOneDivX2;
   float loopForeverSecondArrowTriangleDivY1 = (loopForeverSecondArrowLineFiveDivY1+loopForeverSecondArrowLineFourDivY1)*1/2;
   float loopForeverSecondArrowTriangleDivX2 = DivX+DivWidth*3/8;
   float loopForeverSecondArrowTriangleDivY2 = DivHeight*19/32+DivY;
   float loopForeverSecondArrowTriangleDivX3 = DivX+DivWidth*3/8;
   float loopForeverSecondArrowTriangleDivY3 = DivHeight*27/32+DivY;
   
   //Stop Looping Button
   float StopLoopingFirstArrowLineOneDivX1 = DivX+DivWidth*3/16;
   float StopLoopingFirstArrowLineOneDivY1 = DivY+DivHeight*1/4;
   ;
   float StopLoopingFirstArrowLineOneDivX2 = DivX+DivWidth*3/16;
   float StopLoopingFirstArrowLineOneDivY2 = DivY+DivHeight*1/2;
   float StopLoopingFirstArrowLineTwoDivX1 = DivX+DivWidth*1/4;
   float StopLoopingFirstArrowLineTwoDivY1 = StopLoopingFirstArrowLineOneDivY1+(DivHeight*1/16);
   float StopLoopingFirstArrowLineTwoDivX2 = DivX+DivWidth*1/4;
   float StopLoopingFirstArrowLineTwoDivY2 = DivY+DivHeight*1/2;
   float StopLoopingFirstArrowLineThreeDivX1 = StopLoopingFirstArrowLineOneDivX2;
   float StopLoopingFirstArrowLineThreeDivY1 = StopLoopingFirstArrowLineOneDivY2;
   float StopLoopingFirstArrowLineThreeDivX2 = StopLoopingFirstArrowLineTwoDivX2;
   float StopLoopingFirstArrowLineThreeDivY2 = StopLoopingFirstArrowLineTwoDivY2;
   float StopLoopingFirstArrowLineFourDivX1 = StopLoopingFirstArrowLineOneDivX1;
   float StopLoopingFirstArrowLineFourDivY1 = StopLoopingFirstArrowLineOneDivY1;
   float StopLoopingFirstArrowLineFourDivX2 = DivX+DivWidth*5/8;
   float StopLoopingFirstArrowLineFourDivY2 = StopLoopingFirstArrowLineOneDivY1;
   float StopLoopingFirstArrowLineFiveDivX1 = StopLoopingFirstArrowLineTwoDivX1;
   float StopLoopingFirstArrowLineFiveDivY1 = StopLoopingFirstArrowLineFourDivY1+(DivHeight*1/16);
   float StopLoopingFirstArrowLineFiveDivX2 = DivX+DivWidth*5/8;
   float StopLoopingFirstArrowLineFiveDivY2 = StopLoopingFirstArrowLineFourDivY1+(DivHeight*1/16);
   float StopLoopingFirstArrowTriangleDivX1 = StopLoopingFirstArrowLineFiveDivX2;
   float StopLoopingFirstArrowTriangleDivY1 = DivHeight*5/32+DivY;
   float StopLoopingFirstArrowTriangleDivX2 = StopLoopingFirstArrowLineFiveDivX2;
   float StopLoopingFirstArrowTriangleDivY2 = DivHeight*13/32+DivY;
   float StopLoopingFirstArrowTriangleDivX3 = StopLoopingFirstArrowLineFiveDivX2+(DivWidth*3/16);
   float StopLoopingFirstArrowTriangleDivY3 = (StopLoopingFirstArrowLineFiveDivY1+StopLoopingFirstArrowLineFourDivY1)*1/2;
   
   float StopLoopingSecondArrowLineOneDivX1 = DivX+DivWidth*3/4+DivWidth*1/16;
   float StopLoopingSecondArrowLineOneDivY1 = DivY+DivHeight*1/2;
   float StopLoopingSecondArrowLineOneDivX2 = DivX+DivWidth*3/4;
   float StopLoopingSecondArrowLineOneDivY2 = DivY+DivHeight*1/2;
   float StopLoopingSecondArrowLineTwoDivX1 = DivX+DivWidth*3/4+DivWidth*1/16;
   float StopLoopingSecondArrowLineTwoDivY1 = DivY+DivHeight*1/2;
   float StopLoopingSecondArrowLineTwoDivX2 = DivX+DivWidth*3/4+DivWidth*1/16;
   float StopLoopingSecondArrowLineTwoDivY2 = DivY+DivHeight*3/4;
   float StopLoopingSecondArrowLineThreeDivX1 = DivX+DivWidth*3/4;
   float StopLoopingSecondArrowLineThreeDivY1 = DivY+DivHeight*1/2;
   float StopLoopingSecondArrowLineThreeDivX2 = DivX+DivWidth*3/4;
   float StopLoopingSecondArrowLineThreeDivY2 = DivY+DivHeight*11/16;
   float StopLoopingSecondArrowLineFourDivX1 = DivX+DivWidth*3/8;
   float StopLoopingSecondArrowLineFourDivY1 = DivY+DivHeight*11/16;
   float StopLoopingSecondArrowLineFourDivX2 = StopLoopingSecondArrowLineThreeDivX2;
   float StopLoopingSecondArrowLineFourDivY2 = DivY+DivHeight*11/16;
   float StopLoopingSecondArrowLineFiveDivX1 = DivX+DivWidth*3/8;
   float StopLoopingSecondArrowLineFiveDivY1 = DivY+DivHeight*3/4;
   float StopLoopingSecondArrowLineFiveDivX2 = DivX+DivWidth*3/4+DivWidth*1/16;
   float StopLoopingSecondArrowLineFiveDivY2 = DivY+DivHeight*3/4;
   float StopLoopingSecondArrowTriangleDivX1 = StopLoopingFirstArrowLineOneDivX2;
   float StopLoopingSecondArrowTriangleDivY1 = (StopLoopingSecondArrowLineFiveDivY1+StopLoopingSecondArrowLineFourDivY1)*1/2;
   float StopLoopingSecondArrowTriangleDivX2 = DivX+DivWidth*3/8;
   float StopLoopingSecondArrowTriangleDivY2 = DivHeight*19/32+DivY;
   float StopLoopingSecondArrowTriangleDivX3 = DivX+DivWidth*3/8;
   float StopLoopingSecondArrowTriangleDivY3 = DivHeight*27/32+DivY;
   
   float StopLoopingCrossLine1X1 = DivX+DivWidth*1/16;
   float StopLoopingCrossLine1Y1 = DivY+DivHeight*1/16;
   float StopLoopingCrossLine1X2 = DivX+DivWidth*15/16;
   float StopLoopingCrossLine1Y2 = DivY+DivHeight*15/16;
   */
  //
  //
  //
  //
  //PLAY BUTTON

  triangle( playSymbolDivX1, playSymbolDivY1, playSymbolDivX2, playSymbolDivY2, playSymbolDivX3, playSymbolDivY3);


  //PAUSE BUTTON

  rect( pauseSymbolDivX1, pauseSymbolDivY1, pauseSymbolDivWidth1, pauseSymbolDivHeight1 );
  rect( pauseSymbolDivX2, pauseSymbolDivY2, pauseSymbolDivWidth2, pauseSymbolDivHeight2 );


  //SKIP FIFTEEN SECONDS BUTTON

  arc( skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth, skipFifteenDivHeight, skipFifteenDivStart, skipFifteenDivStop );
  arc( skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth2, skipFifteenDivHeight2, skipFifteenDivStart, skipFifteenDivStop );
  line( skipFifteenLineDivX1, skipFifteenLineDivY1, skipFifteenLineDivX2, skipFifteenLineDivY2 );
  triangle( skipFifteenTriangleDivX1, skipFifteenTriangleDivY1, skipFifteenTriangleDivX2, skipFifteenTriangleDivY2, skipFifteenTriangleDivX3, skipFifteenTriangleDivY3 );

  /*
   //REWIND TEN SECONDS BUTTON
   
   arc( rewindTenDivX, rewindTenDivY, rewindTenDivWidth, rewindTenDivHeight, rewindTenDivStart, rewindTenDivStop );
   arc( rewindTenDivX, rewindTenDivY, rewindTenDivWidth2, rewindTenDivHeight2, rewindTenDivStart, rewindTenDivStop );
   line( rewindTenLineDivX1, rewindTenLineDivY1, rewindTenLineDivX2, rewindTenLineDivY2 );
   triangle( rewindTenTriangleDivX1, rewindTenTriangleDivY1, rewindTenTriangleDivX2, rewindTenTriangleDivY2, rewindTenTriangleDivX3, rewindTenTriangleDivY3 );
   
   
   //RESTART SONG BUTTON
   
   arc( restartSongDivX, restartSongDivY, restartSongDivWidth, restartSongDivHeight, restartSongDivStart, restartSongDivStop );
   arc( restartSongDivX, restartSongDivY, restartSongDivWidth2, restartSongDivHeight2, restartSongDivStart, restartSongDivStop );
   line( restartSongLineDivX1, restartSongLineDivY1, restartSongLineDivX2, restartSongLineDivY2 );
   triangle( restartSongTriangleDivX1, restartSongTriangleDivY1, restartSongTriangleDivX2, restartSongTriangleDivY2, restartSongTriangleDivX3, restartSongTriangleDivY3 );
   rect( restartSongPauseDivX1, restartSongPauseDivY1, restartSongPauseDivWidth1, restartSongPauseDivHeight1 );
   rect( restartSongPauseDivX2, restartSongPauseDivY2, restartSongPauseDivWidth2, restartSongPauseDivHeight2 );
   
   
   //SKIP SONG BUTTON
   triangle( skipSongTriangleOneDivX1, skipSongTriangleOneDivY1, skipSongTriangleOneDivX2, skipSongTriangleOneDivY2, skipSongTriangleOneDivX3, skipSongTriangleOneDivY3 );
   triangle( skipSongTriangleTwoDivX1, skipSongTriangleTwoDivY1, skipSongTriangleTwoDivX2, skipSongTriangleTwoDivY2, skipSongTriangleTwoDivX3, skipSongTriangleTwoDivY3 );
   
   
   //LOOP ONCE BUTTON
   
   line( loopOnceFirstArrowLineOneDivX1, loopOnceFirstArrowLineOneDivY1, loopOnceFirstArrowLineOneDivX2, loopOnceFirstArrowLineOneDivY2 );
   line( loopOnceFirstArrowLineTwoDivX1, loopOnceFirstArrowLineTwoDivY1, loopOnceFirstArrowLineTwoDivX2, loopOnceFirstArrowLineTwoDivY2 );
   line( loopOnceFirstArrowLineThreeDivX1, loopOnceFirstArrowLineThreeDivY1, loopOnceFirstArrowLineThreeDivX2, loopOnceFirstArrowLineThreeDivY2 );
   line( loopOnceFirstArrowLineFourDivX1, loopOnceFirstArrowLineFourDivY1, loopOnceFirstArrowLineFourDivX2, loopOnceFirstArrowLineFourDivY2 );
   line( loopOnceFirstArrowLineFiveDivX1, loopOnceFirstArrowLineFiveDivY1, loopOnceFirstArrowLineFiveDivX2, loopOnceFirstArrowLineFiveDivY2 );
   triangle( loopOnceFirstArrowTriangleDivX1, loopOnceFirstArrowTriangleDivY1, loopOnceFirstArrowTriangleDivX2, loopOnceFirstArrowTriangleDivY2, loopOnceFirstArrowTriangleDivX3, loopOnceFirstArrowTriangleDivY3 );
   
   line( loopOnceSecondArrowLineOneDivX1, loopOnceSecondArrowLineOneDivY1, loopOnceSecondArrowLineOneDivX2, loopOnceSecondArrowLineOneDivY2 );
   line( loopOnceSecondArrowLineTwoDivX1, loopOnceSecondArrowLineTwoDivY1, loopOnceSecondArrowLineTwoDivX2, loopOnceSecondArrowLineTwoDivY2 );
   line( loopOnceSecondArrowLineThreeDivX1, loopOnceSecondArrowLineThreeDivY1, loopOnceSecondArrowLineThreeDivX2, loopOnceSecondArrowLineThreeDivY2 );
   line( loopOnceSecondArrowLineFourDivX1, loopOnceSecondArrowLineFourDivY1, loopOnceSecondArrowLineFourDivX2, loopOnceSecondArrowLineFourDivY2 );
   line( loopOnceSecondArrowLineFiveDivX1, loopOnceSecondArrowLineFiveDivY1, loopOnceSecondArrowLineFiveDivX2, loopOnceSecondArrowLineFiveDivY2 );
   triangle( loopOnceSecondArrowTriangleDivX1, loopOnceSecondArrowTriangleDivY1, loopOnceSecondArrowTriangleDivX2, loopOnceSecondArrowTriangleDivY2, loopOnceSecondArrowTriangleDivX3, loopOnceSecondArrowTriangleDivY3 );
   
   
   //LOOP FOREVER BUTTON
   
   line( loopForeverFirstArrowLineOneDivX1, loopForeverFirstArrowLineOneDivY1, loopForeverFirstArrowLineOneDivX2, loopForeverFirstArrowLineOneDivY2 );
   line( loopForeverFirstArrowLineTwoDivX1, loopForeverFirstArrowLineTwoDivY1, loopForeverFirstArrowLineTwoDivX2, loopForeverFirstArrowLineTwoDivY2 );
   line( loopForeverFirstArrowLineThreeDivX1, loopForeverFirstArrowLineThreeDivY1, loopForeverFirstArrowLineThreeDivX2, loopForeverFirstArrowLineThreeDivY2 );
   line( loopForeverFirstArrowLineFourDivX1, loopForeverFirstArrowLineFourDivY1, loopForeverFirstArrowLineFourDivX2, loopForeverFirstArrowLineFourDivY2 );
   line( loopForeverFirstArrowLineFiveDivX1, loopForeverFirstArrowLineFiveDivY1, loopForeverFirstArrowLineFiveDivX2, loopForeverFirstArrowLineFiveDivY2 );
   triangle( loopForeverFirstArrowTriangleDivX1, loopForeverFirstArrowTriangleDivY1, loopForeverFirstArrowTriangleDivX2, loopForeverFirstArrowTriangleDivY2, loopForeverFirstArrowTriangleDivX3, loopForeverFirstArrowTriangleDivY3 );
   
   line( loopForeverSecondArrowLineOneDivX1, loopForeverSecondArrowLineOneDivY1, loopForeverSecondArrowLineOneDivX2, loopForeverSecondArrowLineOneDivY2 );
   line( loopForeverSecondArrowLineTwoDivX1, loopForeverSecondArrowLineTwoDivY1, loopForeverSecondArrowLineTwoDivX2, loopForeverSecondArrowLineTwoDivY2 );
   line( loopForeverSecondArrowLineThreeDivX1, loopForeverSecondArrowLineThreeDivY1, loopForeverSecondArrowLineThreeDivX2, loopForeverSecondArrowLineThreeDivY2 );
   line( loopForeverSecondArrowLineFourDivX1, loopForeverSecondArrowLineFourDivY1, loopForeverSecondArrowLineFourDivX2, loopForeverSecondArrowLineFourDivY2 );
   line( loopForeverSecondArrowLineFiveDivX1, loopForeverSecondArrowLineFiveDivY1, loopForeverSecondArrowLineFiveDivX2, loopForeverSecondArrowLineFiveDivY2 );
   triangle( loopForeverSecondArrowTriangleDivX1, loopForeverSecondArrowTriangleDivY1, loopForeverSecondArrowTriangleDivX2, loopForeverSecondArrowTriangleDivY2, loopForeverSecondArrowTriangleDivX3, loopForeverSecondArrowTriangleDivY3 );
   
   
   //STOP LOOPING BUTTON
   
   
   line( StopLoopingFirstArrowLineOneDivX1, StopLoopingFirstArrowLineOneDivY1, StopLoopingFirstArrowLineOneDivX2, StopLoopingFirstArrowLineOneDivY2 );
   line( StopLoopingFirstArrowLineTwoDivX1, StopLoopingFirstArrowLineTwoDivY1, StopLoopingFirstArrowLineTwoDivX2, StopLoopingFirstArrowLineTwoDivY2 );
   line( StopLoopingFirstArrowLineThreeDivX1, StopLoopingFirstArrowLineThreeDivY1, StopLoopingFirstArrowLineThreeDivX2, StopLoopingFirstArrowLineThreeDivY2 );
   line( StopLoopingFirstArrowLineFourDivX1, StopLoopingFirstArrowLineFourDivY1, StopLoopingFirstArrowLineFourDivX2, StopLoopingFirstArrowLineFourDivY2 );
   line( StopLoopingFirstArrowLineFiveDivX1, StopLoopingFirstArrowLineFiveDivY1, StopLoopingFirstArrowLineFiveDivX2, StopLoopingFirstArrowLineFiveDivY2 );
   triangle( StopLoopingFirstArrowTriangleDivX1, StopLoopingFirstArrowTriangleDivY1, StopLoopingFirstArrowTriangleDivX2, StopLoopingFirstArrowTriangleDivY2, StopLoopingFirstArrowTriangleDivX3, StopLoopingFirstArrowTriangleDivY3 );
   
   line( StopLoopingSecondArrowLineOneDivX1, StopLoopingSecondArrowLineOneDivY1, StopLoopingSecondArrowLineOneDivX2, StopLoopingSecondArrowLineOneDivY2 );
   line( StopLoopingSecondArrowLineTwoDivX1, StopLoopingSecondArrowLineTwoDivY1, StopLoopingSecondArrowLineTwoDivX2, StopLoopingSecondArrowLineTwoDivY2 );
   line( StopLoopingSecondArrowLineThreeDivX1, StopLoopingSecondArrowLineThreeDivY1, StopLoopingSecondArrowLineThreeDivX2, StopLoopingSecondArrowLineThreeDivY2 );
   line( StopLoopingSecondArrowLineFourDivX1, StopLoopingSecondArrowLineFourDivY1, StopLoopingSecondArrowLineFourDivX2, StopLoopingSecondArrowLineFourDivY2 );
   line( StopLoopingSecondArrowLineFiveDivX1, StopLoopingSecondArrowLineFiveDivY1, StopLoopingSecondArrowLineFiveDivX2, StopLoopingSecondArrowLineFiveDivY2 );
   triangle( StopLoopingSecondArrowTriangleDivX1, StopLoopingSecondArrowTriangleDivY1, StopLoopingSecondArrowTriangleDivX2, StopLoopingSecondArrowTriangleDivY2, StopLoopingSecondArrowTriangleDivX3, StopLoopingSecondArrowTriangleDivY3 );
   
   
   line( StopLoopingCrossLine1X1, StopLoopingCrossLine1Y1, StopLoopingCrossLine1X2, StopLoopingCrossLine1Y2 );
   */

  fill(buttonInk);

  fill(resetInk);

  int appWidth = displayWidth;
  int appHeight = displayHeight;

  PFont font;
  float fontSize1= appHeight;
  String PLBI = "Palatino Linotype Bold Italic";
  font = createFont(PLBI, fontSize1);

  String ten = "10";
  String fifteen = "15";

  //Aspect ratio for "10"
  float tenFontSize = 20;
  float tendivHeight = tenDivHeight;
  float tenAspectRatio = tenFontSize / tendivHeight;
  //Aspect ratio for "15" is the same as Aspect ratio for "10"

  float textAdjustment = 0.9;

  //fontSize2 = xDivHeight*xAspectRatio * textAdjustment;
  fontSize3 = tenDivHeight*tenAspectRatio * textAdjustment;
  //fontSize4 = nextupDivHeight*nextUpAspectRatio * textAdjustment;
  //fontSize5 = theFinalCountdowndivHeight*theFinalCountdownAspectRatio * textAdjustment;
  //fontSize6 = artistsdivHeight*artistsAspectRatio * textAdjustment;

  textAlign(CENTER, TOP);

  fill(blackInk);

  textFont(font, fontSize3);
  text(ten, tenDivX, tenDivY, tenDivWidth, tenDivHeight);

  textFont(font, fontSize3);
  text(fifteen, fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight);


  if (isPaused) {
    fill(#0C4800);
    rect( greenlightDivX, greenlightDivY, greenlightDivWidth, greenlightDivHeight );
    fill(redInk);
    rect( redlightDivX, redlightDivY, redlightDivWidth, redlightDivHeight );
    fill(resetInk);
  } else {
    fill(greenInk);
    rect( greenlightDivX, greenlightDivY, greenlightDivWidth, greenlightDivHeight );
    fill(#790103);
    rect( redlightDivX, redlightDivY, redlightDivWidth, redlightDivHeight );
    fill(resetInk);
  }

  if (isMuted) {
    playList[currentSong].mute();
  } else {
    playList[currentSong].unmute();
  }
}

void mousePressed() {
  soundEffects[0].play();
  soundEffects[0].rewind();
}//End Mouse Pressed

void keyPressed() {
  /* Simple Play
   playList[currentSong].play();
   currentSong++;
   */
  //
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ); //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ); //Special Keys abriviated CAPS
   -
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) {//Simple Play, double tap possible
    if ( !playList[currentSong].isPlaying() ) {
      playList[currentSong].loop(0);
      isPaused=false;
    }
  }


  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  if ( key=='O' || key=='o' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      isPaused = true;
    } else {
      playList[currentSong].play();
      isPaused = false;
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' || key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      isPaused = true;
    } else {
      playList[currentSong].play();
      isPaused = false;
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 15000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
      isMuted=false;
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
      isMuted=true;
    }
  }
  if ( keyCode==ESC ) exit(); // QUIT // UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  if ( key=='B' || key=='b' ) { // PREVIOUS
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();

      if ( currentSong==0 ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
      playList[currentSong].play();
    } else {
      playList[currentSong].rewind();

      if ( currentSong==0 ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
      // does not auto-play if previously not playing
    }
  }
  //
  if ( key=='Y' || key=='y' ) {
    if ( playList[currentSong].isPlaying() )
    {
      playList[currentSong].pause();
      playList[currentSong].rewind();
    }
    currentSong = int(random(numberOfSongs)); //random(0, numberOfSongs)}
  }
  //
  //if ( key=='S' || key=='s' ); // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
 if ( key=='' || key=='' ); // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
}//End Key Pressed

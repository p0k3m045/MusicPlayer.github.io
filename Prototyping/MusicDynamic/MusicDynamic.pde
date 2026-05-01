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
float songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight, greenlightDivX, greenlightDivY, greenlightDivWidth, greenlightDivHeight, redlightDivX, redlightDivY, redlightDivWidth, redlightDivHeight;
color blackInk, whiteInk, resetInk, brownInk, redInk, tanInk, buttonInk, textInk;
boolean isPaused = false;
boolean isMuted = false;

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
  buttonInk = #C66102;
  textInk = #CE9E00;
  whiteInk = #FFFFFF; //Grey Scale is 255
  resetInk = whiteInk;

  float songtitleboxDivX = appWidth * 10 / paperWidth;
  float songtitleboxDivY = appHeight *  12 / paperHeight;
  float songtitleboxDivWidth = appWidth * 80 / paperWidth;
  float songtitleboxDivHeight = appHeight * 20 / paperHeight;

  songtitleDivX = appWidth * 12 / paperWidth;
  songtitleDivY = appHeight *  14 / paperHeight;
  songtitleDivWidth = appWidth * 76 / paperWidth;
  songtitleDivHeight = appHeight * 16 / paperHeight;


  float recordplayerimageDivX = appWidth * 10 / paperWidth;
  float recordplayerimageDivY = appHeight *  40 / paperHeight;
  float recordplayerimageDivWidth = appWidth * 120 / paperWidth;
  float recordplayerimageDivHeight = appHeight * 90 / paperHeight;

  greenlightDivX = appWidth * 95 / paperWidth;
  greenlightDivY = appHeight *  100 / paperHeight;
  greenlightDivWidth = appWidth * 5 / paperWidth;
  greenlightDivHeight = appHeight * 5 / paperHeight;

  redlightDivX = appWidth * 105 / paperWidth;
  redlightDivY = appHeight *  100 / paperHeight;
  redlightDivWidth = appWidth * 5 / paperWidth;
  redlightDivHeight = appHeight * 5 / paperHeight;

  float looponceDivX = appWidth * 10 / paperWidth;
  float looponceDivY = appHeight *  140 / paperHeight;
  float looponceDivWidth = appWidth * 10 / paperWidth;
  float looponceDivHeight = appHeight * 10 / paperHeight;

  float loopforeverDivX = appWidth * 30 / paperWidth;
  float loopforeverDivY = appHeight *  140 / paperHeight;
  float loopforeverDivWidth = appWidth * 10 / paperWidth;
  float loopforeverDivHeight = appHeight * 10 / paperHeight;

  float stoploopingDivX = appWidth * 50 / paperWidth;
  float stoploopingDivY = appHeight *  140 / paperHeight;
  float stoploopingDivWidth = appWidth * 10 / paperWidth;
  float stoploopingDivHeight = appHeight * 10 / paperHeight;

  float restartDivX = appWidth * 9 / paperWidth;
  float restartDivY = appHeight *  170 / paperHeight;
  float restartDivWidth = appWidth * 15 / paperWidth;
  float restartDivHeight = appHeight * 15 / paperHeight;

  float rewindtenDivX = appWidth * 32 / paperWidth;
  float rewindtenDivY = appHeight *  170 / paperHeight;
  float rewindtenDivWidth = appWidth * 15 / paperWidth;
  float rewindtenDivHeight = appHeight * 15 / paperHeight;

  float pauseDivX = appWidth * 56 / paperWidth;
  float pauseDivY = appHeight * 170 / paperHeight;
  float pauseDivWidth = appWidth * 15 / paperWidth;
  float pauseDivHeight = appHeight * 15 / paperHeight;

  float playDivX = appWidth * 79 / paperWidth;
  float playDivY = appHeight *  170 / paperHeight;
  float playDivWidth = appWidth * 15 / paperWidth;
  float playDivHeight = appHeight * 15 / paperHeight;

  float skipfifteenDivX = appWidth * 103 / paperWidth;
  float skipfifteenDivY = appHeight *  170 / paperHeight;
  float skipfifteenDivWidth = appWidth * 15 / paperWidth;
  float skipfifteenDivHeight = appHeight * 15 / paperHeight;

  float nextsongDivX = appWidth * 126 / paperWidth;
  float nextsongDivY = appHeight *  170 / paperHeight;
  float nextsongDivWidth = appWidth * 15 / paperWidth;
  float nextsongDivHeight = appHeight * 15 / paperHeight;

  float uiboxDivX = appWidth * 0 / paperWidth;
  float uiboxDivY = appHeight *  135 / paperHeight;
  float uiboxDivWidth = appWidth * 150 / paperWidth;
  float uiboxDivHeight = appHeight * 81 / paperHeight;

  float searchbarDivX = appWidth * 215 / paperWidth;
  float searchbarDivY = appHeight *  5 / paperHeight;
  float searchbarDivWidth = appWidth * 45 / paperWidth;
  float searchbarDivHeight = appHeight * 10 / paperHeight;

  float magnifyingglassimageDivX = appWidth * 217 / paperWidth;
  float magnifyingglassimageDivY = appHeight *  7 / paperHeight;
  float magnifyingglassimageDivWidth = appWidth * 6 / paperWidth;
  float magnifyingglassimageDivHeight = appHeight * 6 / paperHeight;

  float boxforxDivX = appWidth * (paperWidth - 10) / paperWidth;
  float boxforxDivY = appHeight *  0 / paperHeight;
  float boxforxDivWidth = appWidth * 10 / paperWidth;
  float boxforxDivHeight = appHeight * 10 / paperHeight;

  float xDivX = appWidth * (paperWidth - 8) / paperWidth;
  float xDivY = appHeight *  0 / paperHeight;
  float xDivWidth = appWidth * 8 / paperWidth;
  float xDivHeight = appHeight * 8 / paperHeight;

  float nextupandlyricsboxDivX = appWidth * 165 / paperWidth;
  float nextupandlyricsboxDivY = appHeight *  20 / paperHeight;
  float nextupandlyricsboxDivWidth = appWidth * 105 / paperWidth;
  float nextupandlyricsboxDivHeight = appHeight * 180 / paperHeight;

  float nextupDivX = appWidth * 175 / paperWidth;
  float nextupDivY = appHeight *  27.5 / paperHeight;
  float nextupDivWidth = appWidth * 35 / paperWidth;
  float nextupDivHeight = appHeight * 10 / paperHeight;

  float lyricsDivX = appWidth * 225 / paperWidth;
  float lyricsDivY = appHeight *  27.5 / paperHeight;
  float lyricsDivWidth = appWidth * 35 / paperWidth;
  float lyricsDivHeight = appHeight * 10 / paperHeight;

  float albumcoverimagefinalcountdownDivX = appWidth * 167 / paperWidth;
  float albumcoverimagefinalcountdownDivY = appHeight *  47 / paperHeight;
  float albumcoverimagefinalcountdownDivWidth = appWidth * 20 / paperWidth;
  float albumcoverimagefinalcountdownDivHeight = appHeight * 20 / paperHeight;

  float songNamefinalcountdownDivX = appWidth * 187 / paperWidth;
  float songNamefinalcountdownDivY = appHeight *  47 / paperHeight;
  float songNamefinalcountdownDivWidth = appWidth * 50 / paperWidth;
  float songNamefinalcountdownDivHeight = appHeight * 10 / paperHeight;

  float nameofartisteuropeDivX = appWidth * 187 / paperWidth;
  float nameofartisteuropeDivY = appHeight *  57 / paperHeight;
  float nameofartisteuropeDivWidth = appWidth * 30 / paperWidth;
  float nameofartisteuropeDivHeight = appHeight * 5 / paperHeight;

  float playnextfinalcountdownDivX = appWidth * 252 / paperWidth;
  float playnextfinalcountdownDivY = appHeight *  52 / paperHeight;
  float playnextfinalcountdownDivWidth = appWidth * 10 / paperWidth;
  float playnextfinalcountdownDivHeight = appHeight * 10 / paperHeight;

  float albumcoverimageintheendDivX = appWidth * 167 / paperWidth;
  float albumcoverimageintheendDivY = appHeight *  72 / paperHeight;
  float albumcoverimageintheendDivWidth = appWidth * 20 / paperWidth;
  float albumcoverimageintheendDivHeight = appHeight * 20 / paperHeight;

  float songNameintheendDivX = appWidth * 187 / paperWidth;
  float songNameintheendDivY = appHeight *  72 / paperHeight;
  float songNameintheendDivWidth = appWidth * 50 / paperWidth;
  float songNameintheendDivHeight = appHeight * 10 / paperHeight;

  float nameofartistlinkinparkDivX = appWidth * 187 / paperWidth;
  float nameofartistlinkinparkDivY = appHeight *  82 / paperHeight;
  float nameofartistlinkinparkDivWidth = appWidth * 30 / paperWidth;
  float nameofartistlinkinparkDivHeight = appHeight * 5 / paperHeight;

  float playnextintheendDivX = appWidth * 252 / paperWidth;
  float playnextintheendDivY = appHeight *  77 / paperHeight;
  float playnextintheendDivWidth = appWidth * 10 / paperWidth;
  float playnextintheendDivHeight = appHeight * 10 / paperHeight;

  float albumcoverimagejoinusforabiteDivX = appWidth * 167 / paperWidth;
  float albumcoverimagejoinusforabiteDivY = appHeight *  97 / paperHeight;
  float albumcoverimagejoinusforabiteDivWidth = appWidth * 20 / paperWidth;
  float albumcoverimagejoinusforabiteDivHeight = appHeight * 20 / paperHeight;

  float songNamejoinusforabiteDivX = appWidth * 187 / paperWidth;
  float songNamejoinusforabiteDivY = appHeight *  97 / paperHeight;
  float songNamejoinusforabiteDivWidth = appWidth * 50 / paperWidth;
  float songNamejoinusforabiteDivHeight = appHeight * 10 / paperHeight;

  float nameofartistjtmusicDivX = appWidth * 187 / paperWidth;
  float nameofartistjtmusicDivY = appHeight *  107 / paperHeight;
  float nameofartistjtmusicDivWidth = appWidth * 30 / paperWidth;
  float nameofartistjtmusicDivHeight = appHeight * 5 / paperHeight;

  float playnextjoinusforabiteDivX = appWidth * 252 / paperWidth;
  float playnextjoinusforabiteDivY = appHeight *  102 / paperHeight;
  float playnextjoinusforabiteDivWidth = appWidth * 10 / paperWidth;
  float playnextjoinusforabiteDivHeight = appHeight * 10 / paperHeight;

  float finalcountdownuiboxDivX = appWidth * 165 / paperWidth;
  float finalcountdownuiboxDivY = appHeight *  45 / paperHeight;
  float finalcountdownuiboxDivWidth = appWidth * 105 / paperWidth;
  float finalcountdownuiboxDivHeight = appHeight * 25 / paperHeight;

  float intheenduiboxDivX = appWidth * 165 / paperWidth;
  float intheenduiboxDivY = appHeight *  70 / paperHeight;
  float intheenduiboxDivWidth = appWidth * 105 / paperWidth;
  float intheenduiboxDivHeight = appHeight * 25 / paperHeight;

  float joinusforabiteuiboxDivX = appWidth * 165 / paperWidth;
  float joinusforabiteuiboxDivY = appHeight *  95 / paperHeight;
  float joinusforabiteuiboxDivWidth = appWidth * 105 / paperWidth;
  float joinusforabiteuiboxDivHeight = appHeight * 25 / paperHeight;

  float tenDivX = appWidth * 37 / paperWidth;
  float tenDivY = appHeight *  175 / paperHeight;
  float tenDivWidth = appWidth * 5 / paperWidth;
  float tenDivHeight = appHeight * 5 / paperHeight;

  float fifteenDivX = appWidth * 108 / paperWidth;
  float fifteenDivY = appHeight *  175 / paperHeight;
  float fifteenDivWidth = appWidth * 5 / paperWidth;
  float fifteenDivHeight = appHeight * 5 / paperHeight;
  
  float lyricWordsDivX = appWidth * 165 / paperWidth;
  float lyricWordsDivY = appHeight *  45 / paperHeight;
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

  rect( tenDivX, tenDivY, tenDivWidth, tenDivHeight );
  rect( fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight );

//  rect ( lyricWordsDivX, lyricWordsDivY, lyricWordsDivWidth, lyricWordsDivHeight);

  fill(resetInk);

  minim = new Minim(this);
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependenciesFolder = "Dependencies";

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

  String title = "Title";

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
  float fontSize2 = xDivHeight;
  float fontSize3 = tenDivHeight;
  float fontSize4 = nextupDivHeight;
  float fontSize5 = songNamefinalcountdownDivHeight;
  float fontSize6 = nameofartisteuropeDivHeight;

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

  //
}//End Setup

void draw() {
  fill(resetInk);
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

  if (isPaused) {
    fill(#0C4800);
    rect( greenlightDivX, greenlightDivY, greenlightDivWidth, greenlightDivHeight );
    fill(redInk);
    rect( redlightDivX, redlightDivY, redlightDivWidth, redlightDivHeight );
    fill(resetInk);
  } else {
    fill(#22C602);
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

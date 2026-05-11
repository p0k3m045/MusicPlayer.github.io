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
float loopforeverDivX, loopforeverDivY, loopforeverDivWidth, loopforeverDivHeight, stopLoopingDivX, stopLoopingDivY, stopLoopingDivWidth, stopLoopingDivHeight, restartDivX, restartDivY, restartDivWidth, restartDivHeight;
float rewindtenDivX, rewindtenDivY, rewindtenDivWidth, rewindtenDivHeight, pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight, playDivX, playDivY, playDivWidth, playDivHeight;
float skipfifteenDivX, skipfifteenDivY, skipfifteenDivWidth, skipfifteenDivHeight, nextsongDivX, nextsongDivY, nextsongDivWidth, nextsongDivHeight, fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight, tenDivX, tenDivY, tenDivWidth, tenDivHeight;
float songNamefinalcountdownDivX, songNamefinalcountdownDivY, songNamefinalcountdownDivWidth, songNamefinalcountdownDivHeight, xDivX, xDivY, xDivWidth, xDivHeight, nextupDivX, nextupDivY, nextupDivWidth, nextupDivHeight, lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight;
float artistNameeuropeDivX, artistNameeuropeDivY, artistNameeuropeDivWidth, artistNameeuropeDivHeight, songNameintheendDivX, songNameintheendDivY, songNameintheendDivWidth, songNameintheendDivHeight, artistNamelinkinparkDivX, artistNamelinkinparkDivY, artistNamelinkinparkDivWidth, artistNamelinkinparkDivHeight;
float songNamejoinusforabiteDivX, songNamejoinusforabiteDivY, songNamejoinusforabiteDivWidth, songNamejoinusforabiteDivHeight, artistNamejtmusicDivX, artistNamejtmusicDivY, artistNamejtmusicDivWidth, artistNamejtmusicDivHeight;
float playnextfinalcountdownDivX, playnextfinalcountdownDivY, playnextfinalcountdownDivWidth, playnextfinalcountdownDivHeight, albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, albumcoverimagejoinusforabiteDivWidth, albumcoverimagejoinusforabiteDivHeight;
float playnextintheendDivX, playnextintheendDivY, playnextintheendDivWidth, playnextintheendDivHeight, albumcoverimageintheendDivX, albumcoverimageintheendDivY, albumcoverimageintheendDivWidth, albumcoverimageintheendDivHeight;
float playnextjoinusforabiteDivX, playnextjoinusforabiteDivY, playnextjoinusforabiteDivWidth, playnextjoinusforabiteDivHeight, autoplayDivX, autoplayDivY, autoplayDivWidth, autoplayDivHeight;
float boxforxDivX, boxforxDivY, boxforxDivWidth, boxforxDivHeight, lyricWordsDivX, lyricWordsDivY, lyricWordsDivWidth, lyricWordsDivHeight, intheenduiboxDivX, intheenduiboxDivY, intheenduiboxDivWidth, intheenduiboxDivHeight;
float finalcountdownuiboxDivX, finalcountdownuiboxDivY, finalcountdownuiboxDivWidth, finalcountdownuiboxDivHeight, joinusforabiteuiboxDivX, joinusforabiteuiboxDivY, joinusforabiteuiboxDivWidth, joinusforabiteuiboxDivHeight;
float albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, albumcoverimagefinalcountdownDivWidth, albumcoverimagefinalcountdownDivHeight, coveruplyricsDivX, coveruplyricsDivY, coveruplyricsDivWidth, coveruplyricsDivHeight;
float leftHalfLyricsDivX, leftHalfLyricsDivY, leftHalfLyricsDivWidth, leftHalfLyricsDivHeight, rightHalfLyricsDivX, rightHalfLyricsDivY, rightHalfLyricsDivWidth, rightHalfLyricsDivHeight;
float fontSize2, fontSize3, fontSize4, fontSize5, fontSize6;
color blackInk, whiteInk, resetInk, brownInk, redInk, greenInk, tanInk, buttonInk, textInk;
boolean isPaused = true;
boolean isMuted = false;
boolean autoPlay = false;
boolean lyricsDiv = false;
boolean nextUpDiv = true;
String upArrow = "..";
String open = "/";
String musicFolder = "Music";
String soundEffectsFolder = "Sound Effects";
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName1 = "Join Us For A Bite";
String imageName2 = "Europe TFC";
String imageName3 = "Hybrid Theory";
String imageName4 = "Record Player";
String fileExension = ".jpg";

//Void
void setup() {
  fullScreen( );
  tanInk = #D1B95B;
  background(tanInk );
  println(displayWidth, displayHeight );

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

  stopLoopingDivX = appWidth * 50 / paperWidth;
  stopLoopingDivY = appHeight * 140 / paperHeight;
  stopLoopingDivWidth = appWidth * 10 / paperWidth;
  stopLoopingDivHeight = appHeight * 10 / paperHeight;

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

  boxforxDivX = appWidth * (paperWidth - 10) / paperWidth;
  boxforxDivY = appHeight * 0 / paperHeight;
  boxforxDivWidth = appWidth * 10 / paperWidth;
  boxforxDivHeight = appHeight * 10 / paperHeight;

  xDivX = appWidth * (paperWidth - 8) / paperWidth;
  xDivY = appHeight * 0 / paperHeight;
  xDivWidth = appWidth * 8 / paperWidth;
  xDivHeight = appHeight * 8 / paperHeight;

  float nextupandlyricsboxDivX = appWidth * 165 / paperWidth;
  float nextupandlyricsboxDivY = appHeight * 20 / paperHeight;
  float nextupandlyricsboxDivWidth = appWidth * 105 / paperWidth;
  float nextupandlyricsboxDivHeight = appHeight * 180 / paperHeight;

  nextupDivX = appWidth * 175 / paperWidth;
  nextupDivY = appHeight * 27.5 / paperHeight;
  nextupDivWidth = appWidth * 35 / paperWidth;
  nextupDivHeight = appHeight * 10 / paperHeight;

  lyricsDivX = appWidth * 225 / paperWidth;
  lyricsDivY = appHeight * 27.5 / paperHeight;
  lyricsDivWidth = appWidth * 35 / paperWidth;
  lyricsDivHeight = appHeight * 10 / paperHeight;

  albumcoverimagefinalcountdownDivX = appWidth * 167 / paperWidth;
  albumcoverimagefinalcountdownDivY = appHeight * 47 / paperHeight;
  albumcoverimagefinalcountdownDivWidth = appWidth * 20 / paperWidth;
  albumcoverimagefinalcountdownDivHeight = appHeight * 20 / paperHeight;

  songNamefinalcountdownDivX = appWidth * 187 / paperWidth;
  songNamefinalcountdownDivY = appHeight * 47 / paperHeight;
  songNamefinalcountdownDivWidth = appWidth * 50 / paperWidth;
  songNamefinalcountdownDivHeight = appHeight * 10 / paperHeight;

  artistNameeuropeDivX = appWidth * 187 / paperWidth;
  artistNameeuropeDivY = appHeight * 57 / paperHeight;
  artistNameeuropeDivWidth = appWidth * 30 / paperWidth;
  artistNameeuropeDivHeight = appHeight * 5 / paperHeight;

  playnextfinalcountdownDivX = appWidth * 252 / paperWidth;
  playnextfinalcountdownDivY = appHeight * 52 / paperHeight;
  playnextfinalcountdownDivWidth = appWidth * 10 / paperWidth;
  playnextfinalcountdownDivHeight = appHeight * 10 / paperHeight;

  albumcoverimageintheendDivX = appWidth * 167 / paperWidth;
  albumcoverimageintheendDivY = appHeight * 72 / paperHeight;
  albumcoverimageintheendDivWidth = appWidth * 20 / paperWidth;
  albumcoverimageintheendDivHeight = appHeight * 20 / paperHeight;

  songNameintheendDivX = appWidth * 187 / paperWidth;
  songNameintheendDivY = appHeight * 72 / paperHeight;
  songNameintheendDivWidth = appWidth * 50 / paperWidth;
  songNameintheendDivHeight = appHeight * 10 / paperHeight;

  artistNamelinkinparkDivX = appWidth * 187 / paperWidth;
  artistNamelinkinparkDivY = appHeight * 82 / paperHeight;
  artistNamelinkinparkDivWidth = appWidth * 30 / paperWidth;
  artistNamelinkinparkDivHeight = appHeight * 5 / paperHeight;

  playnextintheendDivX = appWidth * 252 / paperWidth;
  playnextintheendDivY = appHeight * 77 / paperHeight;
  playnextintheendDivWidth = appWidth * 10 / paperWidth;
  playnextintheendDivHeight = appHeight * 10 / paperHeight;

  albumcoverimagejoinusforabiteDivX = appWidth * 167 / paperWidth;
  albumcoverimagejoinusforabiteDivY = appHeight * 97 / paperHeight;
  albumcoverimagejoinusforabiteDivWidth = appWidth * 20 / paperWidth;
  albumcoverimagejoinusforabiteDivHeight = appHeight * 20 / paperHeight;

  songNamejoinusforabiteDivX = appWidth * 187 / paperWidth;
  songNamejoinusforabiteDivY = appHeight * 97 / paperHeight;
  songNamejoinusforabiteDivWidth = appWidth * 50 / paperWidth;
  songNamejoinusforabiteDivHeight = appHeight * 10 / paperHeight;

  artistNamejtmusicDivX = appWidth * 187 / paperWidth;
  artistNamejtmusicDivY = appHeight * 107 / paperHeight;
  artistNamejtmusicDivWidth = appWidth * 30 / paperWidth;
  artistNamejtmusicDivHeight = appHeight * 5 / paperHeight;

  playnextjoinusforabiteDivX = appWidth * 252 / paperWidth;
  playnextjoinusforabiteDivY = appHeight * 102 / paperHeight;
  playnextjoinusforabiteDivWidth = appWidth * 10 / paperWidth;
  playnextjoinusforabiteDivHeight = appHeight * 10 / paperHeight;

  finalcountdownuiboxDivX = appWidth * 165 / paperWidth;
  finalcountdownuiboxDivY = appHeight * 45 / paperHeight;
  finalcountdownuiboxDivWidth = appWidth * 105 / paperWidth;
  finalcountdownuiboxDivHeight = appHeight * 25 / paperHeight;

  intheenduiboxDivX = appWidth * 165 / paperWidth;
  intheenduiboxDivY = appHeight * 70 / paperHeight;
  intheenduiboxDivWidth = appWidth * 105 / paperWidth;
  intheenduiboxDivHeight = appHeight * 25 / paperHeight;

  joinusforabiteuiboxDivX = appWidth * 165 / paperWidth;
  joinusforabiteuiboxDivY = appHeight * 95 / paperHeight;
  joinusforabiteuiboxDivWidth = appWidth * 105 / paperWidth;
  joinusforabiteuiboxDivHeight = appHeight * 25 / paperHeight;

  tenDivX = appWidth * 37 / paperWidth;
  tenDivY = appHeight * 175 / paperHeight;
  tenDivWidth = appWidth * 5 / paperWidth;
  tenDivHeight = appHeight * 5 / paperHeight;

  fifteenDivX = appWidth * 108 / paperWidth;
  fifteenDivY = appHeight * 175 / paperHeight;
  fifteenDivWidth = appWidth * 5 / paperWidth;
  fifteenDivHeight = appHeight * 5 / paperHeight;

  float magnifyingGlassCircleDivX = magnifyingglassimageDivX + magnifyingglassimageDivWidth* 1/3;
  float magnifyingGlassCircleDivY = magnifyingglassimageDivY + magnifyingglassimageDivWidth* 1/3;
  float magnifyingGlassCircleDivSize = magnifyingglassimageDivWidth * 1/3;
  float magnifyingGlassCircleDivSize2 = magnifyingglassimageDivWidth * 1/4;


  float magnifyingGlassLineX1 = magnifyingglassimageDivX + magnifyingglassimageDivWidth* 1/2;
  float magnifyingGlassLineY1 = magnifyingglassimageDivY + magnifyingglassimageDivHeight* 19/32;
  float magnifyingGlassLineX2 = magnifyingglassimageDivX + magnifyingglassimageDivWidth* 7/8;
  float magnifyingGlassLineY2 = magnifyingglassimageDivY + magnifyingglassimageDivHeight* 7/8;


  autoplayDivX = (nextsongDivX+nextsongDivWidth) - (appWidth * 10 / paperWidth);
  autoplayDivY = appHeight * 140 / paperHeight;
  autoplayDivWidth = appWidth * 10 / paperWidth;
  autoplayDivHeight = appHeight * 10 / paperHeight;

  lyricWordsDivX = appWidth * 165 / paperWidth;
  lyricWordsDivY = appHeight * 45 / paperHeight;
  lyricWordsDivWidth = appWidth * 105 / paperWidth;
  lyricWordsDivHeight = appHeight * 155 / paperHeight;

  coveruplyricsDivX = joinusforabiteuiboxDivX;
  coveruplyricsDivY = joinusforabiteuiboxDivY + joinusforabiteuiboxDivHeight;
  coveruplyricsDivWidth = joinusforabiteuiboxDivWidth;
  coveruplyricsDivHeight = nextupandlyricsboxDivHeight - (joinusforabiteuiboxDivHeight * 4);

  rightHalfLyricsDivX = (lyricWordsDivX + lyricWordsDivWidth*1/2) + 10;
  rightHalfLyricsDivY = lyricWordsDivY + 10;
  rightHalfLyricsDivWidth = lyricWordsDivWidth*1/2 - 20;
  rightHalfLyricsDivHeight = lyricWordsDivHeight - 20;



  //rect( DivX, DivY, DivWidth, DivHeight );
  brownInk = #834503;
  fill(brownInk );
  rect( songtitleboxDivX, songtitleboxDivY, songtitleboxDivWidth, songtitleboxDivHeight );

  fill(resetInk );
  rect( recordplayerimageDivX, recordplayerimageDivY, recordplayerimageDivWidth, recordplayerimageDivHeight );
  println(recordplayerimageDivWidth, recordplayerimageDivHeight );

  fill(brownInk );
  rect( uiboxDivX, uiboxDivY, uiboxDivWidth, uiboxDivHeight );

  fill(buttonInk );
  rect( looponceDivX, looponceDivY, looponceDivWidth, looponceDivHeight );
  rect( loopforeverDivX, loopforeverDivY, loopforeverDivWidth, loopforeverDivHeight );
  rect( stopLoopingDivX, stopLoopingDivY, stopLoopingDivWidth, stopLoopingDivHeight );
  rect( restartDivX, restartDivY, restartDivWidth, restartDivHeight );
  rect( rewindtenDivX, rewindtenDivY, rewindtenDivWidth, rewindtenDivHeight );
  rect( pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight );
  rect( playDivX, playDivY, playDivWidth, playDivHeight );
  rect( skipfifteenDivX, skipfifteenDivY, skipfifteenDivWidth, skipfifteenDivHeight );
  rect( nextsongDivX, nextsongDivY, nextsongDivWidth, nextsongDivHeight );

  fill(brownInk );
  rect( searchbarDivX, searchbarDivY, searchbarDivWidth, searchbarDivHeight );

  fill(buttonInk );
  rect( magnifyingglassimageDivX, magnifyingglassimageDivY, magnifyingglassimageDivWidth, magnifyingglassimageDivHeight );

  fill(redInk );
  rect( boxforxDivX, boxforxDivY, boxforxDivWidth, boxforxDivHeight );
  rect( xDivX, xDivY, xDivWidth, xDivHeight );

  fill(brownInk );
  rect( nextupandlyricsboxDivX, nextupandlyricsboxDivY, nextupandlyricsboxDivWidth, nextupandlyricsboxDivHeight );

  fill(buttonInk );
  rect( nextupDivX, nextupDivY, nextupDivWidth, nextupDivHeight );
  rect( lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight );

  //rect(leftHalfLyricsDivX, leftHalfLyricsDivY, leftHalfLyricsDivWidth, leftHalfLyricsDivHeight);

  rect( autoplayDivX, autoplayDivY, autoplayDivWidth, autoplayDivHeight );
  //rect( tenDivX, tenDivY, tenDivWidth, tenDivHeight );
  //rect( fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight );

  fill(resetInk );
  circle(magnifyingGlassCircleDivX, magnifyingGlassCircleDivY, magnifyingGlassCircleDivSize );
  fill(buttonInk );
  circle(magnifyingGlassCircleDivX, magnifyingGlassCircleDivY, magnifyingGlassCircleDivSize2 );
  line(magnifyingGlassLineX1, magnifyingGlassLineY1, magnifyingGlassLineX2, magnifyingGlassLineY2 );

  float fontSize1 = songtitleDivHeight; //1:1 Font Height to rectHeight
  float fontSize2 = appHeight;
  float fontSize4 = appHeight;
  float fontSize5 = appHeight;
  float fontSize6 = appHeight;
  PFont font;
  String PLBI = "Palatino Linotype Bold Italic";
  String x = "X";
  String nextUp = "Next Up";
  String lyrics = "Lyrics";
  String TFC = "The Final Countdown";
  String ITE = "In The End";
  String JUFAB = "Join Us For A Bite";
  String europe = "Europe";
  String linkinPark = "Linkin Park";
  String JTMusic = "JT Music";


  font = createFont(PLBI, fontSize1 );

  //Aspect ratio for "X"
  float xFontSize = 32;
  float xdivHeight = xDivHeight;
  float xAspectRatio = xFontSize / xdivHeight;

  //Aspect ratio for "Next Up"
  float nextUpFontSize = 41;
  float nextUpdivHeight = nextupDivHeight;
  float nextUpAspectRatio = nextUpFontSize / nextUpdivHeight;
  //Aspect ratio for "Lyrics" is the same as Aspect ratio for "next Up"

  //Aspect ratio for "The Final Countdown"
  float theFinalCountdownFontSize = 41;
  float theFinalCountdowndivHeight = songNamefinalcountdownDivHeight;
  float theFinalCountdownAspectRatio = theFinalCountdownFontSize / theFinalCountdowndivHeight;
  //Aspect ratio for "In The End" and "Join Us For A Bite" are the same as Aspect ratio for "The Final Countdown"

  //Aspect ratio for "Artists"
  float artistsFontSize = 20;
  float artistsdivHeight = artistNameeuropeDivHeight;
  float artistsAspectRatio = artistsFontSize / artistsdivHeight;


  float textAdjustment = 0.9;


  //Final Font Sizes
  fontSize2 = xDivHeight*xAspectRatio * textAdjustment;
  fontSize4 = nextupDivHeight*nextUpAspectRatio * textAdjustment;
  fontSize5 = theFinalCountdowndivHeight*theFinalCountdownAspectRatio * textAdjustment;
  fontSize6 = artistsdivHeight*artistsAspectRatio * textAdjustment;

  //Drawing Text
  color blackInk = #000000;
  color whiteInk = #FFFFFF;
  color resetInk = whiteInk;

  fill(blackInk );
  textAlign(CENTER, CENTER );

  textFont(font, fontSize2 );
  text(x, xDivX, xDivY, xDivWidth, xDivHeight );

  textFont(font, fontSize4 );
  text(nextUp, nextupDivX, nextupDivY, nextupDivWidth, nextupDivHeight );

  textFont(font, fontSize4 );
  text(lyrics, lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight );

  textAlign(LEFT, CENTER );

  float constantDecrease = 0.99;
  int iWhile = 0;
  textFont(font, fontSize5 );
  while (textWidth(TFC) > songNamefinalcountdownDivWidth) {
    iWhile++;
    if (iWhile>100) {
      println ("Infinite WHILE Loop" );
      exit( );
    }
    fontSize5 *= constantDecrease;
    textFont(font, fontSize5 );
  }
  text(TFC, songNamefinalcountdownDivX, songNamefinalcountdownDivY, songNamefinalcountdownDivWidth, songNamefinalcountdownDivHeight );

  textFont(font, fontSize5 );
  text(ITE, songNameintheendDivX, songNameintheendDivY, songNameintheendDivWidth, songNameintheendDivHeight );

  textFont(font, fontSize5 );
  text(JUFAB, songNamejoinusforabiteDivX, songNamejoinusforabiteDivY, songNamejoinusforabiteDivWidth, songNamejoinusforabiteDivHeight );

  textFont(font, fontSize6 );
  text(europe, artistNameeuropeDivX, artistNameeuropeDivY, artistNameeuropeDivWidth, artistNameeuropeDivHeight );

  textFont(font, fontSize6 );
  text(linkinPark, artistNamelinkinparkDivX, artistNamelinkinparkDivY, artistNamelinkinparkDivWidth, artistNamelinkinparkDivHeight );

  textFont(font, fontSize6 );
  text(JTMusic, artistNamejtmusicDivX, artistNamejtmusicDivY, artistNamejtmusicDivWidth, artistNamejtmusicDivHeight );

  fill(resetInk );


  minim = new Minim(this );

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
    println("Inside FOR, Pathway:", file );
    playList[ i ] = minim.loadFile( file );
    playListMetaData[i] = playList[i].getMetaData( );
    //CAUTION; not currentSong var
    println(currentSong );
  }

  file = soundEffectsDirectory + soundEffect + fileExtention;
  soundEffects[currentSong] = minim.loadFile( file );

  for ( int i = 0; i<numberOfSongs; i++) {
    if ( playList[i]==null ) {
      println("The Play List or Sound Effects did not load properly" );
      printArray(playList );
      //exit( );
    }
    if ( playListMetaData[i]==null ) {
      println("The Play List or Sound Effects did not load properly" );
      printArray(playList );
      //exit( );
    }
  }
  if ( soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    println("The Play List or Sound Effects did not load properly" );
    printArray(soundEffects );
    exit( );
  }

  //rect(height) is biggest font is word is the smallest

  font = createFont(PLBI, fontSize1 );
  //
  //Drawing Text
  //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour

  fill(blackInk ); //Ink, hexidecimal copied from Color Selector
  //Grey Scale 0-255
  textAlign (CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  //
  // Procedure Passing RECT(#2) && fontSize(RECT#)
  textFont(font, fontSize1 ); //must include textSize() before text() & textWidth()
  while ( textWidth(playListMetaData[currentSong].fileName()) > songtitleDivWidth ) {
    //println("While #1" ); //Infinite WHILE Check
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infninte WHILE Loop" );
      exit( );
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1 );
  }
  println(fontSize1, songtitleDivHeight );
  println("mETA dATA:", playListMetaData[currentSong].title() == null );
  //textFont(font, 10 ); //fixes WHILE loop


  if (playListMetaData[currentSong].title().equals("")) {

    text(songName[currentSong], songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight );
    fill(resetInk );
  } else {

    text(playListMetaData[currentSong].title (), songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight );
    fill(resetInk );
  }

  String imageDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
  String pathway1 = imageDirectory + imageName1 + fileExension;
  String pathway2 = imageDirectory + imageName2 + fileExension;
  String pathway3 = imageDirectory + imageName3 + fileExension;
  String pathway4 = imageDirectory + imageName4 + fileExension;

  //println(pathway );
  //

  PImage image1 = loadImage( pathway1 );
  PImage image2 = loadImage( pathway2 );
  int imageWidth2 = 500;
  int imageHeight2 = 500;
  PImage image3 = loadImage( pathway3 );
  PImage image4 = loadImage( pathway4 );

  float image2AspectRatio_GreaterOne = ( imageWidth2 > imageHeight2 ) ? float (imageWidth2) / float (imageHeight2) : float (imageHeight2) / float (imageWidth2 );
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
  }

  //println( float (imageWidth2) / float (imageHeight2) );
  //Ternary Operator
  println(image2AspectRatio_GreaterOne );

  image( image1, albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, imageWidthAdjusted+1, imageWidthAdjusted+1 );
  image( image2, albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, imageWidthAdjusted+1, imageHeightAdjusted+1 );
  image( image3, albumcoverimageintheendDivX, albumcoverimageintheendDivY, imageWidthAdjusted+1, imageHeightAdjusted+1 );
  image( image4, recordplayerimageDivX, recordplayerimageDivY, recordplayerimageDivWidth+1, recordplayerimageDivHeight+1 );


  //
}//End Setup

void draw() {
  int appHeight = displayHeight;
  textAlign(CENTER, CENTER );
  fill(textInk );
  textAlign (CENTER, CENTER );
  rect(songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight );
  fill(blackInk );
  String imageDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
  String pathway1 = imageDirectory + imageName1 + fileExension;
  String pathway2 = imageDirectory + imageName2 + fileExension;
  String pathway3 = imageDirectory + imageName3 + fileExension;
  String pathway4 = imageDirectory + imageName4 + fileExension;
  PImage image1 = loadImage( pathway1 );
  PImage image2 = loadImage( pathway2 );
  int imageWidth2 = 500;
  int imageHeight2 = 500;
  PImage image3 = loadImage( pathway3 );
  PImage image4 = loadImage( pathway4 );

  float fontSize1 = appHeight;
  float fontSize2 = appHeight;
  float fontSize4 = appHeight;
  float fontSize5 = appHeight;
  float fontSize6 = appHeight;
  float fontSize7 = appHeight;
  PFont font;
  String PLBI = "Palatino Linotype Bold Italic";
  String x = "X";
  String nextUp = "Next Up";
  String lyrics = "Lyrics";
  String TFC = "The Final Countdown";
  String ITE = "In The End";
  String JUFAB = "Join Us For A Bite";
  String europe = "Europe";
  String linkinPark = "Linkin Park";
  String JTMusic = "JT Music";
  String songLyrics = "";
  String songLyricsRight = "";

  leftHalfLyricsDivX = lyricWordsDivX + 10;
  leftHalfLyricsDivY = rightHalfLyricsDivY;
  if (currentSong > 0) {
    leftHalfLyricsDivWidth = lyricWordsDivWidth - 20;
  } else {
    leftHalfLyricsDivWidth = rightHalfLyricsDivWidth;
  }
  leftHalfLyricsDivHeight = lyricWordsDivHeight - 20;

  if (currentSong == 0) {
    songLyrics = "(Ten, nine) \n(Eight, seven, six, five) \n(Four, three, two, one)  \n\nWe're leavin' together \nBut still it's farewell \nAnd maybe we'll come back \nTo Earth, who can tell? \nI guess there is no one to blame \nWe're leaving ground (leaving ground) \nWill things ever be the same again?  \n\nIt's the final countdown \nThe final countdown  \n\nOh \nWe're headin' for Venus (Venus) \nAnd still we stand tall \n'Cause maybe they've seen us \nAnd welcome us all, yeah \nWith so many light years to go \nAnd things to be found (to be found) \nI'm sure that we all miss her so  \n\nIt's the final countdown \nThe final countdown \nThe final countdown (final countdown) \n(Oh) \nOh  \n\nThe final countdown, oh \n\nIt's the final countdown \nThe final countdown \nThe final countdown (final countdown) \n(Oh)  \n\nIt's the final countdown \nWe're leavin' together \n(The final countdown) \nWe'll all miss her so \nIt's the final countdown (final countdown) \n(Oh) \nIt's the final countdown \nYeah";
  }
  if (currentSong == 1) {
    songLyrics = "\nIt starts with one \nOne thing, I don't know why\nIt doesn't even matter how hard you try\nKeep that in mind, I designed this rhyme to explain in due time\nAll I know time is a valuable thing\nWatch it fly by as the pendulum swings\nWatch it count down to the end of the day, the clock ticks life away\n\nIt's so unreal, didn't look out below\nWatch the time go right out the window\nTryna hold on, d-didn't even know\nI wasted it all just to watch you go\n\nI kept everything inside\nAnd even though I tried, it all fell apart\nWhat it meant to me will eventually be a memory of a time when\n\nI tried so hard and got so far\nBut in the end, it doesn't even matter\nI had to fall to lose it all\nBut in the end, it doesn't even matter\n\nOne thing, I don't know why\nIt doesn't even matter how hard you try\nKeep that in mind, I designed this rhyme to remind myself how I tried so hard\nIn spite of the way you were mockin' me, actin' like I was part of your property\nRememberin' all the times you fought with me\n\nI'm surprised it got so far\nThings aren't the way they were before\nYou wouldn't even recognize me anymore\nNot that you knew me back then, but it all comes back to me in the end\n\nYou kept everything inside\nAnd even though I tried, it all fell apart\nWhat it meant to me will eventually be a memory of a time when\n\nI tried so hard and got so far\nBut in the end, it doesn't even matter\nI had to fall to lose it all\nBut in the end, it doesn't even matter";
    songLyricsRight = "\nI've put my trust in you\nPushed as far as I can go\nFor all this, there's only one thing you should know\nI've put my trust in you\nPushed as far as I can go\nFor all this, there's only one thing you should know\n\nI tried so hard and got so far\nBut in the end, it doesn't even matter\nI had to fall to lose it all\nBut in the end, it doesn't even matter";
}
  if (currentSong == 2) {
    songLyrics = "\nAnd we would love you to join us for a bite (join us for a, join us for a bite) \nAnd we would love you to join us for a bite (join us for a, join us for a bite) \nAnd we would love you to join us for a bite (join us for a, join us for a bite)  \n\nCan't wait to meet you \nSo join the animatronic family \nWe open real soon \nTry your best to hold onto sanity  \n\nCome get to know me \nAnd you won't wanna leave after tonight \nDown here, we're lonely \nAnd we would love you to join us for a bite (join us for a, join us for a bite) \n\nYou've been through 20 long, frightful nights \nYou've seen their faces, felt all their bites \nYou know our show is so far from over (over) \nAnd Freddy told us you're an organ donor  \n\nAll eyes are on you \nWe can walk you through our dark fantasy \nLearn what we've gone through \nWe can teach you to laugh at tragedy  \n\nYou thought the nightmares ended back at Freddy's \nWe're all still right here, so let's get friendly\n\nWe're feeling festive \nJoin the party, we'll try hard not to bite \nAnger is restless \nDon't hold it against us, we're alright\n\nThe fun is starting \nA celebration that lasts eternally \nI'm always watching \nBecause somebody purple murdered me (purple murdered me) \n\nWe'll be found down deep underground \nWhat have I done to deserve this damnation? \nWho knows if you're the one to blame? \n'Cause we don'teven know your name \nBut you're here now, and we've got temptations";
    songLyricsRight = "\nWe're only playing \nJust wanted to make a few friends\nYou plan on staying?\nWhen you're with us, the party never ends  \n\nYou might look at me, and think you're going crazy \nI lost it long ago, you're not alone, baby  \n\nCan't wait to meet you \nSo join the animatronic family \nWe open real soon \nTry your best to hold onto sanity\n\nCome get to know me \nAnd you won't wanna leave after tonight \nDown here, we're lonely \nAnd we would love you to join us for a bite (join us for a, join us for a bite)  \n\nAnd we would love you to join us for a bite (join us for a, join us for a bite) \nAnd we would love you to join us for a bite (join us for a, join us for a bite) \nAnd we would love you to join us for a bite (join us for a, join us for a bite) \nAnd we would love you to join us for a bite (join us for a, join us for a bite)  ";
  }



  font = createFont(PLBI, fontSize1 );

  //Aspect ratio for "X"
  float xFontSize = 32;
  float xdivHeight = xDivHeight;
  float xAspectRatio = xFontSize / xdivHeight;

  //Aspect ratio for "Next Up"
  float nextUpFontSize = 41;
  float nextUpdivHeight = nextupDivHeight;
  float nextUpAspectRatio = nextUpFontSize / nextUpdivHeight;
  //Aspect ratio for "Lyrics" is the same as Aspect ratio for "next Up"

  //Aspect ratio for "The Final Countdown"
  float theFinalCountdownFontSize = 41;
  float theFinalCountdowndivHeight = songNamefinalcountdownDivHeight;
  float theFinalCountdownAspectRatio = theFinalCountdownFontSize / theFinalCountdowndivHeight;
  //Aspect ratio for "In The End" and "Join Us For A Bite" are the same as Aspect ratio for "The Final Countdown"

  //Aspect ratio for "Artists"
  float artistsFontSize = 20;
  float artistsdivHeight = artistNameeuropeDivHeight;
  float artistsAspectRatio = artistsFontSize / artistsdivHeight;

  //Aspect ratio for "Song Lyrics"
    float lyricsFontSize;
if(currentSong == 0) {
   lyricsFontSize = 10.8;
} else {
  lyricsFontSize = 11;
}
  float lyricwordsdivHeight = lyricWordsDivHeight;
  float lyricWordsAspectRatio = lyricsFontSize / lyricwordsdivHeight;


  float textAdjustment = 0.9;


  //Final Font Sizes
  fontSize2 = xDivHeight*xAspectRatio * textAdjustment;
  fontSize4 = nextupDivHeight*nextUpAspectRatio * textAdjustment;
  fontSize5 = theFinalCountdowndivHeight*theFinalCountdownAspectRatio * textAdjustment;
  fontSize6 = artistsdivHeight*artistsAspectRatio * textAdjustment;
  fontSize7 = lyricwordsdivHeight*lyricWordsAspectRatio * textAdjustment;


  //Drawing Text
  color blackInk = #000000;
  color whiteInk = #FFFFFF;
  color resetInk = whiteInk;

  fill(blackInk );

  textAlign(LEFT, TOP );

  float constantDecrease = 0.99;
  int iWhile = 0;



  if (lyricsDiv == true && nextUpDiv == false) {

    fill(brownInk);
    rect ( lyricWordsDivX, lyricWordsDivY, lyricWordsDivWidth, lyricWordsDivHeight );
    fill(textInk);
    rect(leftHalfLyricsDivX, leftHalfLyricsDivY, leftHalfLyricsDivWidth, leftHalfLyricsDivHeight);
    fill(blackInk);
    textFont(font, fontSize7);
    text(songLyrics, leftHalfLyricsDivX + 5, leftHalfLyricsDivY, leftHalfLyricsDivWidth, leftHalfLyricsDivHeight);

    if ( currentSong > 0) {
      fill(blackInk);
      text(songLyricsRight, rightHalfLyricsDivX, rightHalfLyricsDivY, rightHalfLyricsDivWidth, rightHalfLyricsDivHeight);
    }
  }
  if (lyricsDiv == false && nextUpDiv == true) {
    fill(brownInk );
    rect( finalcountdownuiboxDivX, finalcountdownuiboxDivY, finalcountdownuiboxDivWidth, finalcountdownuiboxDivHeight );
    rect( intheenduiboxDivX, intheenduiboxDivY, intheenduiboxDivWidth, intheenduiboxDivHeight );
    rect( joinusforabiteuiboxDivX, joinusforabiteuiboxDivY, joinusforabiteuiboxDivWidth, joinusforabiteuiboxDivHeight );

    fill(resetInk );
    rect( albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, albumcoverimagefinalcountdownDivWidth, albumcoverimagefinalcountdownDivHeight );

    fill(textInk );
    rect( songNamefinalcountdownDivX, songNamefinalcountdownDivY, songNamefinalcountdownDivWidth, songNamefinalcountdownDivHeight );
    rect( artistNameeuropeDivX, artistNameeuropeDivY, artistNameeuropeDivWidth, artistNameeuropeDivHeight );

    fill(buttonInk );
    rect( playnextfinalcountdownDivX, playnextfinalcountdownDivY, playnextfinalcountdownDivWidth, playnextfinalcountdownDivHeight );

    fill(resetInk );
    rect( albumcoverimageintheendDivX, albumcoverimageintheendDivY, albumcoverimageintheendDivWidth, albumcoverimageintheendDivHeight );

    fill(textInk );
    rect( songNameintheendDivX, songNameintheendDivY, songNameintheendDivWidth, songNameintheendDivHeight );
    rect( artistNamelinkinparkDivX, artistNamelinkinparkDivY, artistNamelinkinparkDivWidth, artistNamelinkinparkDivHeight );

    fill(buttonInk );
    rect( playnextintheendDivX, playnextintheendDivY, playnextintheendDivWidth, playnextintheendDivHeight );

    fill(resetInk );
    rect( albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, albumcoverimagejoinusforabiteDivWidth, albumcoverimagejoinusforabiteDivHeight );

    fill(textInk );
    rect( songNamejoinusforabiteDivX, songNamejoinusforabiteDivY, songNamejoinusforabiteDivWidth, songNamejoinusforabiteDivHeight );
    rect( artistNamejtmusicDivX, artistNamejtmusicDivY, artistNamejtmusicDivWidth, artistNamejtmusicDivHeight );

    fill(buttonInk );
    rect( playnextjoinusforabiteDivX, playnextjoinusforabiteDivY, playnextjoinusforabiteDivWidth, playnextjoinusforabiteDivHeight );
    float image2AspectRatio_GreaterOne = ( imageWidth2 > imageHeight2 ) ? float (imageWidth2) / float (imageHeight2) : float (imageHeight2) / float (imageWidth2 );
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
    }

    if (lyricsDiv == false && nextUpDiv == true) {
      fill(blackInk);
      textFont(font, fontSize5 );
      while (textWidth(TFC) > songNamefinalcountdownDivWidth) {
        iWhile++;
        if (iWhile>100) {
          println ("Infinite WHILE Loop" );
          exit( );
        }
        fontSize5 *= constantDecrease;
        textFont(font, fontSize5 );
      }
      text(TFC, songNamefinalcountdownDivX, songNamefinalcountdownDivY, songNamefinalcountdownDivWidth, songNamefinalcountdownDivHeight );

      textFont(font, fontSize5 );
      text(ITE, songNameintheendDivX, songNameintheendDivY, songNameintheendDivWidth, songNameintheendDivHeight );

      textFont(font, fontSize5 );
      text(JUFAB, songNamejoinusforabiteDivX, songNamejoinusforabiteDivY, songNamejoinusforabiteDivWidth, songNamejoinusforabiteDivHeight );

      textFont(font, fontSize6 );
      text(europe, artistNameeuropeDivX, artistNameeuropeDivY, artistNameeuropeDivWidth, artistNameeuropeDivHeight );

      textFont(font, fontSize6 );
      text(linkinPark, artistNamelinkinparkDivX, artistNamelinkinparkDivY, artistNamelinkinparkDivWidth, artistNamelinkinparkDivHeight );

      textFont(font, fontSize6 );
      text(JTMusic, artistNamejtmusicDivX, artistNamejtmusicDivY, artistNamejtmusicDivWidth, artistNamejtmusicDivHeight );

      fill(brownInk);
      rect(coveruplyricsDivX, coveruplyricsDivY, coveruplyricsDivWidth, coveruplyricsDivHeight);
      fill(resetInk );
    }


    //println( float (imageWidth2) / float (imageHeight2) );
    //Ternary Operator
    println(image2AspectRatio_GreaterOne );

    image( image1, albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, imageWidthAdjusted+1, imageWidthAdjusted+1 );
    image( image2, albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, imageWidthAdjusted+1, imageHeightAdjusted+1 );
    image( image3, albumcoverimageintheendDivX, albumcoverimageintheendDivY, imageWidthAdjusted+1, imageHeightAdjusted+1 );
  }

  textAlign (CENTER, CENTER );

  textFont(font, fontSize2);
  fill(blackInk);
  if (playListMetaData[currentSong].title().equals("")) {
    text(songName[currentSong], songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight );
  } else {
    text(playListMetaData[currentSong].title(), songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight );
  }

  fill(resetInk );

  if (!playList[currentSong].isPlaying() && !isPaused) {

    // detect finished song
    if (playList[currentSong].position() >= playList[currentSong].length() - 50) {

      playList[currentSong].pause();
      playList[currentSong].rewind();

      if (autoPlay) {

        // next song
        if (currentSong >= numberOfSongs - 1) {
          currentSong = 0;
        } else {
          currentSong++;
        }

        playList[currentSong].play();
      } else {

        isPaused = true;
      }
    }
  }

  float playSymbolDivX1 = playDivX + playDivWidth*1/4;
  float playSymbolDivY1 = playDivY + playDivHeight*1/4;
  float playSymbolDivX2 = playDivX + playDivWidth*3/4;
  float playSymbolDivY2 = playDivY + playDivHeight*1/2;
  float playSymbolDivX3 = playDivX + playDivWidth*1/4;
  float playSymbolDivY3 = playDivY + playDivHeight*3/4;
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
  float skipFifteenLineDivX2 = skipfifteenDivX+skipfifteenDivWidth*3/4-(skipfifteenDivWidth*1/32 );
  float skipFifteenLineDivY2 = skipfifteenDivY+skipfifteenDivHeight*1/2;
  float skipFifteenTriangleDivX1 = skipfifteenDivX+(skipfifteenDivWidth*1/2 );
  float skipFifteenTriangleDivY1 = skipfifteenDivY+(skipfifteenDivHeight*3/16 );
  float skipFifteenTriangleDivX2 = skipfifteenDivX+(skipfifteenDivWidth*1/2 );
  float skipFifteenTriangleDivY2 = skipfifteenDivY+(skipfifteenDivHeight*11/32 );
  float skipFifteenTriangleDivX3 = skipfifteenDivX+(skipfifteenDivWidth*11/16 );
  float skipFifteenTriangleDivY3 = skipfifteenDivY+(skipfifteenDivHeight*17/64 );
  //

  float rewindTenDivX = rewindtenDivX+rewindtenDivWidth*1/2;
  float rewindTenDivY = rewindtenDivY+rewindtenDivHeight*1/2;
  float rewindTenDivWidth = rewindtenDivWidth*1/2;
  float rewindTenDivHeight = rewindtenDivHeight*1/2;
  float rewindTenDivStart = PI+PI*1/2;
  float rewindTenDivStop = PI+PI*2;
  float rewindTenDivWidth2 = rewindTenDivWidth*7/8;
  float rewindTenDivHeight2 = rewindTenDivHeight*7/8;
  float rewindTenLineDivX1 = rewindtenDivX+(rewindtenDivWidth*1/4 );
  float rewindTenLineDivY1 = rewindtenDivY+rewindtenDivHeight*1/2;
  float rewindTenLineDivX2 = rewindtenDivX+rewindtenDivWidth*1/4+(rewindtenDivWidth*1/32 );
  float rewindTenLineDivY2 = rewindtenDivY+rewindtenDivHeight*1/2;
  float rewindTenTriangleDivX1 = rewindtenDivX+(rewindtenDivWidth*1/2 );
  float rewindTenTriangleDivY1 = rewindtenDivY+(rewindtenDivHeight*3/16 );
  float rewindTenTriangleDivX2 = rewindtenDivX+(rewindtenDivWidth*1/2 );
  float rewindTenTriangleDivY2 = rewindtenDivY+(rewindtenDivHeight*11/32 );
  float rewindTenTriangleDivX3 = rewindtenDivX+(rewindtenDivWidth*5/16 );
  float rewindTenTriangleDivY3 = rewindtenDivY+(rewindtenDivHeight*17/64 );
  //

  float restartSongDivX = restartDivX+restartDivWidth*1/2;
  float restartSongDivY = restartDivY+restartDivHeight*1/2;
  float restartSongDivWidth = restartDivWidth*1/2;
  float restartSongDivHeight = restartDivHeight*1/2;
  float restartSongDivStart = PI+PI*1/2;
  float restartSongDivStop = PI+PI*2;
  float restartSongDivWidth2 = rewindTenDivWidth*7/8;
  float restartSongDivHeight2 = rewindTenDivHeight*7/8;
  float restartSongLineDivX1 = restartDivX+(restartDivWidth*1/4 );
  float restartSongLineDivY1 = restartDivY+restartDivHeight*1/2;
  float restartSongLineDivX2 = restartDivX+restartDivWidth*1/4+(restartDivWidth*1/32 );
  float restartSongLineDivY2 = restartDivY+restartDivHeight*1/2;
  float restartSongTriangleDivX1 = restartDivX+(restartDivWidth*1/2 );
  float restartSongTriangleDivY1 = restartDivY+(restartDivHeight*3/16 );
  float restartSongTriangleDivX2 = restartDivX+(restartDivWidth*1/2 );
  float restartSongTriangleDivY2 = restartDivY+(restartDivHeight*11/32 );
  float restartSongTriangleDivX3 = restartDivX+(restartDivWidth*5/16 );
  float restartSongTriangleDivY3 = restartDivY+(restartDivHeight*17/64 );
  float restartSongPauseDivX1 = restartDivX+restartDivWidth*25/64;
  float restartSongPauseDivY1 = restartDivY+restartDivHeight*3/8;
  float restartSongPauseDivWidth1 = restartDivWidth*1/16;
  float restartSongPauseDivHeight1 = restartDivHeight*1/4;
  float restartSongPauseDivX2 = restartDivX+restartDivWidth*35/64;
  float restartSongPauseDivY2 = restartDivY+restartDivHeight*3/8;
  float restartSongPauseDivWidth2 = restartDivWidth*1/16;
  float restartSongPauseDivHeight2 = restartDivHeight*1/4;
  //

  float skipSongTriangleOneDivX1 = nextsongDivX+nextsongDivWidth*1/4;
  float skipSongTriangleOneDivY1 = nextsongDivY+nextsongDivHeight*1/4;
  float skipSongTriangleOneDivX2 = nextsongDivX+nextsongDivWidth*1/4;
  float skipSongTriangleOneDivY2 = nextsongDivY+nextsongDivHeight*3/4;
  float skipSongTriangleOneDivX3 = nextsongDivX+nextsongDivWidth*1/2;
  float skipSongTriangleOneDivY3 = nextsongDivY+nextsongDivHeight*1/2;
  float skipSongTriangleTwoDivX1 = nextsongDivX+nextsongDivWidth*1/2;
  float skipSongTriangleTwoDivY1 = nextsongDivY+nextsongDivHeight*1/4;
  float skipSongTriangleTwoDivX2 = nextsongDivX+nextsongDivWidth*1/2;
  float skipSongTriangleTwoDivY2 = nextsongDivY+nextsongDivHeight*3/4;
  float skipSongTriangleTwoDivX3 = nextsongDivX+nextsongDivWidth*3/4;
  float skipSongTriangleTwoDivY3 = nextsongDivY+nextsongDivHeight*1/2;
  //

  //LOOP ONCE
  float loopOnceFirstArrowLineOneDivX1 = looponceDivX+looponceDivWidth*3/16;
  float loopOnceFirstArrowLineOneDivY1 = looponceDivY+looponceDivHeight*1/4;
  float loopOnceFirstArrowLineOneDivX2 = looponceDivX+looponceDivWidth*3/16;
  float loopOnceFirstArrowLineOneDivY2 = looponceDivY+looponceDivHeight*1/2;
  float loopOnceFirstArrowLineTwoDivX1 = looponceDivX+looponceDivWidth*1/4;
  float loopOnceFirstArrowLineTwoDivY1 = loopOnceFirstArrowLineOneDivY1+(looponceDivHeight*1/16 );
  float loopOnceFirstArrowLineTwoDivX2 = looponceDivX+looponceDivWidth*1/4;
  float loopOnceFirstArrowLineTwoDivY2 = looponceDivY+looponceDivHeight*1/2;
  float loopOnceFirstArrowLineThreeDivX1 = loopOnceFirstArrowLineOneDivX2;
  float loopOnceFirstArrowLineThreeDivY1 = loopOnceFirstArrowLineOneDivY2;
  float loopOnceFirstArrowLineThreeDivX2 = loopOnceFirstArrowLineTwoDivX2;
  float loopOnceFirstArrowLineThreeDivY2 = loopOnceFirstArrowLineTwoDivY2;
  float loopOnceFirstArrowLineFourDivX1 = loopOnceFirstArrowLineOneDivX1;
  float loopOnceFirstArrowLineFourDivY1 = loopOnceFirstArrowLineOneDivY1;
  float loopOnceFirstArrowLineFourDivX2 = looponceDivX+looponceDivWidth*5/8;
  float loopOnceFirstArrowLineFourDivY2 = loopOnceFirstArrowLineOneDivY1;
  float loopOnceFirstArrowLineFiveDivX1 = loopOnceFirstArrowLineTwoDivX1;
  float loopOnceFirstArrowLineFiveDivY1 = loopOnceFirstArrowLineFourDivY1+(looponceDivHeight*1/16 );
  float loopOnceFirstArrowLineFiveDivX2 = looponceDivX+looponceDivWidth*5/8;
  float loopOnceFirstArrowLineFiveDivY2 = loopOnceFirstArrowLineFourDivY1+(looponceDivHeight*1/16 );
  float loopOnceFirstArrowTriangleDivX1 = loopOnceFirstArrowLineFiveDivX2;
  float loopOnceFirstArrowTriangleDivY1 = looponceDivHeight*5/32+looponceDivY;
  float loopOnceFirstArrowTriangleDivX2 = loopOnceFirstArrowLineFiveDivX2;
  float loopOnceFirstArrowTriangleDivY2 = looponceDivHeight*13/32+looponceDivY;
  float loopOnceFirstArrowTriangleDivX3 = loopOnceFirstArrowLineFiveDivX2+(looponceDivWidth*3/16 );
  float loopOnceFirstArrowTriangleDivY3 = (loopOnceFirstArrowLineFiveDivY1+loopOnceFirstArrowLineFourDivY1)*1/2;

  float loopOnceSecondArrowLineOneDivX1 = looponceDivX+looponceDivWidth*3/4+looponceDivWidth*1/16;
  float loopOnceSecondArrowLineOneDivY1 = looponceDivY+looponceDivHeight*1/2;
  float loopOnceSecondArrowLineOneDivX2 = looponceDivX+looponceDivWidth*3/4;
  float loopOnceSecondArrowLineOneDivY2 = looponceDivY+looponceDivHeight*1/2;
  float loopOnceSecondArrowLineTwoDivX1 = looponceDivX+looponceDivWidth*3/4+looponceDivWidth*1/16;
  float loopOnceSecondArrowLineTwoDivY1 = looponceDivY+looponceDivHeight*1/2;
  float loopOnceSecondArrowLineTwoDivX2 = looponceDivX+looponceDivWidth*3/4+looponceDivWidth*1/16;
  float loopOnceSecondArrowLineTwoDivY2 = looponceDivY+looponceDivHeight*3/4;
  float loopOnceSecondArrowLineThreeDivX1 = looponceDivX+looponceDivWidth*3/4;
  float loopOnceSecondArrowLineThreeDivY1 = looponceDivY+looponceDivHeight*1/2;
  float loopOnceSecondArrowLineThreeDivX2 = looponceDivX+looponceDivWidth*3/4;
  float loopOnceSecondArrowLineThreeDivY2 = looponceDivY+looponceDivHeight*11/16;
  float loopOnceSecondArrowLineFourDivX1 = looponceDivX+looponceDivWidth*3/8;
  float loopOnceSecondArrowLineFourDivY1 = looponceDivY+looponceDivHeight*11/16;
  float loopOnceSecondArrowLineFourDivX2 = loopOnceSecondArrowLineThreeDivX2;
  float loopOnceSecondArrowLineFourDivY2 = looponceDivY+looponceDivHeight*11/16;
  float loopOnceSecondArrowLineFiveDivX1 = looponceDivX+looponceDivWidth*3/8;
  float loopOnceSecondArrowLineFiveDivY1 = looponceDivY+looponceDivHeight*3/4;
  float loopOnceSecondArrowLineFiveDivX2 = looponceDivX+looponceDivWidth*3/4+looponceDivWidth*1/16;
  float loopOnceSecondArrowLineFiveDivY2 = looponceDivY+looponceDivHeight*3/4;
  float loopOnceSecondArrowTriangleDivX1 = loopOnceFirstArrowLineOneDivX2;
  float loopOnceSecondArrowTriangleDivY1 = (loopOnceSecondArrowLineFiveDivY1+loopOnceSecondArrowLineFourDivY1)*1/2;
  float loopOnceSecondArrowTriangleDivX2 = looponceDivX+looponceDivWidth*3/8;
  float loopOnceSecondArrowTriangleDivY2 = looponceDivHeight*19/32+looponceDivY;
  float loopOnceSecondArrowTriangleDivX3 = looponceDivX+looponceDivWidth*3/8;
  float loopOnceSecondArrowTriangleDivY3 = looponceDivHeight*27/32+looponceDivY;

  float loopOnceRectOneDivX = looponceDivX+looponceDivWidth*3/16;
  float loopOnceRectOneDivY = looponceDivY+looponceDivHeight*1/4;
  float loopOnceRectOneDivWidth = looponceDivWidth*10/16;
  float loopOnceRectOneDivHeight = looponceDivHeight*1/2;
  float loopOnceRectTwoDivX = looponceDivX+looponceDivWidth*1/4;
  float loopOnceRectTwoDivY = loopOnceFirstArrowLineOneDivY1+(looponceDivHeight*1/16 );
  float loopOnceRectTwoDivWidth = loopforeverDivWidth*8/16;
  float loopOnceRectTwoDivHeight = loopforeverDivHeight*6/16;
  float loopOnceRectThreeDivX = loopOnceFirstArrowLineOneDivX2;
  float loopOnceRectThreeDivY = loopOnceFirstArrowLineOneDivY2;
  float loopOnceRectThreeDivWidth = looponceDivWidth*3/16;
  float loopOnceRectThreeDivHeight = looponceDivHeight*1/4;
  float loopOnceRectFourDivX = looponceDivX+looponceDivWidth*5/8;
  float loopOnceRectFourDivY = loopOnceFirstArrowLineOneDivY1;
  float loopOnceRectFourDivWidth = looponceDivWidth*3/16;
  float loopOnceRectFourDivHeight = looponceDivHeight*1/4;
  //

  //LOOP FOREVER
  float loopForeverFirstArrowLineOneDivX1 = loopforeverDivX+loopforeverDivWidth*3/16;
  float loopForeverFirstArrowLineOneDivY1 = loopforeverDivY+loopforeverDivHeight*1/4;
  float loopForeverFirstArrowLineOneDivX2 = loopforeverDivX+loopforeverDivWidth*3/16;
  float loopForeverFirstArrowLineOneDivY2 = loopforeverDivY+loopforeverDivHeight*1/2;
  float loopForeverFirstArrowLineTwoDivX1 = loopforeverDivX+loopforeverDivWidth*1/4;
  float loopForeverFirstArrowLineTwoDivY1 = loopForeverFirstArrowLineOneDivY1+(loopforeverDivHeight*1/16 );
  float loopForeverFirstArrowLineTwoDivX2 = loopforeverDivX+loopforeverDivWidth*1/4;
  float loopForeverFirstArrowLineTwoDivY2 = loopforeverDivY+loopforeverDivHeight*1/2;
  float loopForeverFirstArrowLineThreeDivX1 = loopForeverFirstArrowLineOneDivX2;
  float loopForeverFirstArrowLineThreeDivY1 = loopForeverFirstArrowLineOneDivY2;
  float loopForeverFirstArrowLineThreeDivX2 = loopForeverFirstArrowLineTwoDivX2;
  float loopForeverFirstArrowLineThreeDivY2 = loopForeverFirstArrowLineTwoDivY2;
  float loopForeverFirstArrowLineFourDivX1 = loopForeverFirstArrowLineOneDivX1;
  float loopForeverFirstArrowLineFourDivY1 = loopForeverFirstArrowLineOneDivY1;
  float loopForeverFirstArrowLineFourDivX2 = loopforeverDivX+loopforeverDivWidth*5/8;
  float loopForeverFirstArrowLineFourDivY2 = loopForeverFirstArrowLineOneDivY1;
  float loopForeverFirstArrowLineFiveDivX1 = loopForeverFirstArrowLineTwoDivX1;
  float loopForeverFirstArrowLineFiveDivY1 = loopForeverFirstArrowLineFourDivY1+(loopforeverDivHeight*1/16 );
  float loopForeverFirstArrowLineFiveDivX2 = loopforeverDivX+loopforeverDivWidth*5/8;
  float loopForeverFirstArrowLineFiveDivY2 = loopForeverFirstArrowLineFourDivY1+(loopforeverDivHeight*1/16 );
  float loopForeverFirstArrowTriangleDivX1 = loopForeverFirstArrowLineFiveDivX2;
  float loopForeverFirstArrowTriangleDivY1 = loopforeverDivHeight*5/32+loopforeverDivY;
  float loopForeverFirstArrowTriangleDivX2 = loopForeverFirstArrowLineFiveDivX2;
  float loopForeverFirstArrowTriangleDivY2 = loopforeverDivHeight*13/32+loopforeverDivY;
  float loopForeverFirstArrowTriangleDivX3 = loopForeverFirstArrowLineFiveDivX2+(loopforeverDivWidth*3/16 );
  float loopForeverFirstArrowTriangleDivY3 = (loopForeverFirstArrowLineFiveDivY1+loopForeverFirstArrowLineFourDivY1)*1/2;

  float loopForeverSecondArrowLineOneDivX1 = loopforeverDivX+loopforeverDivWidth*3/4+loopforeverDivWidth*1/16;
  float loopForeverSecondArrowLineOneDivY1 = loopforeverDivY+loopforeverDivHeight*1/2;
  float loopForeverSecondArrowLineOneDivX2 = loopforeverDivX+loopforeverDivWidth*3/4;
  float loopForeverSecondArrowLineOneDivY2 = loopforeverDivY+loopforeverDivHeight*1/2;
  float loopForeverSecondArrowLineTwoDivX1 = loopforeverDivX+loopforeverDivWidth*3/4+loopforeverDivWidth*1/16;
  float loopForeverSecondArrowLineTwoDivY1 = loopforeverDivY+loopforeverDivHeight*1/2;
  float loopForeverSecondArrowLineTwoDivX2 = loopforeverDivX+loopforeverDivWidth*3/4+loopforeverDivWidth*1/16;
  float loopForeverSecondArrowLineTwoDivY2 = loopforeverDivY+loopforeverDivHeight*3/4;
  float loopForeverSecondArrowLineThreeDivX1 = loopforeverDivX+loopforeverDivWidth*3/4;
  float loopForeverSecondArrowLineThreeDivY1 = loopforeverDivY+loopforeverDivHeight*1/2;
  float loopForeverSecondArrowLineThreeDivX2 = loopforeverDivX+loopforeverDivWidth*3/4;
  float loopForeverSecondArrowLineThreeDivY2 = loopforeverDivY+loopforeverDivHeight*11/16;
  float loopForeverSecondArrowLineFourDivX1 = loopforeverDivX+loopforeverDivWidth*3/8;
  float loopForeverSecondArrowLineFourDivY1 = loopforeverDivY+loopforeverDivHeight*11/16;
  float loopForeverSecondArrowLineFourDivX2 = loopForeverSecondArrowLineThreeDivX2;
  float loopForeverSecondArrowLineFourDivY2 = loopforeverDivY+loopforeverDivHeight*11/16;
  float loopForeverSecondArrowLineFiveDivX1 = loopforeverDivX+loopforeverDivWidth*3/8;
  float loopForeverSecondArrowLineFiveDivY1 = loopforeverDivY+loopforeverDivHeight*3/4;
  float loopForeverSecondArrowLineFiveDivX2 = loopforeverDivX+loopforeverDivWidth*3/4+loopforeverDivWidth*1/16;
  float loopForeverSecondArrowLineFiveDivY2 = loopforeverDivY+loopforeverDivHeight*3/4;
  float loopForeverSecondArrowTriangleDivX1 = loopForeverFirstArrowLineOneDivX2;
  float loopForeverSecondArrowTriangleDivY1 = (loopForeverSecondArrowLineFiveDivY1+loopForeverSecondArrowLineFourDivY1)*1/2;
  float loopForeverSecondArrowTriangleDivX2 = loopforeverDivX+loopforeverDivWidth*3/8;
  float loopForeverSecondArrowTriangleDivY2 = loopforeverDivHeight*19/32+loopforeverDivY;
  float loopForeverSecondArrowTriangleDivX3 = loopforeverDivX+loopforeverDivWidth*3/8;
  float loopForeverSecondArrowTriangleDivY3 = loopforeverDivHeight*27/32+loopforeverDivY;

  float loopForeverRectOneDivX = loopforeverDivX+loopforeverDivWidth*3/16;
  float loopForeverRectTwoDivX = loopforeverDivX+loopforeverDivWidth*1/4;
  float loopForeverRectThreeDivX = loopForeverFirstArrowLineOneDivX2;
  float loopForeverRectFourDivX = loopforeverDivX+loopforeverDivWidth*5/8;

  //Stop Looping Button
  float stopLoopingFirstArrowLineOneDivX1 = stopLoopingDivX+stopLoopingDivWidth*3/16;
  float stopLoopingFirstArrowLineOneDivY1 = stopLoopingDivY+stopLoopingDivHeight*1/4;
  float stopLoopingFirstArrowLineOneDivX2 = stopLoopingDivX+stopLoopingDivWidth*3/16;
  float stopLoopingFirstArrowLineOneDivY2 = stopLoopingDivY+stopLoopingDivHeight*1/2;
  float stopLoopingFirstArrowLineTwoDivX1 = stopLoopingDivX+stopLoopingDivWidth*1/4;
  float stopLoopingFirstArrowLineTwoDivY1 = stopLoopingFirstArrowLineOneDivY1+(stopLoopingDivHeight*1/16 );
  float stopLoopingFirstArrowLineTwoDivX2 = stopLoopingDivX+stopLoopingDivWidth*1/4;
  float stopLoopingFirstArrowLineTwoDivY2 = stopLoopingDivY+stopLoopingDivHeight*1/2;
  float stopLoopingFirstArrowLineThreeDivX1 = stopLoopingFirstArrowLineOneDivX2;
  float stopLoopingFirstArrowLineThreeDivY1 = stopLoopingFirstArrowLineOneDivY2;
  float stopLoopingFirstArrowLineThreeDivX2 = stopLoopingFirstArrowLineTwoDivX2;
  float stopLoopingFirstArrowLineThreeDivY2 = stopLoopingFirstArrowLineTwoDivY2;
  float stopLoopingFirstArrowLineFourDivX1 = stopLoopingFirstArrowLineOneDivX1;
  float stopLoopingFirstArrowLineFourDivY1 = stopLoopingFirstArrowLineOneDivY1;
  float stopLoopingFirstArrowLineFourDivX2 = stopLoopingDivX+stopLoopingDivWidth*5/8;
  float stopLoopingFirstArrowLineFourDivY2 = stopLoopingFirstArrowLineOneDivY1;
  float stopLoopingFirstArrowLineFiveDivX1 = stopLoopingFirstArrowLineTwoDivX1;
  float stopLoopingFirstArrowLineFiveDivY1 = stopLoopingFirstArrowLineFourDivY1+(stopLoopingDivHeight*1/16 );
  float stopLoopingFirstArrowLineFiveDivX2 = stopLoopingDivX+stopLoopingDivWidth*5/8;
  float stopLoopingFirstArrowLineFiveDivY2 = stopLoopingFirstArrowLineFourDivY1+(stopLoopingDivHeight*1/16 );
  float stopLoopingFirstArrowTriangleDivX1 = stopLoopingFirstArrowLineFiveDivX2;
  float stopLoopingFirstArrowTriangleDivY1 = stopLoopingDivHeight*5/32+stopLoopingDivY;
  float stopLoopingFirstArrowTriangleDivX2 = stopLoopingFirstArrowLineFiveDivX2;
  float stopLoopingFirstArrowTriangleDivY2 = stopLoopingDivHeight*13/32+stopLoopingDivY;
  float stopLoopingFirstArrowTriangleDivX3 = stopLoopingFirstArrowLineFiveDivX2+(stopLoopingDivWidth*3/16 );
  float stopLoopingFirstArrowTriangleDivY3 = (stopLoopingFirstArrowLineFiveDivY1+stopLoopingFirstArrowLineFourDivY1)*1/2;

  float stopLoopingSecondArrowLineOneDivX1 = stopLoopingDivX+stopLoopingDivWidth*3/4+stopLoopingDivWidth*1/16;
  float stopLoopingSecondArrowLineOneDivY1 = stopLoopingDivY+stopLoopingDivHeight*1/2;
  float stopLoopingSecondArrowLineOneDivX2 = stopLoopingDivX+stopLoopingDivWidth*3/4;
  float stopLoopingSecondArrowLineOneDivY2 = stopLoopingDivY+stopLoopingDivHeight*1/2;
  float stopLoopingSecondArrowLineTwoDivX1 = stopLoopingDivX+stopLoopingDivWidth*3/4+stopLoopingDivWidth*1/16;
  float stopLoopingSecondArrowLineTwoDivY1 = stopLoopingDivY+stopLoopingDivHeight*1/2;
  float stopLoopingSecondArrowLineTwoDivX2 = stopLoopingDivX+stopLoopingDivWidth*3/4+stopLoopingDivWidth*1/16;
  float stopLoopingSecondArrowLineTwoDivY2 = stopLoopingDivY+stopLoopingDivHeight*3/4;
  float stopLoopingSecondArrowLineThreeDivX1 = stopLoopingDivX+stopLoopingDivWidth*3/4;
  float stopLoopingSecondArrowLineThreeDivY1 = stopLoopingDivY+stopLoopingDivHeight*1/2;
  float stopLoopingSecondArrowLineThreeDivX2 = stopLoopingDivX+stopLoopingDivWidth*3/4;
  float stopLoopingSecondArrowLineThreeDivY2 = stopLoopingDivY+stopLoopingDivHeight*11/16;
  float stopLoopingSecondArrowLineFourDivX1 = stopLoopingDivX+stopLoopingDivWidth*3/8;
  float stopLoopingSecondArrowLineFourDivY1 = stopLoopingDivY+stopLoopingDivHeight*11/16;
  float stopLoopingSecondArrowLineFourDivX2 = stopLoopingSecondArrowLineThreeDivX2;
  float stopLoopingSecondArrowLineFourDivY2 = stopLoopingDivY+stopLoopingDivHeight*11/16;
  float stopLoopingSecondArrowLineFiveDivX1 = stopLoopingDivX+stopLoopingDivWidth*3/8;
  float stopLoopingSecondArrowLineFiveDivY1 = stopLoopingDivY+stopLoopingDivHeight*3/4;
  float stopLoopingSecondArrowLineFiveDivX2 = stopLoopingDivX+stopLoopingDivWidth*3/4+stopLoopingDivWidth*1/16;
  float stopLoopingSecondArrowLineFiveDivY2 = stopLoopingDivY+stopLoopingDivHeight*3/4;
  float stopLoopingSecondArrowTriangleDivX1 = stopLoopingFirstArrowLineOneDivX2;
  float stopLoopingSecondArrowTriangleDivY1 = (stopLoopingSecondArrowLineFiveDivY1+stopLoopingSecondArrowLineFourDivY1)*1/2;
  float stopLoopingSecondArrowTriangleDivX2 = stopLoopingDivX+stopLoopingDivWidth*3/8;
  float stopLoopingSecondArrowTriangleDivY2 = stopLoopingDivHeight*19/32+stopLoopingDivY;
  float stopLoopingSecondArrowTriangleDivX3 = stopLoopingDivX+stopLoopingDivWidth*3/8;
  float stopLoopingSecondArrowTriangleDivY3 = stopLoopingDivHeight*27/32+stopLoopingDivY;

  float stopLoopingCrossLine1X1 = stopLoopingDivX+stopLoopingDivWidth*1/16;
  float stopLoopingCrossLine1Y1 = stopLoopingDivY+stopLoopingDivHeight*1/16;
  float stopLoopingCrossLine1X2 = stopLoopingDivX+stopLoopingDivWidth*15/16;
  float stopLoopingCrossLine1Y2 = stopLoopingDivY+stopLoopingDivHeight*15/16;

  float stopLoopingRectOneDivX = stopLoopingDivX+stopLoopingDivWidth*3/16;
  float stopLoopingRectTwoDivX = stopLoopingDivX+stopLoopingDivWidth*1/4;
  float stopLoopingRectThreeDivX = stopLoopingFirstArrowLineOneDivX2;
  float stopLoopingRectFourDivX = stopLoopingDivX+stopLoopingDivWidth*5/8;

  float playFinalCountdownDivX1 = playnextfinalcountdownDivX + playnextfinalcountdownDivWidth*1/4;
  float playFinalCountdownDivY1 = playnextfinalcountdownDivY + playnextfinalcountdownDivHeight*1/4;
  float playFinalCountdownDivX2 = playnextfinalcountdownDivX + playnextfinalcountdownDivWidth*3/4;
  float playFinalCountdownDivY2 = playnextfinalcountdownDivY + playnextfinalcountdownDivHeight*1/2;
  float playFinalCountdownDivX3 = playnextfinalcountdownDivX + playnextfinalcountdownDivWidth*1/4;
  float playFinalCountdownDivY3 = playnextfinalcountdownDivY + playnextfinalcountdownDivHeight*3/4;
  //
  float playInTheEndDivX1 = playnextintheendDivX + playnextintheendDivWidth*1/4;
  float playInTheEndDivY1 = playnextintheendDivY + playnextintheendDivHeight*1/4;
  float playInTheEndDivX2 = playnextintheendDivX + playnextintheendDivWidth*3/4;
  float playInTheEndDivY2 = playnextintheendDivY + playnextintheendDivHeight*1/2;
  float playInTheEndDivX3 = playnextintheendDivX + playnextintheendDivWidth*1/4;
  float playInTheEndDivY3 = playnextintheendDivY + playnextintheendDivHeight*3/4;
  //
  float playJoinUsForABiteDivX1 = playnextjoinusforabiteDivX + playnextjoinusforabiteDivWidth*1/4;
  float playJoinUsForABiteDivY1 = playnextjoinusforabiteDivY + playnextjoinusforabiteDivHeight*1/4;
  float playJoinUsForABiteDivX2 = playnextjoinusforabiteDivX + playnextjoinusforabiteDivWidth*3/4;
  float playJoinUsForABiteDivY2 = playnextjoinusforabiteDivY + playnextjoinusforabiteDivHeight*1/2;
  float playJoinUsForABiteDivX3 = playnextjoinusforabiteDivX + playnextjoinusforabiteDivWidth*1/4;
  float playJoinUsForABiteDivY3 = playnextjoinusforabiteDivY + playnextjoinusforabiteDivHeight*3/4;

  //=====================AUTO PLAY======================//

  float toggleCircleInset = autoplayDivWidth*5/32;

  //Outer Capsule
  float toggleCapsuleDivX = autoplayDivX + autoplayDivWidth*1/8;
  float toggleCapsuleDivY = autoplayDivY + autoplayDivHeight*5/16;
  float toggleCapsuleDivWidth = autoplayDivWidth*3/4;
  float toggleCapsuleDivHeight = autoplayDivHeight*3/8;
  float toggleCapsuleCornerDiv = autoplayDivHeight*3/16;

  //Left Circle
  float toggleCircleLeftDivX = toggleCapsuleDivX + toggleCircleInset;
  float toggleCircleLeftDivY = autoplayDivY + autoplayDivHeight*1/2;
  float toggleCircleLeftDivDiameter = autoplayDivHeight*4/8;

  //Right Circle
  float toggleCircleRightDivX = toggleCapsuleDivX + toggleCapsuleDivWidth - toggleCircleInset;
  float toggleCircleRightDivY = autoplayDivY + autoplayDivHeight*1/2;
  float toggleCircleRightDivDiameter = autoplayDivHeight*4/8;

  //
  // PAUSE SYMBOL
  //
  float togglePauseLeftDivX = toggleCircleLeftDivX - autoplayDivWidth*1/16;
  float togglePauseLeftDivY = autoplayDivY + autoplayDivHeight*13/32;
  float togglePauseLeftDivWidth = autoplayDivWidth*1/24;
  float togglePauseLeftDivHeight = autoplayDivHeight*3/16;

  float togglePauseRightDivX = toggleCircleLeftDivX + autoplayDivWidth*1/32;
  float togglePauseRightDivY = autoplayDivY + autoplayDivHeight*13/32;
  float togglePauseRightDivWidth = autoplayDivWidth*1/24;
  float togglePauseRightDivHeight = autoplayDivHeight*3/16;

  //
  // PLAY SYMBOL
  //
  float togglePlayTriangleDivX1 = toggleCircleRightDivX - autoplayDivWidth*1/24;
  float togglePlayTriangleDivY1 = autoplayDivY + autoplayDivHeight*13/32;

  float togglePlayTriangleDivX2 = toggleCircleRightDivX - autoplayDivWidth*1/24;
  float togglePlayTriangleDivY2 = autoplayDivY + autoplayDivHeight*19/32;

  float togglePlayTriangleDivX3 = toggleCircleRightDivX + autoplayDivWidth*1/12;
  float togglePlayTriangleDivY3 = autoplayDivY + autoplayDivHeight*1/2;



  if ( autoPlay == false ) {
    fill(buttonInk);
    rect(autoplayDivX, autoplayDivY, autoplayDivWidth, autoplayDivHeight);
    fill(resetInk);
    rect(toggleCapsuleDivX, toggleCapsuleDivY, toggleCapsuleDivWidth, toggleCapsuleDivHeight, toggleCapsuleCornerDiv);
    circle(toggleCircleLeftDivX, toggleCircleLeftDivY, toggleCircleLeftDivDiameter);

    rect(togglePauseLeftDivX, togglePauseLeftDivY, togglePauseLeftDivWidth, togglePauseLeftDivHeight, autoplayDivWidth*1/64);
    rect(togglePauseRightDivX, togglePauseRightDivY, togglePauseRightDivWidth, togglePauseRightDivHeight, autoplayDivWidth*1/64);
  } else {
    fill(buttonInk);
    rect(autoplayDivX, autoplayDivY, autoplayDivWidth, autoplayDivHeight);
    fill(resetInk);
    rect(toggleCapsuleDivX, toggleCapsuleDivY, toggleCapsuleDivWidth, toggleCapsuleDivHeight, toggleCapsuleCornerDiv);
    circle(toggleCircleRightDivX, toggleCircleRightDivY, toggleCircleRightDivDiameter);

    triangle(
      togglePlayTriangleDivX1,
      togglePlayTriangleDivY1,
      togglePlayTriangleDivX2,
      togglePlayTriangleDivY2,
      togglePlayTriangleDivX3,
      togglePlayTriangleDivY3
      );
  }
  //PLAY BUTTON

  triangle( playSymbolDivX1, playSymbolDivY1, playSymbolDivX2, playSymbolDivY2, playSymbolDivX3, playSymbolDivY3 );


  //PAUSE BUTTON

  rect( pauseSymbolDivX1, pauseSymbolDivY1, pauseSymbolDivWidth1, pauseSymbolDivHeight1 );
  rect( pauseSymbolDivX2, pauseSymbolDivY2, pauseSymbolDivWidth2, pauseSymbolDivHeight2 );


  //SKIP FIFTEEN SECONDS BUTTON

  arc( skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth, skipFifteenDivHeight, skipFifteenDivStart, skipFifteenDivStop );
  arc( skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth2, skipFifteenDivHeight2, skipFifteenDivStart, skipFifteenDivStop );
  line( skipFifteenLineDivX1, skipFifteenLineDivY1, skipFifteenLineDivX2, skipFifteenLineDivY2 );
  fill( buttonInk );
  stroke( buttonInk );
  arc( skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth-8, skipFifteenDivHeight-8, skipFifteenDivStart, PI*4 );
  fill(resetInk );
  stroke( blackInk );
  triangle( skipFifteenTriangleDivX1, skipFifteenTriangleDivY1, skipFifteenTriangleDivX2, skipFifteenTriangleDivY2, skipFifteenTriangleDivX3, skipFifteenTriangleDivY3 );


  //REWIND TEN SECONDS BUTTON

  arc( rewindTenDivX, rewindTenDivY, rewindTenDivWidth, rewindTenDivHeight, rewindTenDivStart, rewindTenDivStop );
  arc( rewindTenDivX, rewindTenDivY, rewindTenDivWidth2, rewindTenDivHeight2, rewindTenDivStart, rewindTenDivStop );
  fill( buttonInk );
  stroke( buttonInk );
  arc( rewindTenDivX, rewindTenDivY, rewindTenDivWidth-8, rewindTenDivHeight-8, rewindTenDivStart, PI*4 );
  fill( resetInk );
  stroke( blackInk );
  line( rewindTenLineDivX1, rewindTenLineDivY1, rewindTenLineDivX2, rewindTenLineDivY2 );
  triangle( rewindTenTriangleDivX1, rewindTenTriangleDivY1, rewindTenTriangleDivX2, rewindTenTriangleDivY2, rewindTenTriangleDivX3, rewindTenTriangleDivY3 );


  //RESTART SONG BUTTON

  arc( restartSongDivX, restartSongDivY, restartSongDivWidth, restartSongDivHeight, restartSongDivStart, restartSongDivStop );
  arc( restartSongDivX, restartSongDivY, restartSongDivWidth2, restartSongDivHeight2, restartSongDivStart, restartSongDivStop );
  line( restartSongLineDivX1, restartSongLineDivY1, restartSongLineDivX2, restartSongLineDivY2 );
  fill(buttonInk );
  stroke(buttonInk );
  arc( restartSongDivX, restartSongDivY, restartSongDivWidth-8, restartSongDivHeight-8, restartSongDivStart, PI*4 );
  fill(resetInk );
  stroke(blackInk );
  triangle( restartSongTriangleDivX1, restartSongTriangleDivY1, restartSongTriangleDivX2, restartSongTriangleDivY2, restartSongTriangleDivX3, restartSongTriangleDivY3 );
  rect( restartSongPauseDivX1, restartSongPauseDivY1, restartSongPauseDivWidth1, restartSongPauseDivHeight1 );
  rect( restartSongPauseDivX2, restartSongPauseDivY2, restartSongPauseDivWidth2, restartSongPauseDivHeight2 );



  //SKIP SONG BUTTON
  triangle( skipSongTriangleOneDivX1, skipSongTriangleOneDivY1, skipSongTriangleOneDivX2, skipSongTriangleOneDivY2, skipSongTriangleOneDivX3, skipSongTriangleOneDivY3 );
  triangle( skipSongTriangleTwoDivX1, skipSongTriangleTwoDivY1, skipSongTriangleTwoDivX2, skipSongTriangleTwoDivY2, skipSongTriangleTwoDivX3, skipSongTriangleTwoDivY3 );


  //LOOP ONCE BUTTON
  stroke(buttonInk );
  rect(loopOnceRectOneDivX, loopOnceRectOneDivY, loopOnceRectOneDivWidth, loopOnceRectOneDivHeight );
  fill(buttonInk );
  rect(loopOnceRectThreeDivX, loopOnceRectThreeDivY, loopOnceRectThreeDivWidth, loopOnceRectThreeDivHeight );
  rect(loopOnceRectFourDivX, loopOnceRectFourDivY, loopOnceRectFourDivWidth, loopOnceRectFourDivHeight );
  rect(loopOnceRectTwoDivX, loopOnceRectTwoDivY, loopOnceRectTwoDivWidth, loopOnceRectTwoDivHeight );
  fill(resetInk );
  stroke(blackInk );
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

  stroke( buttonInk );
  rect( loopForeverRectOneDivX, loopOnceRectOneDivY, loopOnceRectOneDivWidth, loopOnceRectOneDivHeight );
  fill( buttonInk );
  rect( loopForeverRectThreeDivX, loopOnceRectThreeDivY, loopOnceRectThreeDivWidth, loopOnceRectThreeDivHeight );
  rect( loopForeverRectFourDivX, loopOnceRectFourDivY, loopOnceRectFourDivWidth, loopOnceRectFourDivHeight );
  rect( loopForeverRectTwoDivX, loopOnceRectTwoDivY, loopOnceRectTwoDivWidth, loopOnceRectTwoDivHeight );
  fill( resetInk );
  stroke( blackInk );
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

  stroke(buttonInk );
  rect(stopLoopingRectOneDivX, loopOnceRectOneDivY, loopOnceRectOneDivWidth, loopOnceRectOneDivHeight );
  fill(buttonInk );
  rect(stopLoopingRectThreeDivX, loopOnceRectThreeDivY, loopOnceRectThreeDivWidth, loopOnceRectThreeDivHeight );
  rect(stopLoopingRectFourDivX, loopOnceRectFourDivY, loopOnceRectFourDivWidth, loopOnceRectFourDivHeight );
  rect(stopLoopingRectTwoDivX, loopOnceRectTwoDivY, loopOnceRectTwoDivWidth, loopOnceRectTwoDivHeight );
  fill(resetInk );
  stroke(blackInk );

  line( stopLoopingFirstArrowLineOneDivX1, stopLoopingFirstArrowLineOneDivY1, stopLoopingFirstArrowLineOneDivX2, stopLoopingFirstArrowLineOneDivY2 );
  line( stopLoopingFirstArrowLineTwoDivX1, stopLoopingFirstArrowLineTwoDivY1, stopLoopingFirstArrowLineTwoDivX2, stopLoopingFirstArrowLineTwoDivY2 );
  line( stopLoopingFirstArrowLineThreeDivX1, stopLoopingFirstArrowLineThreeDivY1, stopLoopingFirstArrowLineThreeDivX2, stopLoopingFirstArrowLineThreeDivY2 );
  line( stopLoopingFirstArrowLineFourDivX1, stopLoopingFirstArrowLineFourDivY1, stopLoopingFirstArrowLineFourDivX2, stopLoopingFirstArrowLineFourDivY2 );
  line( stopLoopingFirstArrowLineFiveDivX1, stopLoopingFirstArrowLineFiveDivY1, stopLoopingFirstArrowLineFiveDivX2, stopLoopingFirstArrowLineFiveDivY2 );
  triangle( stopLoopingFirstArrowTriangleDivX1, stopLoopingFirstArrowTriangleDivY1, stopLoopingFirstArrowTriangleDivX2, stopLoopingFirstArrowTriangleDivY2, stopLoopingFirstArrowTriangleDivX3, stopLoopingFirstArrowTriangleDivY3 );

  line( stopLoopingSecondArrowLineOneDivX1, stopLoopingSecondArrowLineOneDivY1, stopLoopingSecondArrowLineOneDivX2, stopLoopingSecondArrowLineOneDivY2 );
  line( stopLoopingSecondArrowLineTwoDivX1, stopLoopingSecondArrowLineTwoDivY1, stopLoopingSecondArrowLineTwoDivX2, stopLoopingSecondArrowLineTwoDivY2 );
  line( stopLoopingSecondArrowLineThreeDivX1, stopLoopingSecondArrowLineThreeDivY1, stopLoopingSecondArrowLineThreeDivX2, stopLoopingSecondArrowLineThreeDivY2 );
  line( stopLoopingSecondArrowLineFourDivX1, stopLoopingSecondArrowLineFourDivY1, stopLoopingSecondArrowLineFourDivX2, stopLoopingSecondArrowLineFourDivY2 );
  line( stopLoopingSecondArrowLineFiveDivX1, stopLoopingSecondArrowLineFiveDivY1, stopLoopingSecondArrowLineFiveDivX2, stopLoopingSecondArrowLineFiveDivY2 );
  triangle( stopLoopingSecondArrowTriangleDivX1, stopLoopingSecondArrowTriangleDivY1, stopLoopingSecondArrowTriangleDivX2, stopLoopingSecondArrowTriangleDivY2, stopLoopingSecondArrowTriangleDivX3, stopLoopingSecondArrowTriangleDivY3 );


  line( stopLoopingCrossLine1X1, stopLoopingCrossLine1Y1, stopLoopingCrossLine1X2, stopLoopingCrossLine1Y2 );

  if (lyricsDiv == false && nextUpDiv == true) {
    fill(resetInk );
    triangle(playFinalCountdownDivX1, playFinalCountdownDivY1, playFinalCountdownDivX2, playFinalCountdownDivY2, playFinalCountdownDivX3, playFinalCountdownDivY3 );

    triangle(playInTheEndDivX1, playInTheEndDivY1, playInTheEndDivX2, playInTheEndDivY2, playInTheEndDivX3, playInTheEndDivY3 );

    triangle(playJoinUsForABiteDivX1, playJoinUsForABiteDivY1, playJoinUsForABiteDivX2, playJoinUsForABiteDivY2, playJoinUsForABiteDivX3, playJoinUsForABiteDivY3 );
    fill(resetInk );
  }
  int appWidth = displayWidth;

  font = createFont(PLBI, fontSize1 );

  String ten = "10";
  String fifteen = "15";

  //Aspect ratio for "10"
  float tenFontSize = 20;
  float tendivHeight = tenDivHeight;
  float tenAspectRatio = tenFontSize / tendivHeight;
  //Aspect ratio for "15" is the same as Aspect ratio for "10"


  //fontSize2 = xDivHeight*xAspectRatio * textAdjustment;
  fontSize3 = tenDivHeight*tenAspectRatio * textAdjustment;
  //fontSize4 = nextupDivHeight*nextUpAspectRatio * textAdjustment;
  //fontSize5 = theFinalCountdowndivHeight*theFinalCountdownAspectRatio * textAdjustment;
  //fontSize6 = artistsdivHeight*artistsAspectRatio * textAdjustment;

  textAlign(CENTER, TOP );

  fill(blackInk );

  textFont(font, fontSize3 );
  text(ten, tenDivX, tenDivY, tenDivWidth, tenDivHeight );

  textFont(font, fontSize3 );
  text(fifteen, fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight );


  if (isPaused) {
    fill(#0C4800 );
    rect( greenlightDivX, greenlightDivY, greenlightDivWidth, greenlightDivHeight );
    fill(redInk );
    rect( redlightDivX, redlightDivY, redlightDivWidth, redlightDivHeight );
    fill(resetInk );
  } else {
    fill(greenInk );
    rect( greenlightDivX, greenlightDivY, greenlightDivWidth, greenlightDivHeight );
    fill(#790103 );
    rect( redlightDivX, redlightDivY, redlightDivWidth, redlightDivHeight );
    fill(resetInk );
  }

  if (isMuted) {
    playList[currentSong].mute( );
  } else {
    playList[currentSong].unmute( );
  }
}

void mousePressed() {

  soundEffects[0].rewind( );
  soundEffects[0].play( );

  //PLAY BUTTON
  if ( mouseX > playDivX && mouseX < playDivX + playDivWidth && mouseY > playDivY && mouseY < playDivY + playDivHeight ) {
    playList[currentSong].play( );
    isPaused = false;
  }

  //PAUSE BUTTON
  if ( mouseX > pauseDivX && mouseX < pauseDivX + pauseDivWidth && mouseY > pauseDivY && mouseY < pauseDivY + pauseDivHeight) {
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause( );
      isPaused = true;
    }
  }
  //RESTART BUTTON
  if ( mouseX > restartDivX && mouseX < restartDivX + restartDivWidth && mouseY > restartDivY && mouseY < restartDivY + restartDivHeight ) {
    playList[currentSong].pause( );
    playList[currentSong].rewind( );
    isPaused = true;
  }

  //REWIND 10 BUTTON
  if ( mouseX > rewindtenDivX && mouseX < rewindtenDivX + rewindtenDivWidth && mouseY > rewindtenDivY && mouseY < rewindtenDivY + rewindtenDivHeight ) {
    playList[currentSong].skip(-10000);
  }

  //SKIP 15 BUTTON
  if ( mouseX > skipfifteenDivX && mouseX < skipfifteenDivX + skipfifteenDivWidth && mouseY > skipfifteenDivY && mouseY < skipfifteenDivY + skipfifteenDivHeight ) {
    playList[currentSong].skip(15000);
  }

  //NEXT SONG BUTTON
  if ( mouseX > nextsongDivX && mouseX < nextsongDivX + nextsongDivWidth && mouseY > nextsongDivY && mouseY < nextsongDivY + nextsongDivHeight ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause( );
      playList[currentSong].rewind( );
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play( );
    } else {
      //
      playList[currentSong].rewind( );
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play( );
    }
  }

  //LOOP ONCE BUTTON
  if ( mouseX > looponceDivX && mouseX < looponceDivX + looponceDivWidth && mouseY > looponceDivY && mouseY < looponceDivY + looponceDivHeight ) {
    playList[currentSong].loop(1);
  }

  //LOOP FOREVER BUTTON
  if ( mouseX > loopforeverDivX && mouseX < loopforeverDivX + loopforeverDivWidth && mouseY > loopforeverDivY && mouseY < loopforeverDivY + loopforeverDivHeight ) {
    playList[currentSong].loop( );
  }

  //STOP LOOPING BUTTON
  if ( mouseX > stopLoopingDivX && mouseX < stopLoopingDivX + stopLoopingDivWidth && mouseY > stopLoopingDivY && mouseY < stopLoopingDivY + stopLoopingDivHeight ) {
    playList[currentSong].pause( );
    playList[currentSong].play( );
  }

  //FINAL COUNTDOWN BUTTON
  if ( mouseX > playnextfinalcountdownDivX && mouseX < playnextfinalcountdownDivX + playnextfinalcountdownDivWidth && mouseY > playnextfinalcountdownDivY && mouseY < playnextfinalcountdownDivY + playnextfinalcountdownDivHeight ) {
    if (nextUpDiv==true) {
      playList[currentSong].pause( );
      playList[currentSong].rewind( );

      currentSong = 0;

      playList[currentSong].play( );
      isPaused = false;
    }
  }

  //IN THE END BUTTON
  if ( mouseX > playnextintheendDivX && mouseX < playnextintheendDivX + playnextintheendDivWidth && mouseY > playnextintheendDivY && mouseY < playnextintheendDivY + playnextintheendDivHeight) {
    if (nextUpDiv==true) {
      playList[currentSong].pause( );
      playList[currentSong].rewind( );

      currentSong = 1;

      playList[currentSong].play( );
      isPaused = false;
    }
  }

  //JOIN US FOR A BITE BUTTON
  if ( mouseX > playnextjoinusforabiteDivX && mouseX < playnextjoinusforabiteDivX + playnextjoinusforabiteDivWidth && mouseY > playnextjoinusforabiteDivY && mouseY < playnextjoinusforabiteDivY + playnextjoinusforabiteDivHeight ) {
    if (nextUpDiv==true) {
      playList[currentSong].pause( );
      playList[currentSong].rewind( );

      currentSong = 2;

      playList[currentSong].play( );
      isPaused = false;
    }
  }
  //AUTOPLAY BUTTON
  if ( mouseX > autoplayDivX && mouseX < autoplayDivX + autoplayDivWidth && mouseY > autoplayDivY && mouseY < autoplayDivY + autoplayDivHeight ) {
    if ( autoPlay == false ) {
      autoPlay = true;
      playList[currentSong].play();
      isPaused = false;
    } else {
      autoPlay = false;
    }
  }
  //X BUTTON
  if ( mouseX > boxforxDivX && mouseX < boxforxDivX + boxforxDivWidth && mouseY > boxforxDivY && mouseY < boxforxDivY + boxforxDivHeight ) {
    exit();
  }
  //TITLE BUTTON
  //lyricsDiv
  if ( mouseX > lyricsDivX && mouseX < lyricsDivX + lyricsDivWidth && mouseY > lyricsDivY && mouseY < lyricsDivY + lyricsDivHeight ) {
    lyricsDiv = true;
    nextUpDiv = false;
  }
  //NEXT UP BUTTON
  if ( mouseX > nextupDivX && mouseX < nextupDivX + nextupDivWidth && mouseY > nextupDivY && mouseY < nextupDivY + nextupDivHeight ) {
    lyricsDiv = false;
    nextUpDiv = true;
  }
}

void keyPressed() {
  /* Simple Play
   playList[currentSong].play( );
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
  //if ( key=='P' || key=='p' ) playList[currentSong].play( ); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) {//Simple Play, double tap possible
    playList[currentSong].play( );
    isPaused=false;
  }


  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  if ( key=='O' || key=='o' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause( );
      isPaused = true;
    } else {
      playList[currentSong].play( );
      isPaused = false;
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause( ); //Simple Stop, no double taps
  //
  if ( key=='S' || key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause( );
      playList[currentSong].rewind( );
      isPaused = true;
    } else {
      playList[currentSong].play( );
      isPaused = false;
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1 ); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop( ); // Loop Infinitely //Parameter: BLANK or -1
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
      playList[currentSong].unmute( );
      isMuted=false;
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute( );
      isMuted=true;
    }
  }
  if ( keyCode==ESC ) exit( ); // QUIT // UP
  if ( key=='Q' || key=='q' ) exit( ); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause( );
      playList[currentSong].rewind( );
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play( );
    } else {
      //
      playList[currentSong].rewind( );
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play( );
    }
  }
  if ( key=='B' || key=='b' ) { // PREVIOUS
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause( );
      playList[currentSong].rewind( );

      if ( currentSong==0 ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
      playList[currentSong].play( );
    } else {
      playList[currentSong].rewind( );

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
      playList[currentSong].pause( );
      playList[currentSong].rewind( );
    }
    currentSong = int(random(numberOfSongs) ); //random(0, numberOfSongs)}
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

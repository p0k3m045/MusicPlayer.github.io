fullScreen();

println(displayWidth, displayHeight);

int appWidth = displayWidth;
int appHeight = displayHeight;

int paperWidth = 279;
int paperHeight = 216;

//DIVs

float songtitleDivX = appWidth * 12.0 / paperWidth;
float songtitleDivY = appHeight * 14.0 / paperHeight;
float songtitleDivWidth = appWidth * 76.0 / paperWidth;
float songtitleDivHeight = appHeight * 16.0 / paperHeight;
rect(songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight);

float xDivX = appWidth * (paperWidth - 8.0) / paperWidth;
float xDivY = 0;
float xDivWidth = appWidth * 8.0 / paperWidth;
float xDivHeight = appHeight * 8.0 / paperHeight;
rect(xDivX, xDivY, xDivWidth, xDivHeight);

float nextupDivX = appWidth * 175.0 / paperWidth;
float nextupDivY = appHeight * 27.5 / paperHeight;
float nextupDivWidth = appWidth * 35.0 / paperWidth;
float nextupDivHeight = appHeight * 10.0 / paperHeight;
rect(nextupDivX, nextupDivY, nextupDivWidth, nextupDivHeight);

float lyricsDivX = appWidth * 225.0 / paperWidth;
float lyricsDivY = appHeight * 27.5 / paperHeight;
float lyricsDivWidth = appWidth * 35.0 / paperWidth;
float lyricsDivHeight = appHeight * 10.0 / paperHeight;
rect(lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight);

float nameofsongfinalcountdownDivX = appWidth * 187.0 / paperWidth;
float nameofsongfinalcountdownDivY = appHeight * 47.0 / paperHeight;
float nameofsongfinalcountdownDivWidth = appWidth * 50.0 / paperWidth;
float nameofsongfinalcountdownDivHeight = appHeight * 10.0 / paperHeight;
rect(nameofsongfinalcountdownDivX, nameofsongfinalcountdownDivY, nameofsongfinalcountdownDivWidth, nameofsongfinalcountdownDivHeight);

float nameofartisteuropeDivX = appWidth * 187.0 / paperWidth;
float nameofartisteuropeDivY = appHeight * 57.0 / paperHeight;
float nameofartisteuropeDivWidth = appWidth * 30.0 / paperWidth;
float nameofartisteuropeDivHeight = appHeight * 5.0 / paperHeight;
rect(nameofartisteuropeDivX, nameofartisteuropeDivY, nameofartisteuropeDivWidth, nameofartisteuropeDivHeight);

float nameofsongintheendDivX = appWidth * 187.0 / paperWidth;
float nameofsongintheendDivY = appHeight * 72.0 / paperHeight;
float nameofsongintheendDivWidth = appWidth * 50.0 / paperWidth;
float nameofsongintheendDivHeight = appHeight * 10.0 / paperHeight;
rect(nameofsongintheendDivX, nameofsongintheendDivY, nameofsongintheendDivWidth, nameofsongintheendDivHeight);

float nameofartistlinkinparkDivX = appWidth * 187.0 / paperWidth;
float nameofartistlinkinparkDivY = appHeight * 82.0 / paperHeight;
float nameofartistlinkinparkDivWidth = appWidth * 30.0 / paperWidth;
float nameofartistlinkinparkDivHeight = appHeight * 5.0 / paperHeight;
rect(nameofartistlinkinparkDivX, nameofartistlinkinparkDivY, nameofartistlinkinparkDivWidth, nameofartistlinkinparkDivHeight);

float nameofsongjoinusforabiteDivX = appWidth * 187.0 / paperWidth;
float nameofsongjoinusforabiteDivY = appHeight * 97.0 / paperHeight;
float nameofsongjoinusforabiteDivWidth = appWidth * 50.0 / paperWidth;
float nameofsongjoinusforabiteDivHeight = appHeight * 10.0 / paperHeight;
rect(nameofsongjoinusforabiteDivX, nameofsongjoinusforabiteDivY, nameofsongjoinusforabiteDivWidth, nameofsongjoinusforabiteDivHeight);

float nameofartistjtmusicDivX = appWidth * 187.0 / paperWidth;
float nameofartistjtmusicDivY = appHeight * 107.0 / paperHeight;
float nameofartistjtmusicDivWidth = appWidth * 30.0 / paperWidth;
float nameofartistjtmusicDivHeight = appHeight * 5.0 / paperHeight;
rect(nameofartistjtmusicDivX, nameofartistjtmusicDivY, nameofartistjtmusicDivWidth, nameofartistjtmusicDivHeight);

float tenDivX = appWidth * 37.0 / paperWidth;
float tenDivY = appHeight * 175.0 / paperHeight;
float tenDivWidth = appWidth * 5.0 / paperWidth;
float tenDivHeight = appHeight * 5.0 / paperHeight;
rect(tenDivX, tenDivY, tenDivWidth, tenDivHeight);

float fifteenDivX = appWidth * 108.0 / paperWidth;
float fifteenDivY = appHeight * 175.0 / paperHeight;
float fifteenDivWidth = appWidth * 5.0 / paperWidth;
float fifteenDivHeight = appHeight * 5.0 / paperHeight;
rect(fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight);


//Strings, text, Literal
String title = "Title";
String x = "X";
String ten = "10";
String fifteen = "15";
String nextUp = "Next Up";
String lyrics = "Lyrics";
String TFC = "The Final Countdown";
String ITE = "In The End";
String JUFAB = "Join Us For A Bite";
String europe = "Europe";
String linkinPark = "Linkin Park";
String JTMusic = "JT Music";

//Fonts From OS
float fontSize1 = appHeight;
float fontSize2 = appHeight;
float fontSize3 = appHeight;
float fontSize4 = appHeight;
float fontSize5 = appHeight;
float fontSize6 = appHeight;
PFont font;
String PLBI = "Palatino Linotype Bold Italic";

font = createFont(PLBI, fontSize1);

//Aspect ratio for "Title"
float titleFontSize = 65;
float titledivHeight = songtitleDivHeight;
float titleAspectRatio = titleFontSize / titledivHeight;

//Aspect ratio for "X"
float xFontSize = 32;
float xdivHeight = xDivHeight;
float xAspectRatio = xFontSize / xdivHeight;

//Aspect ratio for "10"
float tenFontSize = 20;
float tendivHeight = tenDivHeight;
float tenAspectRatio = tenFontSize / tendivHeight;
//Aspect ratio for "15" is the same as Aspect ratio for "10"

//Aspect ratio for "Next Up"
float nextUpFontSize = 41;
float nextUpdivHeight = nextupDivHeight;
float nextUpAspectRatio = nextUpFontSize / nextUpdivHeight;
//Aspect ratio for "Lyrics" is the same as Aspect ratio for "next Up"

//Aspect ratio for "The  Final Countdown"
float theFinalCountdownFontSize = 41;
float theFinalCountdowndivHeight = nameofsongfinalcountdownDivHeight;
float theFinalCountdownAspectRatio = theFinalCountdownFontSize / theFinalCountdowndivHeight;
//Aspect ratio for "In The End" and "Join Us For A Bite" are the same as Aspect ratio for "The  Final Countdown"

//Aspect ratio for "Artists"
float artistsFontSize = 20;
float artistsdivHeight = nameofartisteuropeDivHeight;
float artistsAspectRatio = artistsFontSize / artistsdivHeight;


float textAdjustment = 0.9;


//Final Font Sizes
fontSize1 = songtitleDivHeight*titleAspectRatio * textAdjustment;
fontSize2 = xDivHeight*xAspectRatio * textAdjustment;
fontSize3 = tenDivHeight*tenAspectRatio * textAdjustment;
fontSize4 = nextupDivHeight*nextUpAspectRatio * textAdjustment;
fontSize5 = theFinalCountdowndivHeight*theFinalCountdownAspectRatio * textAdjustment;
fontSize6 = artistsdivHeight*artistsAspectRatio * textAdjustment;;

//Drawing Text
color blackInk = #000000;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;

fill(blackInk);
textAlign(CENTER, TOP);

textFont(font, fontSize1);
text(title, songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight);

textFont(font, fontSize2);
text(x, xDivX, xDivY, xDivWidth, xDivHeight);

textFont(font, fontSize3);
text(ten, tenDivX, tenDivY, tenDivWidth, tenDivHeight);

textFont(font, fontSize3);
text(fifteen, fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight);

textFont(font, fontSize4);
text(nextUp, nextupDivX, nextupDivY, nextupDivWidth, nextupDivHeight);

textFont(font, fontSize4);
text(lyrics, lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight);

textAlign(LEFT, TOP);

float constantDecrease = 0.99;
int iWhile = 0;
textFont(font, fontSize5);
while (textWidth(TFC) > nameofsongfinalcountdownDivWidth) {
  iWhile++;
  if (iWhile>100) {
    println ("Infinite WHILE Loop");
    exit();
  }
  fontSize5 *= constantDecrease;
  textFont(font, fontSize5);
}
text(TFC, nameofsongfinalcountdownDivX, nameofsongfinalcountdownDivY, nameofsongfinalcountdownDivWidth, nameofsongfinalcountdownDivHeight);

textFont(font, fontSize5);
text(ITE, nameofsongintheendDivX, nameofsongintheendDivY, nameofsongintheendDivWidth, nameofsongintheendDivHeight);

textFont(font, fontSize5);
text(JUFAB, nameofsongjoinusforabiteDivX, nameofsongjoinusforabiteDivY, nameofsongjoinusforabiteDivWidth, nameofsongjoinusforabiteDivHeight);

textFont(font, fontSize6);
text(europe, nameofartisteuropeDivX, nameofartisteuropeDivY, nameofartisteuropeDivWidth, nameofartisteuropeDivHeight);

textFont(font, fontSize6);
text(linkinPark, nameofartistlinkinparkDivX, nameofartistlinkinparkDivY, nameofartistlinkinparkDivWidth, nameofartistlinkinparkDivHeight);

textFont(font, fontSize6);
text(JTMusic, nameofartistjtmusicDivX, nameofartistjtmusicDivY, nameofartistjtmusicDivWidth, nameofartistjtmusicDivHeight);

fill(resetInk);

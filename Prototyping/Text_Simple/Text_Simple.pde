fullScreen();

println(displayWidth, displayHeight);

int appWidth = displayWidth;
int appHeight = displayHeight;

int paperWidth = 279;
int paperHeight = 216;

//------------------ DIVS ------------------//

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

//------------------ TEXT ------------------//

String title = "Title";
String x = "X";
String ten = "10";

PFont font;
font = createFont("Palatino Linotype Bold Italic", 100);

fill(0);
textAlign(CENTER, CENTER);

// FIX: scale text using HEIGHT of each box (not width)

textFont(font, songtitleDivHeight * 0.8);
text(title, songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight);

textFont(font, xDivHeight * 0.8);
text(x, xDivX, xDivY, xDivWidth, xDivHeight);

textFont(font, tenDivHeight * 0.8);
text(ten, tenDivX, tenDivY, tenDivWidth, tenDivHeight);

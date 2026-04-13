/* Text, Simple ... Hardcoded
 */
//
//Display
fullScreen();
//
println(displayWidth, displayHeight);

int appWidth = displayWidth;
int appHeight = displayHeight;

int paperWidth = 279;
int paperHeight = 216;


//

float songtitleDivX = appWidth * 12 / paperWidth;
float songtitleDivY = appHeight *  14 / paperHeight;
float songtitleDivWidth = appWidth * 76 / paperWidth;
float songtitleDivHeight = appHeight * 16 / paperHeight ;

rect( songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight );

float xDivX = appWidth * (paperWidth - 8) / paperWidth;
float xDivY = appHeight *  0 / paperHeight;
float xDivWidth = appWidth * 8 / paperWidth;
float xDivHeight = appHeight * 8 / paperHeight ;

rect( xDivX, xDivY, xDivWidth, xDivHeight );

float nextupDivX = appWidth * 175 / paperWidth;
float nextupDivY = appHeight *  27.5 / paperHeight;
float nextupDivWidth = appWidth * 35 / paperWidth;
float nextupDivHeight = appHeight * 10 / paperHeight ;

rect( nextupDivX, nextupDivY, nextupDivWidth, nextupDivHeight );

float lyricsDivX = appWidth * 225 / paperWidth;
float lyricsDivY = appHeight *  27.5 / paperHeight;
float lyricsDivWidth = appWidth * 35 / paperWidth;
float lyricsDivHeight = appHeight * 10 / paperHeight ;

rect( lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight );

float nameofsongfinalcountdownDivX = appWidth * 187 / paperWidth;
float nameofsongfinalcountdownDivY = appHeight *  47 / paperHeight;
float nameofsongfinalcountdownDivWidth = appWidth * 50 / paperWidth;
float nameofsongfinalcountdownDivHeight = appHeight * 10 / paperHeight ;

rect( nameofsongfinalcountdownDivX, nameofsongfinalcountdownDivY, nameofsongfinalcountdownDivWidth, nameofsongfinalcountdownDivHeight );

float nameofartisteuropeDivX = appWidth * 187 / paperWidth;
float nameofartisteuropeDivY = appHeight *  57 / paperHeight;
float nameofartisteuropeDivWidth = appWidth * 30 / paperWidth;
float nameofartisteuropeDivHeight = appHeight * 5 / paperHeight ;

rect( nameofartisteuropeDivX, nameofartisteuropeDivY, nameofartisteuropeDivWidth, nameofartisteuropeDivHeight );

float nameofsongintheendDivX = appWidth * 187 / paperWidth;
float nameofsongintheendDivY = appHeight *  72 / paperHeight;
float nameofsongintheendDivWidth = appWidth * 50 / paperWidth;
float nameofsongintheendDivHeight = appHeight * 10 / paperHeight ;

rect( nameofsongintheendDivX, nameofsongintheendDivY, nameofsongintheendDivWidth, nameofsongintheendDivHeight );

float nameofartistlinkinparkDivX = appWidth * 187 / paperWidth;
float nameofartistlinkinparkDivY = appHeight *  82 / paperHeight;
float nameofartistlinkinparkDivWidth = appWidth * 30 / paperWidth;
float nameofartistlinkinparkDivHeight = appHeight * 5 / paperHeight ;

rect( nameofartistlinkinparkDivX, nameofartistlinkinparkDivY, nameofartistlinkinparkDivWidth, nameofartistlinkinparkDivHeight );

float nameofsongjoinusforabiteDivX = appWidth * 187 / paperWidth;
float nameofsongjoinusforabiteDivY = appHeight *  97 / paperHeight;
float nameofsongjoinusforabiteDivWidth = appWidth * 50 / paperWidth;
float nameofsongjoinusforabiteDivHeight = appHeight * 10 / paperHeight ;

rect( nameofsongjoinusforabiteDivX, nameofsongjoinusforabiteDivY, nameofsongjoinusforabiteDivWidth, nameofsongjoinusforabiteDivHeight );

float nameofartistjtmusicDivX = appWidth * 187 / paperWidth;
float nameofartistjtmusicDivY = appHeight *  107 / paperHeight;
float nameofartistjtmusicDivWidth = appWidth * 30 / paperWidth;
float nameofartistjtmusicDivHeight = appHeight * 5 / paperHeight ;

rect( nameofartistjtmusicDivX, nameofartistjtmusicDivY, nameofartistjtmusicDivWidth, nameofartistjtmusicDivHeight );

float tenDivX = appWidth * 37 / paperWidth;
float tenDivY = appHeight *  175 / paperHeight;
float tenDivWidth = appWidth * 5 / paperWidth;
float tenDivHeight = appHeight * 5 / paperHeight ;

rect( tenDivX, tenDivY, tenDivWidth, tenDivHeight );

float fifteenDivX = appWidth * 108 / paperWidth;
float fifteenDivY = appHeight *  175 / paperHeight;
float fifteenDivWidth = appWidth * 5 / paperWidth;
float fifteenDivHeight = appHeight * 5 / paperHeight ;

rect( fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight );

//String, Text, Literal
String title = "Title";

//Fonts from OS
println("Start of Console");
String[] fontList = PFont.list();
printArray(fontList);

//float fontSize = appHeight;
float fontSize = appHeight;
println( fontSize );
//float fontSize = 25;
PFont font;
String PLBI = "Palatino Linotype Bold Italic";
font = createFont(PLBI, fontSize);
textFont(font, fontSize);

//Aspect Ratio for Text
float divHeightPLBI = songtitleDivHeight;
float PLBIAspectRatio = fontSize / divHeightPLBI;
fontSize = songtitleDivWidth * PLBIAspectRatio;
println( fontSize );

//Drawing Text
color whiteInk = #FFFFFF;
color blackInk = #000000;
color resetInk = whiteInk;
fill(blackInk);
text( title, songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight );
text( title, xDivX, xDivY, xDivWidth, xDivHeight);
text( title, nextupDivX, nextupDivY, nextupDivWidth, nextupDivHeight);
text( title, lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight);
text( title, nameofsongfinalcountdownDivX, nameofsongfinalcountdownDivY, nameofsongfinalcountdownDivWidth, nameofsongfinalcountdownDivHeight);
text( title, nameofartisteuropeDivX, nameofartisteuropeDivY, nameofartisteuropeDivWidth, nameofartisteuropeDivHeight);
text( title, nameofsongintheendDivX, nameofsongintheendDivY, nameofsongintheendDivWidth, nameofsongintheendDivHeight);
text( title, nameofartistlinkinparkDivX, nameofartistlinkinparkDivY, nameofartistlinkinparkDivWidth, nameofartistlinkinparkDivHeight);
text( title, nameofsongjoinusforabiteDivX, nameofsongjoinusforabiteDivY, nameofsongjoinusforabiteDivWidth, nameofsongjoinusforabiteDivHeight);
text( title, nameofartistjtmusicDivX, nameofartistjtmusicDivY, nameofartistjtmusicDivWidth, nameofartistjtmusicDivHeight);
text( title, tenDivX, tenDivY, tenDivWidth, tenDivHeight);
text( title, fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight);

fill(resetInk);

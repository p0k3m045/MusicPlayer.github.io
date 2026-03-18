/* Aspect Ratio
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

String upArow = "..";
String dependanciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName1 = "Join Us For A Bite";
String imageName2 = "Europe TFC";
String imageName3 = "Hybrid Theory";
String fileExension = ".jpg";
String open = "/";
//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: Dependencies\Images
String imageDirectory = upArow + open + upArow + open + dependanciesFolder + open + imagesFolder + open;
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
//
//Population: DIVs
//Image: Aspect Ratio Algorithm

float albumcoverimagefinalcountdownDivX = appWidth * 167 / paperWidth;
float albumcoverimagefinalcountdownDivY = appHeight *  47 / paperHeight;
float albumcoverimagefinalcountdownDivWidth = appWidth * 20 / paperWidth;
float albumcoverimagefinalcountdownDivHeight = appHeight * 20 / paperHeight ;

float albumcoverimageintheendDivX = appWidth * 167 / paperWidth;
float albumcoverimageintheendDivY = appHeight *  72 / paperHeight;
float albumcoverimageintheendDivWidth = appWidth * 20 / paperWidth;
float albumcoverimageintheendDivHeight = appHeight * 20 / paperHeight ;

float albumcoverimagejoinusforabiteDivX = appWidth * 167 / paperWidth;
float albumcoverimagejoinusforabiteDivY = appHeight *  97 / paperHeight;
float albumcoverimagejoinusforabiteDivWidth = appWidth * 20 / paperWidth;
float albumcoverimagejoinusforabiteDivHeight = appHeight * 20 / paperHeight ;

rect( albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, albumcoverimagefinalcountdownDivWidth, albumcoverimagefinalcountdownDivHeight );
rect( albumcoverimageintheendDivX, albumcoverimageintheendDivY, albumcoverimageintheendDivWidth, albumcoverimageintheendDivHeight );
rect( albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, albumcoverimagejoinusforabiteDivWidth, albumcoverimagejoinusforabiteDivHeight );
image( image1, albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, albumcoverimagejoinusforabiteDivWidth+1, albumcoverimagejoinusforabiteDivHeight+1 );
image( image2, albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, albumcoverimagefinalcountdownDivWidth+1, albumcoverimagefinalcountdownDivHeight+1 );
image( image3, albumcoverimageintheendDivX, albumcoverimageintheendDivY, albumcoverimageintheendDivWidth+1, albumcoverimageintheendDivHeight+1 );

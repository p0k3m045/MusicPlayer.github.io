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

//Population: DIVs
//Image: Aspect Ratio Algorithm
//println( float (imageWidth2) / float (imageHeight2) );
//Ternary Operator
float image2AspectRatio_GreaterOne = ( imageWidth2 > imageHeight2 ) ? float (imageWidth2) / float (imageHeight2)  : float (imageHeight2) / float (imageWidth2);
println(image2AspectRatio_GreaterOne);
float imageWidthAdjusted = albumcoverimagefinalcountdownDivWidth;
float imageHeightAdjusted = ( imageWidth2 >= albumcoverimageintheendDivWidth ) ? imageWidthAdjusted / image2AspectRatio_GreaterOne : imageWidthAdjusted * image2AspectRatio_GreaterOne ;

while( imageHeightAdjusted > albumcoverimageintheendDivHeight) {
  imageWidthAdjusted *= 0.99;
  imageHeightAdjusted = imageWidthAdjusted / image2AspectRatio_GreaterOne;
}

rect( albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, albumcoverimagefinalcountdownDivWidth, albumcoverimagefinalcountdownDivHeight );
rect( albumcoverimageintheendDivX, albumcoverimageintheendDivY, albumcoverimageintheendDivWidth, albumcoverimageintheendDivHeight );
rect( albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, albumcoverimagejoinusforabiteDivWidth, albumcoverimagejoinusforabiteDivHeight );
image( image1, albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, imageWidthAdjusted+1, imageWidthAdjusted+1 );
image( image2, albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, imageWidthAdjusted+1, imageHeightAdjusted+1 );
image( image3, albumcoverimageintheendDivX, albumcoverimageintheendDivY, imageWidthAdjusted+1, imageHeightAdjusted+1 );

/* Aspect Ratio
*/
//
//Display
fullScreen();
//
String upArrow = "..";
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName = "Europe TFC";
String fileExtention = ".jpg";
String open = "/";
//
///Concatenation
/*
 - See Absolute Pathway: C:\Users\b.schile-nelson\Documents\GitHub\MusicPlayer.github.io\Dependencies\Images
 - See Reletave Pathway: Dependencies\Images
*/
String pathway = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open + imageName + fileExtention;
//
println(pathway);
PImage image1 = loadImage( pathway );
//
image(image1, 0, 0);

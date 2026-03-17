/* Aspect Ratio
 */
//
//Display
fullScreen();
//
String upArrow = "..";
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName1 = "Europe TFC";
String imageName2 = "Circle";
String imageName3 = "Hybrid Theory";
String fileExtention = ".jpg";
String open = "/";
//
///Concatenation
/*
 - See Absolute Pathway: C:\Users\b.schile-nelson\Documents\GitHub\MusicPlayer.github.io\Dependencies\Images
 - See Reletave Pathway: Dependencies\Images
 */
String imageDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
String pathway1, pathway2, pathway3;
String image1, image2, image3;
for ( int i=1; i<=3; i++) { 
  pathway[i] = imageDirectory + imageName[i] + fileExtention;
  image[i] = loadImage( pathway[i] );
}
String pathway2 = imageDirectory + imageName2 + fileExtention;
String pathway3 = imageDirectory + imageName3 + fileExtention;
//
//println( pathway );
//
image2 = loadImage( pathway2 );
image3 = loadImage( pathway3 );
//
for (int i=1; i<=3; i++) {
  image(image1, 0, 0);
  image(image2, 0, 0);
  image(image3, 0, 0);
}

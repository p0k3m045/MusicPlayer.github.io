println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
float DivX = appWidth * 1/4;
float DivY = appHeight * 1/4;
float DivWidth = appWidth * 1/2;
float DivHeight = appHeight * 1/2;
//
float stopSymbolDivX = DivX + DivWidth*1/4;
float stopSymbolDivY = DivY +  DivHeight*1/4;
float stopSymbolDivWidth = DivWidth*1/2;
float stopSymbolivHeight = DivHeight*1/2;
//
float playSymbolDivX1 = DivX + DivWidth*1/4;
float playSymbolDivY2 = DivY +  DivHeight*1/4;
float playSymbolDivX3 = DivX + DivWidth*3/4;
float playSymbolDivY4 = DivY +  DivHeight*1/2;
float playSymbolDivX5 = DivX + DivWidth*1/4;
float playSymbolDivY6 = DivY +  DivHeight*3/4;
//
float muteSymbolDivX1 = DivX + DivWidth*1/4;
float muteSymbolDivY2 = DivY +  DivHeight*1/4;
float muteSymbolDivX3 = DivX + DivWidth*3/4;
float muteSymbolDivY4 = DivY +  DivHeight*3/4;
//DIVs
//rect( DivX, DivY, DivWidth, DivHeight );
rect( DivX, DivY, DivWidth, DivHeight );
//
//rect( stopSymbolDivX, stopSymbolDivY, stopSymbolDivWidth, stopSymbolivHeight );
//triangle( playSymbolDivX1, playSymbolDivY2, playSymbolDivX3, playSymbolDivY4, playSymbolDivX5, playSymbolDivY6);
line( muteSymbolDivX1, muteSymbolDivY2, muteSymbolDivX3, muteSymbolDivY4 );

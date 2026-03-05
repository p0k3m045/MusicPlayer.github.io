println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
float DivX = appWidth * 1/4;
float DivY = appHeight * 1/4;
float DivWidth = appWidth * 1/2;
float DivHeight = appHeight * 1/2;
//
//
float playSymbolDivX1 = DivX + DivWidth*1/4;
float playSymbolDivY1 = DivY +  DivHeight*1/4;
float playSymbolDivX2 = DivX + DivWidth*3/4;
float playSymbolDivY2 = DivY +  DivHeight*1/2;
float playSymbolDivX3 = DivX + DivWidth*1/4;
float playSymbolDivY3 = DivY +  DivHeight*3/4;
//
float pauseSymbolDivX1 = DivX + DivWidth*1/4;
float pauseSymbolDivY1 = DivY + DivHeight*1/4;
float pauseSymbolDivWidth1 = DivWidth*1/8;
float pauseSymbolDivHeight1 = DivHeight*1/2;
float pauseSymbolDivX2 = DivX + DivWidth*5/8;
float pauseSymbolDivY2 = DivY + DivHeight*1/4;
float pauseSymbolDivWidth2 = DivWidth*1/8;
float pauseSymbolDivHeight2 = DivHeight*1/2;
//
float skipFifteenDivX = appWidth*1/2;
float skipFifteenDivY = appHeight*1/2;
float skipFifteenDivWidth = DivWidth*1/2;
float skipFifteenDivHeight = DivHeight*1/2;
float skipFifteenDivStart = 0;
float skipFifteenDivStop = PI+PI*3/4;
float skipFifteenDivWidth2 = skipFifteenDivWidth*7/8;
float skipFifteenDivHeight2 = skipFifteenDivHeight*7/8;
float skipFifteenLineDivX1 = DivX*5/2;
float skipFifteenLineDivY1 = DivY*2;
float skipFifteenLineDivX2 = DivX*5/2-;
float skipFifteenLineDivY2 = DivY*2;
//
rect( DivX, DivY, DivWidth, DivHeight );
//
//triangle( playSymbolDivX1, playSymbolDivY1, playSymbolDivX2, playSymbolDivY2, playSymbolDivX3, playSymbolDivY3);
//
//rect( pauseSymbolDivX1, pauseSymbolDivY1, pauseSymbolDivWidth1, pauseSymbolDivHeight1 );
//rect( pauseSymbolDivX2, pauseSymbolDivY2, pauseSymbolDivWidth2, pauseSymbolDivHeight2 );
//
arc(skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth, skipFifteenDivHeight, skipFifteenDivStart, skipFifteenDivStop);
arc(skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth2, skipFifteenDivHeight2, skipFifteenDivStart, skipFifteenDivStop);
line(skipFifteenLineDivX1, skipFifteenLineDivY1, skipFifteenLineDivX2, skipFifteenLineDivY2);

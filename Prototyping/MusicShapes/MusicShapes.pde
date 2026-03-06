println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//
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
float skipFifteenDivX = DivX+DivWidth*1/2;
float skipFifteenDivY = DivY+DivHeight*1/2;
float skipFifteenDivWidth = DivWidth*1/2;
float skipFifteenDivHeight = DivHeight*1/2;
float skipFifteenDivStart = 0;
float skipFifteenDivStop = PI+PI*1/2;
float skipFifteenDivWidth2 = skipFifteenDivWidth*7/8;
float skipFifteenDivHeight2 = skipFifteenDivHeight*7/8;
float skipFifteenLineDivX1 = DivX+DivWidth*3/4;
float skipFifteenLineDivY1 = DivY+DivHeight*1/2;
float skipFifteenLineDivX2 = DivX+DivWidth*3/4-(DivWidth*1/32);
float skipFifteenLineDivY2 = DivY+DivHeight*1/2;
float skipFifteenTriangleDivX1 = DivX+(DivWidth*1/2);
float skipFifteenTriangleDivY1 = DivY+(DivHeight*3/16);
float skipFifteenTriangleDivX2 = DivX+(DivWidth*1/2);
float skipFifteenTriangleDivY2 = DivY+(DivHeight*11/32);
float skipFifteenTriangleDivX3 = DivX+(DivWidth*11/16);
float skipFifteenTriangleDivY3 = DivY+(DivHeight*17/64);
//
float rewindTenDivX = DivX+DivWidth*1/2;
float rewindTenDivY = DivY+DivHeight*1/2;
float rewindTenDivWidth = DivWidth*1/2;
float rewindTenDivHeight = DivHeight*1/2;
float rewindTenDivStart = PI+PI*1/2;
float rewindTenDivStop = PI+PI*2;
float rewindTenDivWidth2 = rewindTenDivWidth*7/8;
float rewindTenDivHeight2 = rewindTenDivHeight*7/8;
float rewindTenLineDivX1 = DivX+(DivWidth*1/4);
float rewindTenLineDivY1 = DivY+DivHeight*1/2;
float rewindTenLineDivX2 = DivX+DivWidth*1/4+(DivWidth*1/32);
float rewindTenLineDivY2 = DivY+DivHeight*1/2;
float rewindTenTriangleDivX1 = DivX+(DivWidth*1/2);
float rewindTenTriangleDivY1 = DivY+(DivHeight*3/16);
float rewindTenTriangleDivX2 = DivX+(DivWidth*1/2);
float rewindTenTriangleDivY2 = DivY+(DivHeight*11/32);
float rewindTenTriangleDivX3 = DivX+(DivWidth*5/16);
float rewindTenTriangleDivY3 = DivY+(DivHeight*17/64);
//
//
rect( DivX, DivY, DivWidth, DivHeight );
//
//
//triangle( playSymbolDivX1, playSymbolDivY1, playSymbolDivX2, playSymbolDivY2, playSymbolDivX3, playSymbolDivY3);
//
//rect( pauseSymbolDivX1, pauseSymbolDivY1, pauseSymbolDivWidth1, pauseSymbolDivHeight1 );
//rect( pauseSymbolDivX2, pauseSymbolDivY2, pauseSymbolDivWidth2, pauseSymbolDivHeight2 );
//
arc( skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth, skipFifteenDivHeight, skipFifteenDivStart, skipFifteenDivStop );
arc( skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth2, skipFifteenDivHeight2, skipFifteenDivStart, skipFifteenDivStop );
line( skipFifteenLineDivX1, skipFifteenLineDivY1, skipFifteenLineDivX2, skipFifteenLineDivY2 );
triangle( skipFifteenTriangleDivX1, skipFifteenTriangleDivY1, skipFifteenTriangleDivX2, skipFifteenTriangleDivY2, skipFifteenTriangleDivX3, skipFifteenTriangleDivY3 );

//arc( rewindTenDivX, rewindTenDivY, rewindTenDivWidth, rewindTenDivHeight, rewindTenDivStart, rewindTenDivStop );
//arc( rewindTenDivX, rewindTenDivY, rewindTenDivWidth2, rewindTenDivHeight2, rewindTenDivStart, rewindTenDivStop );
//line( rewindTenLineDivX1, rewindTenLineDivY1, rewindTenLineDivX2, rewindTenLineDivY2 );
//triangle( rewindTenTriangleDivX1, rewindTenTriangleDivY1, rewindTenTriangleDivX2, rewindTenTriangleDivY2, rewindTenTriangleDivX3, rewindTenTriangleDivY3 );

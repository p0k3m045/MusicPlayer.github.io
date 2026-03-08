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
float restartSongDivX = DivX+DivWidth*1/2;
float restartSongDivY = DivY+DivHeight*1/2;
float restartSongDivWidth = DivWidth*1/2;
float restartSongDivHeight = DivHeight*1/2;
float restartSongDivStart = PI+PI*1/2;
float restartSongDivStop = PI+PI*2;
float restartSongDivWidth2 = rewindTenDivWidth*7/8;
float restartSongDivHeight2 = rewindTenDivHeight*7/8;
float restartSongLineDivX1 = DivX+(DivWidth*1/4);
float restartSongLineDivY1 = DivY+DivHeight*1/2;
float restartSongLineDivX2 = DivX+DivWidth*1/4+(DivWidth*1/32);
float restartSongLineDivY2 = DivY+DivHeight*1/2;
float restartSongTriangleDivX1 = DivX+(DivWidth*1/2);
float restartSongTriangleDivY1 = DivY+(DivHeight*3/16);
float restartSongTriangleDivX2 = DivX+(DivWidth*1/2);
float restartSongTriangleDivY2 = DivY+(DivHeight*11/32);
float restartSongTriangleDivX3 = DivX+(DivWidth*5/16);
float restartSongTriangleDivY3 = DivY+(DivHeight*17/64);
float restartSongPauseDivX1 = DivX+DivWidth*25/64;
float restartSongPauseDivY1 = DivY+DivHeight*3/8;
float restartSongPauseDivWidth1 = DivWidth*1/16;
float restartSongPauseDivHeight1 = DivHeight*1/4;
float restartSongPauseDivX2 = DivX+DivWidth*35/64;
float restartSongPauseDivY2 = DivY+DivHeight*3/8;
float restartSongPauseDivWidth2 = DivWidth*1/16;
float restartSongPauseDivHeight2 = DivHeight*1/4;
//
float skipSongTriangleOneDivX1 = DivX+DivWidth*1/4;
float skipSongTriangleOneDivY1 = DivY+DivHeight*1/4;
float skipSongTriangleOneDivX2 = DivX+DivWidth*1/4;
float skipSongTriangleOneDivY2 = DivY+DivHeight*3/4;
float skipSongTriangleOneDivX3 = DivX+DivWidth*1/2;
float skipSongTriangleOneDivY3 = DivY+DivHeight*1/2;
float skipSongTriangleTwoDivX1 = DivX+DivWidth*1/2;
float skipSongTriangleTwoDivY1 = DivY+DivHeight*1/4;
float skipSongTriangleTwoDivX2 = DivX+DivWidth*1/2;
float skipSongTriangleTwoDivY2 = DivY+DivHeight*3/4;
float skipSongTriangleTwoDivX3 = DivX+DivWidth*3/4;
float skipSongTriangleTwoDivY3 = DivY+DivHeight*1/2;
//
float loopOnceFirstArrowLineOneDivX1 = DivX+DivWidth*3/16;
float loopOnceFirstArrowLineOneDivY1 = DivY+DivHeight*1/4;;
float loopOnceFirstArrowLineOneDivX2 = DivX+DivWidth*3/16;
float loopOnceFirstArrowLineOneDivY2 = DivY+DivHeight*1/2;
float loopOnceFirstArrowLineTwoDivX1 = DivX+DivWidth*1/4;
float loopOnceFirstArrowLineTwoDivY1 = loopOnceFirstArrowLineOneDivY1+(DivHeight*1/16);
float loopOnceFirstArrowLineTwoDivX2 = DivX+DivWidth*1/4;
float loopOnceFirstArrowLineTwoDivY2 = DivY+DivHeight*1/2;
float loopOnceFirstArrowLineThreeDivX1 = loopOnceFirstArrowLineOneDivX2;
float loopOnceFirstArrowLineThreeDivY1 = loopOnceFirstArrowLineOneDivY2;
float loopOnceFirstArrowLineThreeDivX2 = loopOnceFirstArrowLineTwoDivX2;
float loopOnceFirstArrowLineThreeDivY2 = loopOnceFirstArrowLineTwoDivY2;
float loopOnceFirstArrowLineFourDivX1 = loopOnceFirstArrowLineOneDivX1;
float loopOnceFirstArrowLineFourDivY1 = loopOnceFirstArrowLineOneDivY1;
float loopOnceFirstArrowLineFourDivX2 = DivX+DivWidth*5/8;
float loopOnceFirstArrowLineFourDivY2 = loopOnceFirstArrowLineOneDivY1;
float loopOnceFirstArrowLineFiveDivX1 = loopOnceFirstArrowLineTwoDivX1;
float loopOnceFirstArrowLineFiveDivY1 = loopOnceFirstArrowLineFourDivY1+(DivHeight*1/16);
float loopOnceFirstArrowLineFiveDivX2 = DivX+DivWidth*5/8;
float loopOnceFirstArrowLineFiveDivY2 = loopOnceFirstArrowLineFourDivY1+(DivHeight*1/16);
float loopOnceFirstArrowTriangleDivX1 = loopOnceFirstArrowLineFiveDivX2;
float loopOnceFirstArrowTriangleDivY1 = DivHeight*5/32+DivY;
float loopOnceFirstArrowTriangleDivX2 = loopOnceFirstArrowLineFiveDivX2;
float loopOnceFirstArrowTriangleDivY2 = DivHeight*13/32+DivY;
float loopOnceFirstArrowTriangleDivX3 = loopOnceFirstArrowLineFiveDivX2+(DivWidth*3/16);
float loopOnceFirstArrowTriangleDivY3 = (loopOnceFirstArrowLineFiveDivY1+loopOnceFirstArrowLineFourDivY1)*1/2;

float loopOnceSecondArrowLineOneDivX1 = ;
float loopOnceSecondArrowLineOneDivY1 = ;
float loopOnceSecondArrowLineOneDivX2 = ;
float loopOnceSecondArrowLineOneDivY2 = ;
float loopOnceSecondArrowLineTwoDivX1 = ;
float loopOnceSecondArrowLineTwoDivY1 = ;
float loopOnceSecondArrowLineTwoDivX2 = ;
float loopOnceSecondArrowLineTwoDivY2 = ;
float loopOnceSecondArrowLineThreeDivX1 = ;
float loopOnceSecondArrowLineThreeDivY1 = ;
float loopOnceSecondArrowLineThreeDivX2 = ;
float loopOnceSecondArrowLineThreeDivY2 = ;
float loopOnceSecondArrowLineFourDivX1 = ;
float loopOnceSecondArrowLineFourDivY1 = ;
float loopOnceSecondArrowLineFourDivX2 = ;
float loopOnceSecondArrowLineFourDivY2 = ;
float loopOnceSecondArrowLineFiveDivX1 = ;
float loopOnceSecondArrowLineFiveDivY1 = ;
float loopOnceSecondArrowLineFiveDivX2 = ;
float loopOnceSecondArrowLineFiveDivY2 = ;
float loopOnceSecondArrowTriangleDivX1 = ;
float loopOnceSecondArrowTriangleDivY1 = ;
float loopOnceSecondArrowTriangleDivX2 = ;
float loopOnceSecondArrowTriangleDivY2 = ;
float loopOnceSecondArrowTriangleDivX3 = ;
float loopOnceSecondArrowTriangleDivY3 = ;
//
rect( DivX, DivY, DivWidth, DivHeight );
//
//PLAY BUTTON
//triangle( playSymbolDivX1, playSymbolDivY1, playSymbolDivX2, playSymbolDivY2, playSymbolDivX3, playSymbolDivY3);
//
//PAUSE BUTTON
//rect( pauseSymbolDivX1, pauseSymbolDivY1, pauseSymbolDivWidth1, pauseSymbolDivHeight1 );
//rect( pauseSymbolDivX2, pauseSymbolDivY2, pauseSymbolDivWidth2, pauseSymbolDivHeight2 );
//
//SKIP FIFTEEN SECONDS BUTTON
//arc( skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth, skipFifteenDivHeight, skipFifteenDivStart, skipFifteenDivStop );
//arc( skipFifteenDivX, skipFifteenDivY, skipFifteenDivWidth2, skipFifteenDivHeight2, skipFifteenDivStart, skipFifteenDivStop );
//line( skipFifteenLineDivX1, skipFifteenLineDivY1, skipFifteenLineDivX2, skipFifteenLineDivY2 );
//triangle( skipFifteenTriangleDivX1, skipFifteenTriangleDivY1, skipFifteenTriangleDivX2, skipFifteenTriangleDivY2, skipFifteenTriangleDivX3, skipFifteenTriangleDivY3 );
//
//REWIND TEN SECONDS BUTTON
//arc( rewindTenDivX, rewindTenDivY, rewindTenDivWidth, rewindTenDivHeight, rewindTenDivStart, rewindTenDivStop );
//arc( rewindTenDivX, rewindTenDivY, rewindTenDivWidth2, rewindTenDivHeight2, rewindTenDivStart, rewindTenDivStop );
//line( rewindTenLineDivX1, rewindTenLineDivY1, rewindTenLineDivX2, rewindTenLineDivY2 );
//triangle( rewindTenTriangleDivX1, rewindTenTriangleDivY1, rewindTenTriangleDivX2, rewindTenTriangleDivY2, rewindTenTriangleDivX3, rewindTenTriangleDivY3 );
//
//RESTART SONG BUTTON
//arc( restartSongDivX, restartSongDivY, restartSongDivWidth, restartSongDivHeight, restartSongDivStart, restartSongDivStop );
//arc( restartSongDivX, restartSongDivY, restartSongDivWidth2, restartSongDivHeight2, restartSongDivStart, restartSongDivStop );
//line( restartSongLineDivX1, restartSongLineDivY1, restartSongLineDivX2, restartSongLineDivY2 );
//triangle( restartSongTriangleDivX1, restartSongTriangleDivY1, restartSongTriangleDivX2, restartSongTriangleDivY2, restartSongTriangleDivX3, restartSongTriangleDivY3 );
//rect( restartSongPauseDivX1, restartSongPauseDivY1, restartSongPauseDivWidth1, restartSongPauseDivHeight1 );
//rect( restartSongPauseDivX2, restartSongPauseDivY2, restartSongPauseDivWidth2, restartSongPauseDivHeight2 );
//
//SKIP SONG BUTTON
//triangle( skipSongTriangleOneDivX1, skipSongTriangleOneDivY1, skipSongTriangleOneDivX2, skipSongTriangleOneDivY2, skipSongTriangleOneDivX3, skipSongTriangleOneDivY3 );
//triangle( skipSongTriangleTwoDivX1, skipSongTriangleTwoDivY1, skipSongTriangleTwoDivX2, skipSongTriangleTwoDivY2, skipSongTriangleTwoDivX3, skipSongTriangleTwoDivY3 );
//
//LOOP ONCE BUTTON
line( loopOnceFirstArrowLineOneDivX1, loopOnceFirstArrowLineOneDivY1, loopOnceFirstArrowLineOneDivX2, loopOnceFirstArrowLineOneDivY2 );
line( loopOnceFirstArrowLineTwoDivX1, loopOnceFirstArrowLineTwoDivY1, loopOnceFirstArrowLineTwoDivX2, loopOnceFirstArrowLineTwoDivY2 );
line( loopOnceFirstArrowLineThreeDivX1, loopOnceFirstArrowLineThreeDivY1, loopOnceFirstArrowLineThreeDivX2, loopOnceFirstArrowLineThreeDivY2 );
line( loopOnceFirstArrowLineFourDivX1, loopOnceFirstArrowLineFourDivY1, loopOnceFirstArrowLineFourDivX2, loopOnceFirstArrowLineFourDivY2 );
line( loopOnceFirstArrowLineFiveDivX1, loopOnceFirstArrowLineFiveDivY1, loopOnceFirstArrowLineFiveDivX2, loopOnceFirstArrowLineFiveDivY2 );
triangle( loopOnceFirstArrowTriangleDivX1, loopOnceFirstArrowTriangleDivY1, loopOnceFirstArrowTriangleDivX2, loopOnceFirstArrowTriangleDivY2, loopOnceFirstArrowTriangleDivX3, loopOnceFirstArrowTriangleDivY3 );

line( loopOnceSecondArrowLineOneDivX1, loopOnceSecondArrowLineOneDivY1, loopOnceSecondArrowLineOneDivX2, loopOnceSecondArrowLineOneDivY2 );
line( loopOnceSecondArrowLineTwoDivX1, loopOnceSecondArrowLineTwoDivY1, loopOnceSecondArrowLineTwoDivX2, loopOnceSecondArrowLineTwoDivY2 );
line( loopOnceSecondArrowLineThreeDivX1, loopOnceSecondArrowLineThreeDivY1, loopOnceSecondArrowLineThreeDivX2, loopOnceSecondArrowLineThreeDivY2 );
line( loopOnceSecondArrowLineFourDivX1, loopOnceSecondArrowLineFourDivY1, loopOnceSecondArrowLineFourDivX2, loopOnceSecondArrowLineFourDivY2 );
line( loopOnceSecondArrowLineFiveDivX1, loopOnceSecondArrowLineFiveDivY1, loopOnceSecondArrowLineFiveDivX2, loopOnceSecondArrowLineFiveDivY2 );
triangle( loopOnceSecondArrowTriangleDivX1, loopOnceSecondArrowTriangleDivY1, loopOnceSecondArrowTriangleDivX2, loopOnceSecondArrowTriangleDivY2, loopOnceSecondArrowTriangleDivX3, loopOnceSecondArrowTriangleDivY3 );

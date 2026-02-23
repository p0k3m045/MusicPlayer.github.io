/* DIVs 2D Rectangles
*/
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
int paperWidth = 279;
int paperHeight = 216;

/*
float DivX = appWidth * ??? / paperWidth;
float DivY = appHeight *  ??? / paperHeight;
float DivWidth = appWidth * ??? / paperWidth;
float DivHeight = appHeight * ??? / paperHeight ;
*/

float songtitleboxDivX = appWidth * 10 / paperWidth;
float songtitleboxDivY = appHeight *  12 / paperHeight;
float songtitleboxDivWidth = appWidth * 80 / paperWidth;
float songtitleboxDivHeight = appHeight * 20 / paperHeight ;

float songtitleDivX = appWidth * 12 / paperWidth;
float songtitleDivY = appHeight *  14 / paperHeight;
float songtitleDivWidth = appWidth * 76 / paperWidth;
float songtitleDivHeight = appHeight * 16 / paperHeight ;


float recordplayerimageDivX = appWidth * 10 / paperWidth;
float recordplayerimageDivY = appHeight *  40 / paperHeight;
float recordplayerimageDivWidth = appWidth * 120 / paperWidth;
float recordplayerimageDivHeight = appHeight * 90 / paperHeight ;

float greenlightDivX = appWidth * 95 / paperWidth;
float greenlightDivY = appHeight *  100 / paperHeight;
float greenlightDivWidth = appWidth * 5 / paperWidth;
float greenlightDivHeight = appHeight * 5 / paperHeight ;

float redlightDivX = appWidth * 105 / paperWidth;
float redlightDivY = appHeight *  100 / paperHeight;
float redlightDivWidth = appWidth * 5 / paperWidth;
float redlightDivHeight = appHeight * 5 / paperHeight ;

float looponceDivX = appWidth * 10 / paperWidth;
float looponceDivY = appHeight *  140 / paperHeight;
float looponceDivWidth = appWidth * 10 / paperWidth;
float looponceDivHeight = appHeight * 10 / paperHeight ;

float loopforeverDivX = appWidth * 30 / paperWidth;
float loopforeverDivY = appHeight *  140 / paperHeight;
float loopforeverDivWidth = appWidth * 10 / paperWidth;
float loopforeverDivHeight = appHeight * 10 / paperHeight ;

float stoploopingDivX = appWidth * 50 / paperWidth;
float stoploopingDivY = appHeight *  140 / paperHeight;
float stoploopingDivWidth = appWidth * 10 / paperWidth;
float stoploopingDivHeight = appHeight * 10 / paperHeight ;

float restartDivX = appWidth * 9 / paperWidth;
float restartDivY = appHeight *  170 / paperHeight;
float restartDivWidth = appWidth * 15 / paperWidth;
float restartDivHeight = appHeight * 15 / paperHeight ;

float rewindtenDivX = appWidth * 32 / paperWidth;
float rewindtenDivY = appHeight *  170 / paperHeight;
float rewindtenDivWidth = appWidth * 15 / paperWidth;
float rewindtenDivHeight = appHeight * 15 / paperHeight ;

float pauseDivX = appWidth * 56 / paperWidth;
float pauseDivY = appHeight * 170 / paperHeight;
float pauseDivWidth = appWidth * 15 / paperWidth;
float pauseDivHeight = appHeight * 15 / paperHeight ;

float playDivX = appWidth * 79 / paperWidth;
float playDivY = appHeight *  170 / paperHeight;
float playDivWidth = appWidth * 15 / paperWidth;
float playDivHeight = appHeight * 15 / paperHeight ;

float skipfifteenDivX = appWidth * 103 / paperWidth;
float skipfifteenDivY = appHeight *  170 / paperHeight;
float skipfifteenDivWidth = appWidth * 15 / paperWidth;
float skipfifteenDivHeight = appHeight * 15 / paperHeight ;

float nextsongDivX = appWidth * 126 / paperWidth;
float nextsongDivY = appHeight *  170 / paperHeight;
float nextsongDivWidth = appWidth * 15 / paperWidth;
float nextsongDivHeight = appHeight * 15 / paperHeight ;

float uiboxDivX = appWidth * 0 / paperWidth;
float uiboxDivY = appHeight *  135 / paperHeight;
float uiboxDivWidth = appWidth * 150 / paperWidth;
float uiboxDivHeight = appHeight * 81 / paperHeight ;

float searchbarDivX = appWidth * 215 / paperWidth;
float searchbarDivY = appHeight *  5 / paperHeight;
float searchbarDivWidth = appWidth * 45 / paperWidth;
float searchbarDivHeight = appHeight * 10 / paperHeight ;

float magnifyingglassimageDivX = appWidth * 217 / paperWidth;
float magnifyingglassimageDivY = appHeight *  7 / paperHeight;
float magnifyingglassimageDivWidth = appWidth * 6 / paperWidth;
float magnifyingglassimageDivHeight = appHeight * 6 / paperHeight ;

float boxforxDivX = appWidth * (paperWidth - 10) / paperWidth;
float boxforxDivY = appHeight *  0 / paperHeight;
float boxforxDivWidth = appWidth * 10 / paperWidth;
float boxforxDivHeight = appHeight * 10 / paperHeight ;

float xDivX = appWidth * (paperWidth - 8) / paperWidth;
float xDivY = appHeight *  0 / paperHeight;
float xDivWidth = appWidth * 8 / paperWidth;
float xDivHeight = appHeight * 8 / paperHeight ;

float nextupandlyricsboxDivX = appWidth * 165 / paperWidth;
float nextupandlyricsboxDivY = appHeight *  20 / paperHeight;
float nextupandlyricsboxDivWidth = appWidth * 105 / paperWidth;
float nextupandlyricsboxDivHeight = appHeight * 180 / paperHeight ;

float nextupDivX = appWidth * 175 / paperWidth;
float nextupDivY = appHeight *  27.5 / paperHeight;
float nextupDivWidth = appWidth * 35 / paperWidth;
float nextupDivHeight = appHeight * 10 / paperHeight ;

float lyricsDivX = appWidth * 225 / paperWidth;
float lyricsDivY = appHeight *  27.5 / paperHeight;
float lyricsDivWidth = appWidth * 35 / paperWidth;
float lyricsDivHeight = appHeight * 10 / paperHeight ;

float albumcoverimagefinalcountdownDivX = appWidth * 167 / paperWidth;
float albumcoverimagefinalcountdownDivY = appHeight *  47 / paperHeight;
float albumcoverimagefinalcountdownDivWidth = appWidth * 20 / paperWidth;
float albumcoverimagefinalcountdownDivHeight = appHeight * 20 / paperHeight ;

float nameofsongfinalcountdownDivX = appWidth * 187 / paperWidth;
float nameofsongfinalcountdownDivY = appHeight *  47 / paperHeight;
float nameofsongfinalcountdownDivWidth = appWidth * 50 / paperWidth;
float nameofsongfinalcountdownDivHeight = appHeight * 10 / paperHeight ;

float nameofartisteuropeDivX = appWidth * 187 / paperWidth;
float nameofartisteuropeDivY = appHeight *  57 / paperHeight;
float nameofartisteuropeDivWidth = appWidth * 30 / paperWidth;
float nameofartisteuropeDivHeight = appHeight * 5 / paperHeight ;

float playnextfinalcountdownDivX = appWidth * 252 / paperWidth;
float playnextfinalcountdownDivY = appHeight *  52 / paperHeight;
float playnextfinalcountdownDivWidth = appWidth * 10 / paperWidth;
float playnextfinalcountdownDivHeight = appHeight * 10 / paperHeight ;

float albumcoverimageintheendDivX = appWidth * 167 / paperWidth;
float albumcoverimageintheendDivY = appHeight *  72 / paperHeight;
float albumcoverimageintheendDivWidth = appWidth * 20 / paperWidth;
float albumcoverimageintheendDivHeight = appHeight * 20 / paperHeight ;

float nameofsongintheendDivX = appWidth * 187 / paperWidth;
float nameofsongintheendDivY = appHeight *  72 / paperHeight;
float nameofsongintheendDivWidth = appWidth * 50 / paperWidth;
float nameofsongintheendDivHeight = appHeight * 10 / paperHeight ;

float nameofartistlinkinparkDivX = appWidth * 187 / paperWidth;
float nameofartistlinkinparkDivY = appHeight *  82 / paperHeight;
float nameofartistlinkinparkDivWidth = appWidth * 30 / paperWidth;
float nameofartistlinkinparkDivHeight = appHeight * 5 / paperHeight ;

float playnextintheendDivX = appWidth * 252 / paperWidth;
float playnextintheendDivY = appHeight *  77 / paperHeight;
float playnextintheendDivWidth = appWidth * 10 / paperWidth;
float playnextintheendDivHeight = appHeight * 10 / paperHeight ;

float albumcoverimagejoinusforabiteDivX = appWidth * 167 / paperWidth;
float albumcoverimagejoinusforabiteDivY = appHeight *  97 / paperHeight;
float albumcoverimagejoinusforabiteDivWidth = appWidth * 20 / paperWidth;
float albumcoverimagejoinusforabiteDivHeight = appHeight * 20 / paperHeight ;

float nameofsongjoinusforabiteDivX = appWidth * 187 / paperWidth;
float nameofsongjoinusforabiteDivY = appHeight *  97 / paperHeight;
float nameofsongjoinusforabiteDivWidth = appWidth * 50 / paperWidth;
float nameofsongjoinusforabiteDivHeight = appHeight * 10 / paperHeight ;

float nameofartistjtmusicDivX = appWidth * 187 / paperWidth;
float nameofartistjtmusicDivY = appHeight *  107 / paperHeight;
float nameofartistjtmusicDivWidth = appWidth * 30 / paperWidth;
float nameofartistjtmusicDivHeight = appHeight * 5 / paperHeight ;

float playnextjoinusforabiteDivX = appWidth * 252 / paperWidth;
float playnextjoinusforabiteDivY = appHeight *  102 / paperHeight;
float playnextjoinusforabiteDivWidth = appWidth * 10 / paperWidth;
float playnextjoinusforabiteDivHeight = appHeight * 10 / paperHeight ;

float finalcountdownuiboxDivX = appWidth * 165 / paperWidth;
float finalcountdownuiboxDivY = appHeight *  45 / paperHeight;
float finalcountdownuiboxDivWidth = appWidth * 105 / paperWidth;
float finalcountdownuiboxDivHeight = appHeight * 25 / paperHeight ;

float intheenduiboxDivX = appWidth * 165 / paperWidth;
float intheenduiboxDivY = appHeight *  70 / paperHeight;
float intheenduiboxDivWidth = appWidth * 105 / paperWidth;
float intheenduiboxDivHeight = appHeight * 25 / paperHeight ;

float joinusforabiteuiboxDivX = appWidth * 165 / paperWidth;
float joinusforabiteuiboxDivY = appHeight *  95 / paperHeight;
float joinusforabiteuiboxDivWidth = appWidth * 105 / paperWidth;
float joinusforabiteuiboxDivHeight = appHeight * 25 / paperHeight ;

float tenDivX = appWidth * 37 / paperWidth;
float tenDivY = appHeight *  175 / paperHeight;
float tenDivWidth = appWidth * 5 / paperWidth;
float tenDivHeight = appHeight * 5 / paperHeight ;

float fifteenDivX = appWidth * 108 / paperWidth;
float fifteenDivY = appHeight *  175 / paperHeight;
float fifteenDivWidth = appWidth * 5 / paperWidth;
float fifteenDivHeight = appHeight * 5 / paperHeight ;

//rect( DivX, DivY, DivWidth, DivHeight );
rect( songtitleboxDivX, songtitleboxDivY, songtitleboxDivWidth, songtitleboxDivHeight );
rect( songtitleDivX, songtitleDivY, songtitleDivWidth, songtitleDivHeight );
rect( recordplayerimageDivX, recordplayerimageDivY, recordplayerimageDivWidth, recordplayerimageDivHeight );
rect( greenlightDivX, greenlightDivY, greenlightDivWidth, greenlightDivHeight );
rect( redlightDivX, redlightDivY, redlightDivWidth, redlightDivHeight );
rect( uiboxDivX, uiboxDivY, uiboxDivWidth, uiboxDivHeight );
rect( looponceDivX, looponceDivY, looponceDivWidth, looponceDivHeight );
rect( loopforeverDivX, loopforeverDivY, loopforeverDivWidth, loopforeverDivHeight );
rect( stoploopingDivX, stoploopingDivY, stoploopingDivWidth, stoploopingDivHeight );
rect( restartDivX, restartDivY, restartDivWidth, restartDivHeight );
rect( rewindtenDivX, rewindtenDivY, rewindtenDivWidth, rewindtenDivHeight );
rect( pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight );
rect( playDivX, playDivY, playDivWidth, playDivHeight );
rect( skipfifteenDivX, skipfifteenDivY, skipfifteenDivWidth, skipfifteenDivHeight );
rect( nextsongDivX, nextsongDivY, nextsongDivWidth, nextsongDivHeight );
rect( searchbarDivX, searchbarDivY, searchbarDivWidth, searchbarDivHeight );
rect( magnifyingglassimageDivX, magnifyingglassimageDivY, magnifyingglassimageDivWidth, magnifyingglassimageDivHeight );
rect( boxforxDivX, boxforxDivY, boxforxDivWidth, boxforxDivHeight );
rect( xDivX, xDivY, xDivWidth, xDivHeight );
rect( nextupandlyricsboxDivX, nextupandlyricsboxDivY, nextupandlyricsboxDivWidth, nextupandlyricsboxDivHeight );
rect( nextupDivX, nextupDivY, nextupDivWidth, nextupDivHeight );
rect( lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight );
rect( finalcountdownuiboxDivX, finalcountdownuiboxDivY, finalcountdownuiboxDivWidth, finalcountdownuiboxDivHeight );
rect( intheenduiboxDivX, intheenduiboxDivY, intheenduiboxDivWidth, intheenduiboxDivHeight );
rect( joinusforabiteuiboxDivX, joinusforabiteuiboxDivY, joinusforabiteuiboxDivWidth, joinusforabiteuiboxDivHeight );
rect( albumcoverimagefinalcountdownDivX, albumcoverimagefinalcountdownDivY, albumcoverimagefinalcountdownDivWidth, albumcoverimagefinalcountdownDivHeight );
rect( nameofsongfinalcountdownDivX, nameofsongfinalcountdownDivY, nameofsongfinalcountdownDivWidth, nameofsongfinalcountdownDivHeight );
rect( nameofartisteuropeDivX, nameofartisteuropeDivY, nameofartisteuropeDivWidth, nameofartisteuropeDivHeight );
rect( playnextfinalcountdownDivX, playnextfinalcountdownDivY, playnextfinalcountdownDivWidth, playnextfinalcountdownDivHeight );
rect( albumcoverimageintheendDivX, albumcoverimageintheendDivY, albumcoverimageintheendDivWidth, albumcoverimageintheendDivHeight );
rect( nameofsongintheendDivX, nameofsongintheendDivY, nameofsongintheendDivWidth, nameofsongintheendDivHeight );
rect( nameofartistlinkinparkDivX, nameofartistlinkinparkDivY, nameofartistlinkinparkDivWidth, nameofartistlinkinparkDivHeight );
rect( playnextintheendDivX, playnextintheendDivY, playnextintheendDivWidth, playnextintheendDivHeight );
rect( albumcoverimagejoinusforabiteDivX, albumcoverimagejoinusforabiteDivY, albumcoverimagejoinusforabiteDivWidth, albumcoverimagejoinusforabiteDivHeight );
rect( nameofsongjoinusforabiteDivX, nameofsongjoinusforabiteDivY, nameofsongjoinusforabiteDivWidth, nameofsongjoinusforabiteDivHeight );
rect( nameofartistjtmusicDivX, nameofartistjtmusicDivY, nameofartistjtmusicDivWidth, nameofartistjtmusicDivHeight );
rect( playnextjoinusforabiteDivX, playnextjoinusforabiteDivY, playnextjoinusforabiteDivWidth, playnextjoinusforabiteDivHeight );
rect( tenDivX, tenDivY, tenDivWidth, tenDivHeight );
rect( fifteenDivX, fifteenDivY, fifteenDivWidth, fifteenDivHeight );

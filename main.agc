
// Project: helloworld2 
// Created: 2020-09-30
// Author: Michael Tang

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "hello world 2" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

CreateText(1, "Hello World")
SetTextSize(1, 100)
SetTextColor(1, 255, 0 , 0, 255)
helloX = GetVirtualWidth()/2 - GetTextTotalWidth(1)/2
helloY = GetVirtualHeight()/2 - GetTextTotalHeight(1)/2
SetTextPosition(1, helloX, helloY)

CreateText(2, "Welcome")
SetTextSize(2, 100)

helloDirX = 1
helloDirY = -1
do
	// Make Hello World go left and right
    helloX = helloX + helloDirX * 5
    //SetTextPosition(1, helloX, helloY)
    if helloX > GetVirtualWidth() - GetTextTotalWidth(1)
		helloDirX = - 1
	endif
    if helloX < 0
		helloDirX = 1
	endif
/*	// -- First Attempt -- //
	helloY = helloY + helloDirY * 5
	SetTextPosition(1, helloX, helloY)
	if helloY > GetVirtualHeight() - GetTextTotalHeight(1)
		helloDirY = - 1
	endif
	if helloY < 0
		helloDirY = 1
	endif
*/	
	// Make Hello World go up and down
	helloY = helloY + helloDirY * 5
	SetTextPosition(1, helloX, helloY)
	if helloY > GetVirtualHeight() - GetTextTotalHeight(1)
		helloDirY = -1
	endif
	if helloY < 0
		helloDirY = 1
	endif
	
    Sync()
loop

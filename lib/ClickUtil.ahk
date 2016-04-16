;Search to click
SearchClick(imagePath, window) {

	;Check Active window
	if (window = "") {

		Send {AppsKey}
	} else {

		IfWinExist, %window% 
			WinActivate
		else 
			MsgBox Pls open %window%
	}

	;Check imagePath
	if (imagePath = "") {
		MsgBox pls input image
	}
	MsgBox %imagePath%
	;search image
	ImageSearch, FoundX, FoundY, 0,0, %A_ScreenWidth%, %A_ScreenHeight%, %imagePath%.
	if ErrorLevel = 2
    	MsgBox Could not conduct the search %A_ScreenWidth%, %A_ScreenHeight%.
	else if ErrorLevel = 1
    	Return
	else
    	MouseMove, FoundX, FoundY, 0.
    	MouseClick, left, FoundX, FoundY,2.
	return
}

Search(imagePath, window) {
	existed := false
	;Check Active window
	if (window = "") {

		Send {AppsKey}
	} else {

		IfWinExist, %window% 
			WinActivate
		else 
			MsgBox Pls open %window%
	}

	;Check imagePath
	if (imagePath = "") {
		MsgBox pls input image
	}

	;search image
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %imagePath%
	if ErrorLevel = 1
    	MsgBox Could not conduct the search.
	else
    	MsgBox The icon was found at %FoundX%x%FoundY%.
    	existed := true
	return existed
}

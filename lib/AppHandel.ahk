#include Constant.ahk

 ListAppPath := Object()
 fileName = %A_ScriptDir%\appList.txt

;function get app list
getAppPath() {
	global fileName
	global ListAppPath
	MsgBox %fileName%
	;Check file existed
	IfNotExist, %fileName%
		MsgBox %fileName%

	;Get content from file to array
	Loop, Read, %fileName% ; This loop retrieves each line from the file, one at a time.
	{
		if not ErrorLevel  ; Successfully loaded.
		{
			if (A_LoopReadLine = "") {
				MsgBox have empty Lines
			} else {
				ListAppPath.Insert(A_LoopReadLine) ; Append this line to the array.
			}
		} else {
			MsgBox "Error when read file" 
			Exit, 1
		}
	}

	for index, element in ListAppPath { 
		; Recommended approach in most cases.
		; Using "Loop", indices must be consecutive numbers from 1 to the number
		; of elements in the array (or they must be calculated within the loop).
		; MsgBox % "Element number " . A_Index . " is " . Array[A_Index]

		; Using "for", both the index (or "key") and its associated value
		; are provided, and the index can be *any* value of your choosing.
		if not ErrorLevel {

			
		} Else {
			MsgBox File empty
		}
	}
	Return
}

StartTheApp(appPath, appName) {
	IfWinExist, %appName%
		WinClose
	else {
		WinClose, %appName%,,2
	}
	Run, %appPath%
	WinWaitActive, %appName%,, 20
	; MsgBox, %appName% load ok
	Return
}

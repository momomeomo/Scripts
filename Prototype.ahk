
#SingleInstance Force
SetTitleMatchMode 2
DetectHiddenWindows off

MsgBox Control+a anytime while running to select where you want to start auto clicking. F1 main script. F2 location finder. F3 Pauses. Esc Terminates.

^a::
	MouseGetPos, xa,ya
	MsgBox, %xa%,%ya%
return

F1::
	While WinExist("World of Warcraft"){
;1 second= 1000
		WinActivate, World of Warcraft
		Random, randSleep, 322, 1420
		Random, randDelay, 168, 868
		Random, randDelay2, 169, 869

		SetKeyDelay,randDelay,randDelay2
		Sleep, randSleep
		Controlsend,,g,World of Warcraft
		Click, down, right, %xa%, %ya%
		Sleep, randDelay
		Click, up, right, %xa%, %ya%
;XY pos
}
return

F2:: 	;finding locations
	loop {
		SetTimer, WatchCursor, 100
		return
		WatchCursor:
		MouseGetPos, xx, yy, id, control
		WinGetTitle, title, ahk_id %id%
		WinGetClass, class, ahk_id %id%
		ToolTip, %xx%`, %yy% ahk_id %id%`nahk_class %class%`n%title%`nControl: %control%
		return
		}
		
F3::Pause
return
Esc::ExitApp
return


#NoEnv
#Warn
#SingleInstance Force
SetTitleMatchMode 2
DetectHiddenWindows off

MsgBox Control+a anytime while running to select where you want to start auto clicking. F1 main script. F2 Pauses. Esc Terminates.

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
		
F2::Pause
return
Esc::ExitApp
return
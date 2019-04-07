; AHK skeleton focused on detectability using LIVE WoW testbed
; 16/10/2018 d/m/y 
; final iteration

#KeyHistory 0
#NoEnv
#SingleInstance Force
SetTitleMatchMode, 2
DetectHiddenWindows, off
ListLines, off


OnExit("ExitFunc")

ExitFunc(ExitReason, ExitCode)
{
    if ExitReason not in Logoff,Shutdown
    {
	SoundBeep
    }
}

MsgBox,,Cords,Control+a set`nF1 execute F2 pause Esc exit`nSends 'g' repeatedly`nconfirmation beep on exit, 3.50

^a:: ;control+a
	WinActivate, Program Manager
	MouseGetPos, xa,ya
	MsgBox,,Cords,%xa%`n`n%ya%, 1.25
return

F1::
If WinExist("World of Warcraft")
{
	While WinExist("World of Warcraft")
	{	
		Random, randSpeed, 10, 25
		Random, randSpeed2, 10, 25
		SetMouseDelay, randSpeed
		SetDefaultMouseSpeed, randSpeed
		Random, randSleep, 3420, 7420 ;1 second= 1000
		Random, randDelay, 369, 969
		Random, randDelay2, 25, 50
		mousegetpos, mosX, mosY
		ToolTip, %randSleep% _ %randDelay%`n`n%randSpeed% _ %randSpeed2%, (mosX + 22), (mosY + 22), 1
		
		SetKeyDelay,randDelay,randDelay2
		Sleep, randSleep
		Send g
		WinActivate, Program Manager
		sleep, 15
		MouseMove, %xa%, %ya%
		sleep, 15
		WinActivate, World of Warcraft
		sleep, randDelay2
		Click, down, right
		Sleep, randDelay
		Click, up, right
		Sleep, randDelay2
	}
}else
	{ 
	MsgBox, WoW is not detected
	IfMsgBox, OK
		ExitApp
	}
return

F2::Pause
return
Esc::ExitApp
return
;END;

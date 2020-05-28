
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

MsgBox,,Cords,Control+a set`nControl+s set`nControl+d set`nF1 execute F2 pause Esc exit`nconfirmation beep on exit, 3.50

^a:: ;control+a
	WinActivate, Program Manager
	MouseGetPos, xa,ya
	MsgBox,,Cords,%xa%`n`n%ya%, 1.25
return

^s:: ;control+s
	WinActivate, Program Manager
	MouseGetPos, xb,yb
	MsgBox,,Cords,%xb%`n`n%yb%, 1.25
return

^d:: ;control+d
	WinActivate, Program Manager
	MouseGetPos, xc,yc
	MsgBox,,Cords,%xc%`n`n%yc%, 1.25
return

F1::
If WinExist("World of Warcraft")
{
	While WinExist("World of Warcraft")
	{	
; first box		-------------------------------------------------;	
		Random, randSpeed, 10, 25
		Random, randSpeed2, 10, 25
		SetMouseDelay, randSpeed
		SetDefaultMouseSpeed, randSpeed
		Random, randSleep, 5420, 8420 ;1 second= 1000
		Random, randDelay, 22, 33
		Random, randDelay2, 16, 44
		mousegetpos, mosX, mosY
		ToolTip, %randSleep% _ %randDelay%`n`n%randSpeed% _ %randSpeed2%, (mosX + 22), (mosY + 22), 1
		
		SetKeyDelay,randDelay,randDelay2
		Sleep, randSleep
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
;second box		-------------------------------------------------;
		Random, randSpeed, 10, 25
		Random, randSpeed2, 10, 25
		SetMouseDelay, randSpeed
		SetDefaultMouseSpeed, randSpeed
		Random, randSleep, 5420, 8420 ;1 second= 1000
		Random, randDelay, 22, 33
		Random, randDelay2, 16, 44
		mousegetpos, mosX, mosY
		ToolTip, %randSleep% _ %randDelay%`n`n%randSpeed% _ %randSpeed2%, (mosX + 22), (mosY + 22), 1
		
		SetKeyDelay,randDelay,randDelay2
		Sleep, randSleep
		WinActivate, Program Manager
		sleep, 15
		MouseMove, %xb%, %yb%
		sleep, 15
		WinActivate, World of Warcraft
		sleep, randDelay2
		Click, down, right
		Sleep, randDelay
		Click, up, right
		Sleep, randDelay2
; third box		-------------------------------------------------; 
		Random, randSpeed, 10, 25
		Random, randSpeed2, 10, 25
		SetMouseDelay, randSpeed
		SetDefaultMouseSpeed, randSpeed
		Random, randSleep, 5420, 8420 ;1 second= 1000
		Random, randDelay, 22, 33
		Random, randDelay2, 16, 44
		mousegetpos, mosX, mosY
		ToolTip, %randSleep% _ %randDelay%`n`n%randSpeed% _ %randSpeed2%, (mosX + 22), (mosY + 22), 1
		
		SetKeyDelay,randDelay,randDelay2
		Sleep, randSleep
		WinActivate, Program Manager
		sleep, 15
		MouseMove, %xc%, %yc%
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

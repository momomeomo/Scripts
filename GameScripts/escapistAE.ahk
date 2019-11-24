
#KeyHistory 0
#NoEnv
#SingleInstance Force
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

MsgBox,,Cords,F1 to execute F2 to pause 'Esc' to exit`nSends 'Q' and 'E' repeatedly`nconfirmation beep on exit, 3.50

F1::
If WinExist("The Escapist")
{
	While WinExist("The Escapist")
	{	
		WinActivate, The Escapist
		Random, randSleep, 5, 8 ;1 second= 1000
		Send q
		Sleep, randSleep
		Send e
	}
}else
	{ 
	MsgBox, E2 is not detected
	IfMsgBox, OK
		ExitApp
	}
return

F2::Pause
return
Esc::ExitApp
return
;END;

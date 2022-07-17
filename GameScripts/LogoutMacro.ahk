#SingleInstance Ignore
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

`::Logout()

Logout() {
	BlockInput on
	SetDefaultMouseSpeed 0
	sendinput {esc}
	MouseClick, left, 959, 432, 1, 1
	blockinput off
	return
}

ExitFunc(ExitReason, ExitCode) {
    if ExitReason not in Logoff,Shutdown
    {
	SoundBeep
    }
}
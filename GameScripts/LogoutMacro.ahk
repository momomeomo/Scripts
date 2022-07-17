#SingleInstance Force
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;OPTIMIZATIONS START
#NoEnv
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, 1
SetKeyDelay, 1, 1
SetMouseDelay, 1
SetDefaultMouseSpeed, 0
SetWinDelay, 1
SetControlDelay, 1
;OPTIMIZATIONS END

`::Logout()

Logout() {
	BlockInput on
	sendinput {esc}
	MouseClick, left, 959, 432, 1, 1
	sleep 1
	MouseClick, left, 959, 432, 1, 1
	blockinput off
	return
}

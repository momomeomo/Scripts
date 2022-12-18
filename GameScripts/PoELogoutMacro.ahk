#SingleInstance Force
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;May have performance benefit:
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

`::Logout() ;Default: Tilde key

Logout() {
	BlockInput on
	sendinput {esc}
	;MouseClick, left, 960, 432, 1, 1 ;for 1080p
	MouseClick, left, 1280, 576, 1, 1 ;for 1440p
	sleep 1
	;MouseClick, left, 960, 432, 1, 1 ;for 1080p
	MouseClick, left, 1280, 576, 1, 1 ;for 1440p
	blockinput off
	return
}
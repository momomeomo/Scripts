
Option explicit 

Option explicit 

Dim ObjShell 
Set ObjShell= CreateObject("WScript.Shell")

Wscript.Sleep 16000

ObjShell.Run chr(34) & "C:\Program Files\NVIDIA Corporation\Control Panel Client\nvcplui.exe" & chr(34)
objShell.AppActivate "NVIDIA"
Wscript.Sleep 69
ObjShell.Run chr(34) & "C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" & chr(34)


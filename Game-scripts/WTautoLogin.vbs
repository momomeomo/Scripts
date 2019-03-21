' War thunder auto login script every 24 hours
Option explicit

Dim ObjShell
Set ObjShell= CreateObject("WScript.Shell")

objShell.Popup "Activated", 2

Do
    'Run the WarThunder Launcher (Steam or Normal)
    ObjShell.Run chr(34) & "steam://rungameid/236390" & chr(34)
    'Wait 10mins for updates (Time is in Milliseconds)
    Wscript.Sleep 598000 ' = 600000 - 2000
    'Press ENTER-Key to start Game via. Launcher
    objShell.AppActivate "War Thunder"
    ObjShell.SendKeys "{ENTER}"
    'Wait 100sec for the game to open and show the Daily Reward
    Wscript.Sleep 100000
    'Close War Thunder
    ObjShell.Run "TASKKILL /IM aces.exe /F"
    'Wait for 24h
    Wscript.Sleep 85700000 ' = 598000 - 100000
Loop

Write-Output "starting"

    #check if AfterBurner has started running
if($Null -eq (get-process "MSIAfterburner" -ea SilentlyContinue)){

    Write-Output "MSIAfterburner Not Running"

}	else	{

    Write-Output "MSIAfterburner Running"

			}

    #check if RTSS module has started running
if($Null -eq (get-process "RTSS" -ea SilentlyContinue)){

    Write-Output "RTSS not loaded"

}	else	{

    Write-Output "RTSS loaded"

			}

    #check if nvidia containers are loaded
if($Null -eq (get-process "NvTelemetryContainer" -ea SilentlyContinue)){

    Write-Output "NVIDIA containers Not Running"

}	else	{

    Write-Output "NVIDIA containers Running"

			}

$myname = read-host "Paused"

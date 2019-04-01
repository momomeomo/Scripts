-- opens nvidia control panel + afterburner from their default locations

-- sleep function
function sleep(n)
  if
      n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL")
  end
end

-- powershell script
local script = [[


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


]]

-- create powershell process and feed script to its stdin
local pipe = io.popen("powershell -command -", "w")
pipe:write(script)
pipe:close()


io.write("continue with this operation (y/n)?")

answer=io.read()

if answer=="y" then
  print("opening Nvidia")
  os.execute('"C:\\Program Files\\NVIDIA Corporation\\Control Panel Client\\nvcplui.exe"', "r")
  sleep(1)
  print("opening MSI")
  os.execute('"C:\\Program Files (x86)\\MSI Afterburner\\MSIAfterburner.exe"', "r")
elseif answer=="n" then
  print("closing")
  print(".......")
  sleep(1)
end

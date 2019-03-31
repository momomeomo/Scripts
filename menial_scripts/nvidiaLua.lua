-- opens nvidia control panel + afterburner from their default locations

-- sleep function
function sleep(n)
  if
      n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL")
  end
end

-- powershell script
local script = [[

if((get-process "RTSS" -ea SilentlyContinue) -eq $Null){

	"MSIAfterburner Not Running"


}	else	{

    "MSIAfterburner Running"

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

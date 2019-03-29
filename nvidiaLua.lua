-- opens nvidia control panel + afterburner from their default locations

function sleep(n)
  if 
      n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL")
  end
end


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
  sleep(1)
  print("...")
  sleep(1)
  print("..")
  sleep(1)
  print(".")
end

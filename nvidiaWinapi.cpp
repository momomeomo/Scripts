#include <shellapi.h>
#include <synchapi.h>
#include <Windows.h>

DWORD SleepEx(
  DWORD 15000,
  BOOL  false
);

HINSTANCE ShellExecute1(
    NULL,
   "open",
   C:\Program Files\NVIDIA Corporation\Control Panel Client\nvcplui.exe,
   NULL,
   NULL,
   SW_SHOWNORMAL
);

HINSTANCE ShellExecute2(
    NULL,
   "open",
   C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe,
   NULL,
   NULL,
   SW_SHOWNORMAL
);

// nvidia conversion script pseudo code
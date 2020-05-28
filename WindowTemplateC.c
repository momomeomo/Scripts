// Window Template In C
// Check project configuration. Linker->System->SubSystem should be Windows.
// Set Project to C compile \Tc
// STATUS: creates window that can be moved, toolbar does not work, background is white ( name is in chinese??? )
#include <Windows.h>
#include <wingdi.h>


LRESULT CALLBACK MainWindowCallback(HWND Window, UINT Message, WPARAM WParam, LPARAM LParam)
{
	LRESULT Result = 0;

	switch (Message)
	{
		case WM_SIZE:
		{
		}break;
		case WM_DESTROY:
		{
		}break;
		case WM_CLOSE:
		{
		}break;
		case WM_ACTIVATEAPP:
		{
		}break;
		case WM_PAINT:
		{
			PAINTSTRUCT Paint;
			HDC DeviceContext = BeginPaint(Window, &Paint);
			int x = Paint.rcPaint.left;
			int y = Paint.rcPaint.top;
			int Width = Paint.rcPaint.right - Paint.rcPaint.left;
			int Height = Paint.rcPaint.bottom - Paint.rcPaint.top;
			PatBlt(DeviceContext, x, y, Width, Height, WHITENESS);
			EndPaint(Window, &Paint);
		}break;
		default:
		{
			Result = DefWindowProc(Window, Message, WParam, LParam);
		}break;

	}
	return(Result);
}

int CALLBACK
WinMain(HINSTANCE Instance,HINSTANCE PrevInstance,PSTR CommandLine,int ShowCode)
{
	WNDCLASS WindowClass = {0};
	WindowClass.style = CS_OWNDC|CS_HREDRAW|CS_VREDRAW;
	WindowClass.lpfnWndProc = MainWindowCallback;
	WindowClass.hInstance = Instance;
	WindowClass.lpszClassName = "testBuild";

	if (RegisterClass(&WindowClass))
	{
		HWND WindowHandle = CreateWindowEx(
			0,
			WindowClass.lpszClassName,
			"testBuild", 
			WS_OVERLAPPEDWINDOW | WS_VISIBLE,
			CW_USEDEFAULT, 
			CW_USEDEFAULT, 
			CW_USEDEFAULT, 
			CW_USEDEFAULT,
			0, 
			0, 
			Instance, 
			0);
		if (WindowHandle != NULL)
		{
			MSG Message;
			for (;;)
			{
				int MessageResult = GetMessage(&Message, 0, 0, 0); // BOOL
				if(MessageResult > 0)
				{
					TranslateMessage(&Message);
					DispatchMessage(&Message);
				}
				else
				{
					break;
				}
			}
		}
		else
		{
			//logging
		}
	}
	else
	{
		//logging
	}
	return (0);
}

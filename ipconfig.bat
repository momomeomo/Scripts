
:: MUST BE RUN AS ADMIN OR WILL NOT WORK ::

echo off
cls
echo IP RELEASE START @@@
ipconfig /release
echo IP RELEASE END @@@
echo IP RENEW START @@@
ipconfig /renew
echo IP RENEW END @@@
echo IP FLUSHDNS START @@@
ipconfig /flushdns
echo IP FLUSHDNS END @@@
echo IP REGISTER DNS START @@@
REM ipconfig /registerdns REM i've not researched this command enough to find how helpful it is, main use cases ive found were with server DNS connections
echo IP REGISTER DNS END @@@
(
Echo --
Echo   Completed release, renew and flush
Echo --   
Echo   Press any key to close.
)
PAUSE >nul
exit
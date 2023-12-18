SETLOCAL
sc config w32time start= auto &
net start w32time
w32tm /config /manualpeerlist:"tempo.ien.it"
w32tm /resync /nowait & 
schtasks /Delete /TN "upd" /F
REM REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy Objects\{46B3FB07-BBF9-493F-BC99-D6521BA4C043}Machine\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /VA /F
REM choco install -y autoit &
REM choco install -y chocolateygui &
REM set UCS=https://raw.githubusercontent.com/iclavagna/ls/main/files/Registry.pol
REM curl -o %temp%\Registry.pol %UCS% && move %temp%\Registry.pol C:\Windows\System32\GroupPolicy\Machine
ECHO %USERNAME% > %TEMP%\WEB-BOOT.LOG

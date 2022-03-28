#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
local $cmd, $xcli, $xtime

$cmd = WinExists ("C:\Windows\SYSTEM32\cmd.exe")
$xcli = ProcessExists ("xcli.exe")
$xtime = ProcessExists ("xtime.exe")

func Secondary()
if $cmd = 0 then
	run ("cmd.exe","e:\track\field\live\")
EndIf
WinActivate("C:\Windows\SYSTEM32\cmd.exe")
WinActive ("C:\Windows\SYSTEM32\cmd.exe")
sleep (500)
send ("field{enter}")
send ("system_Start_secondary{enter}")
sleep (500)
send ("{enter}{enter}")
sleep (1500)
WinWaitActive ("Enter Script Parameters","",10)
WinActivate("Enter Script Parameters")
send ("y")
sleep (500)
send ("{enter}")
ProcessExists ("r_sync_status.exe")
ProcessClose ("cmd.exe")
EXIT
EndFunc

secondary ()

local $status[11], $file

HotKeySet ("{F2}", "terminate")
func terminate()
	MsgBox (0,"terminated","this program is now Terminated")
	Exit
EndFunc
HotKeySet ("{F3}", "debug")




; comments-start
; if file exist then start the secondary
; if the file dosent exist then appl stop and close the xcli
; comments-end


$file = FileExists ("e:\track\secondary.sys")
$status[1] = ProcessExists("xtime.exe")
$status[2] = ProcessExists("xagt_scan.exe")
$status[3] = ProcessExists("xcli.exe")
$status[4] = ProcessExists("r_sync_status.exe")
$status[5] = ProcessExists("xcli.exe")

; kill r_sync_status
if $status[4] > 0 then
	run ("cmd.exe")
	sleep (500)
	WinActivate ("Administrator:")
	WinActive ("Administrator:")
    sleep (500)
	send ("taskkill /im r_sync_status.exe /f{enter}exit{enter}")
EndIf

func debug()
MsgBox (0,"Debug status","Process Name   Process Number"  & @CRLF & @CRLF & "Xcli open =         " & $status[5] & @CRLF &"File exist =          " & $file & @CRLF & "Xtime =               " & $status[1] & @CRLF & "Xagt_scan =       " & $status[2] & @CRLF & "XCLI window  = " & $status[3] & @CRLF & "r_sync_status =  " & $status[4],4)
EndFunc

; start the system_start_secondary when the file exists
Func start()

	if $status[2] = 0 then
		run ("cmd.exe")
		sleep (500)
		WinActivate ("Administrator:")
		WinActive ("Administrator:")
		send ("c:\track\gbin\field.bat{enter}")
		sleep (500)
		send ("d:\track\Field\deliver\system_start_secondary.bat ask=no wait=no{enter}")
		WinWaitActive ("d:\track\Field\dbin\script.exe")
		WinActivate ("d:\track\Field\dbin\script.exe")
		WinActive ("d:\track\Field\dbin\script.exe")
		sleep(500)
		send ("{enter}{enter}")
		sleep(500)
		WinWaitActive("Enter Script Parameters")
		WinActivate ("Enter Script Parameters")
		WinActive ("Enter Script Parameters")
		sleep(500)
		send ("y{enter}")
		sleep(500)
		WinWaitActive("Enter Script Parameters")
		WinActivate ("Enter Script Parameters")
		WinActive ("Enter Script Parameters")
		sleep(500)
		send ("y{enter}")

	EndIf

	if $status[2] > 0 then
		msgbox (0,"status","secondary already started",5)
	EndIf

EndFunc

; if the system is up and the file is removed the the system will appl_stop
Func stop()
	if $status [1] = 1 then
		ProcessClose ("r_sync_status.exe")
		WinActivate ("xcli :e:\track\field\live, Script Version 3.00 Date : 02-12-16, Release dev.0.0")
		WinActivate ("xcli :e:\track\field\live, Script Version 3.00 Date : 02-12-16, Release dev.0.0")
		sleep (500)
		send ("appl_stop ask=no wait=no{enter}")
		EndIf
EndFunc

debug()


if $file = 1 then
	start()
endif

if $file = 0 then
	stop ()

EndIf







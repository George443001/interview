# start the field window

local $field
$field = WinExists ("Administrator:")

if $field = 0 then
	local $win_10_cmd
	$win_10_cmd = WinExists ("field")
	ConsoleWrite (@crlf & $win_10_cmd & @crlf )
	WinActivate ("field")
	send ("{enter}title Administrator:{enter}")
	send ("cls{enter}")
EndIf

if $field = 0 then
	Exit
endif
if $field = 1 then
	msgbox (0, "copy_level","test message")
EndIf
WinActivate ("Administrator:")
send ("live{enter}start system_Start_simplex{enter}")
WinWait ("Enter Script Parameters")
WinActivate ("Enter Script Parameters")
send ("y")
sleep (500)
send ("{enter}")

# the black dos window that talk about disk soace.
WinWait ("d:\track\field\dbin\script.exe","",8)
WinActivate ("d:\track\field\dbin\script.exe")
send ("{enter}")
sleep (500)
send ("{enter}")

WinActivate ("advise")
send ("{space}")
winwait ("advise","Live System",14)
WinActivate ("advise")
send ("{space}")

WinWait ("c_check_appl_time","Are_you_sure")
WinActivate ("c_check_appl_time")
send ("{enter}")
sleep (500)
send ("y{enter}")
#comments-start
#comments-end









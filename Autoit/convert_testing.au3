#comments-start
get old level database
get the new level code
get the new level convert
run the convert
wait for the xcli window to close
open the xcli window
system_Start_simplex
appl_stop
check for d:\track\field
EOD - with reports
wait for xprocess to exit
close the xcli window
#comments-end

;get the old database
local $DBASE, $level, $field, $error

$error = "NULL"
$field = WinExists ("field")
if $field = 0 Then
	$error = "the field window is missing"
	MsgBox (0,"Missing Field","The field window is missing." & @crlf & $error)
	Exit
EndIf


$DBASE = InputBox ('Database Location','what is the location of the database','\\hvdevsrv1\TCDB\19.6.3\test')
$level = InputBox ('Code Base Location','what is the level of the database','\\hvdevsrv1\builds\tote\tabcorp_19.10.3\20191104.2')
WinActivate ('field')
send ('TEST{enter}')

# convert testing
# convert from 19.5.3 to 19.6.3
Global $old, $new, $LIVE, $level_dest, $log, $convert_file

$old = "\\hvdevsrv1\levels\tabcorp_19.5.3\"
$new = "\\hvdevsrv1\levels\tabcorp_test_19.6.3"
$live = "e:\track\live\"
$level_dest = "d:\track\field"
$log = "c:\users\operator\desktop\killtask.log"
$convert_file = "d:\track\field\convert\do_convert1963.bat"

#start the field icon
send ('{ALTDOWN}{CTRLDOWN}{F down}')
send ('{ALTUP}{CTRLUP}{F up}')
sleep (1000)

#change the prompt to show time and date in addition to the drive and path
send ("prompt $D $T $P{enter}")

#kill xcli and any xprocesses
send ("echo %date% %time%  convert from 19.5.3 to 19.6.3 > killtask.log{ENTER}")
send ("taskkill /f /IM x* >> c:\users\operator\desktop\killtask.log{ENTER}")
sleep (2000)

#copy_level

send ('copy_level{ENTER}')
sleep (1000)
send ($old)
send('{TAB}')
send($level_dest)
send ("{TAB}{TAB}{TAB}{TAB}y")
sleep (1000)
send ("{ENTER}")
# copy level finished


sleep (500)
#copy the database
send ("live{ENTER}")
#will change me to the live directory
send ("copy \\hvdevsrv1\TCDB\19.5.3.1\SOD14Jun.zip ..\  /Y{ENTER}")
#clean the live directory
send ("del e:\track\field\live\* /Q{ENTER}")

#extract the database into the live directory
sleep (3000)
send ("7za E e:\track\field\SOD14Jun.zip {ENTER}")
sleep (1000)

send ("XCLI convert_reports_tabcorp {enter}")
sleep (1000)
WinWaitActive ("Enter Script Parameters")
sleep (500)
WinActivate ("Enter Script Parameters")
send ("y")
sleep (1000)
send ("{enter}")

WinWaitActive ("Enter Script Parameters")
sleep (500)
WinActivate ("Enter Script Parameters")
sleep (500)
send ("y{enter}")
send ("quit{enter}")

WinActivate ("Administrator")

#zip database as pre_convert.zip
send ("del e:\track\field\pre_convert.zip /q/f {enter}")
send ("7za a e:\track\field\pre_convert.zip {ENTER}")

#new level copy_level

send ('copy_level{ENTER}')
sleep (1000)
send ($new)
send('{TAB}')
send($level_dest)
send ("{TAB}{TAB}{TAB}{TAB}y")
sleep (1000)
send ("{ENTER}")
# copy level finished
#copy the convert folder to the source path
send ("MD d:\track\field\convert\{enter}")
send ("robocopy \\hvdevsrv1\levels\tabcorp_test_19.6.3\convert\ d:\track\field\convert\{enter}")
send ("d:\track\field\convert\do_convert1963.bat")

#run the do _convert Files

#convert the reports using the instance=AF
send ("XCLI convert_reports_tabcorp -form{enter}")
send ("{TAB}{TAB}{a}{enter}")

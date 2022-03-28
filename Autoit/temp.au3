#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=autotote.ico
#AutoIt3Wrapper_Compile_Both=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#comments-start
; this section is for my F2 hot key
; this key will terminate this program ASAP
; and i love this feature so much.
#comments-end

HotKeySet('{F2}','hotkeyF2')
MsgBox (48,"Notice"," press the F2 key to stop the program at any time",3)
Func HotkeyF2()
ConsoleWrite ('the hot key F2 was pressed!' & @CRLF)
MsgBox (0,"test terminated","this test has been terminated by the user")
Exit
EndFunc ;==>Hotkey2
; this section is where im going to keep my Verialbles stored

global  $field, $cp, $ask_build, $xcli, $xtime, $xinput, $term

$xtime = winclose("xtime")
HotKeySet('{F3}','assor')
HotKeySet('{F4}','starter')

func starter()
	checks()
	simplex()
endFunc

func checks()
	check_z_drive()
	check_field_exist()
	xProcess_check()
endFunc

#comments-start
	this sections check to see if a field window is open on the screen.
	if not will make a message box prompting for one to be opened.
#comments-end

$field = WinExists ("Administrator:")
if $field = 0 then
	MsgBox (16,"Field Missing E001"," the field window is missing")
	WinWait ("Administrator:")
	EndIf
; functions start
func term()

$term = MsgBox (36,"choose a terminal","would you like to use a teller terminal?")
if $term = 6 then
	run ("C:\track\TERMINAL\tell\","C:\track\TERMINAL\tell\nstac.exe")
elseif $term = 7 then
	run ("C:\track\TERMINAL\self\nfvtac.exe","C:\track\TERMINAL\self")
EndIf

EndFunc

func assor()
	run ("c:\track\gateway\gateway.exe","c:\track\gateway\")
	sleep (2000)
	run ("c:\track\wciu\ci.exe","c:\track\wciu")
	sleep (4000)
EndFunc

Func terminate()
	MsgBox (0,"test terminated","setup is now terminated",10)
	ConsoleWriteError ("This program was teminated by the user using the hotkey F2")
	exit
EndFunc

func check_field_exist()
	local $field
	$field = WinExists ("Administrator")
	if $field = 0 then
		msgbox (16,"missing field:","the field window is missing. please open to resume or Press F2 to exit.")
		WinWait("Administrator")
		endif
	EndFunc

FUNC xProcess_check()

Local $Xprocess[75], $x, $xi

$Xprocess[1] = ("xack.exe")
$Xprocess[2] = ("xagt_scan.exe")
$Xprocess[4] = ("xalfa.exe")
$Xprocess[5] = ("xapp_schedule.exe")
$Xprocess[6] = ("xaudit.exe")
$Xprocess[7] = ("xbatch.exe")
$Xprocess[8] = ("xbet_monitor.exe")
$Xprocess[9] = ("xbuffer.exe")
$Xprocess[10] = ("xcli.exe")
$Xprocess[11] = ("xcommand.exe")
$Xprocess[12] = ("xdisk.exe")
$Xprocess[13] = ("xdisplay.exe")
$Xprocess[14] = ("xdp.exe")
$Xprocess[15] = ("xforeign.exe")
$Xprocess[16] = ("xforeign_bet_monitor.exe")
$Xprocess[17] = ("xforeign_scan.exe")
$Xprocess[18] = ("xforeign_scan_uk_tote.exe")
$Xprocess[19] = ("xftp_psw.exe")
$Xprocess[20] =  ("xgame.exe")
$Xprocess[21] = ("xgame_scan.exe")
$Xprocess[22] = ("xgame_session.exe")
$Xprocess[23] =  ("xhkscan.exe")
$Xprocess[24] = ("xinit.exe")
$Xprocess[25] = ("xinput.exe")
$Xprocess[26] = ("xitw.exe")
$Xprocess[27] = ("xmessage.exe")
$Xprocess[28] = ("xmessage_stream.exe")
$Xprocess[29] = ("xmr_remind.exe")
$Xprocess[30] = ("xodbc.exe")
$Xprocess[31] = ("xoutadmin_cmd.exe")
$Xprocess[32] = ("xoutadmin_msg.exe")
$Xprocess[33] = ("xoutadmin_rpt.exe")
$Xprocess[34] = ("xoutput.exe")
$Xprocess[35] = ("xover_seer.exe")
$Xprocess[36] = ("xp3_credit_scan.exe")
$Xprocess[37] = ("xparlay_scan.exe")
$Xprocess[38] = ("xplayer.exe")
$Xprocess[39] = ("xplayer_log.exe")
$Xprocess[40] = ("xplayer_scan.exe")
$Xprocess[41] = ("xplayer_scan_multi.exe")
$Xprocess[42] = ("xpost.exe")
$Xprocess[43] = ("xpressbet_acct_con.exe")
$Xprocess[44] = ("xproof_autobet.exe")
$Xprocess[45] = ("xproof_scan.exe")
$Xprocess[46] = ("xracectrl.exe")
$Xprocess[47] = ("xreceive.exe")
$Xprocess[48] = ("xremotedsp.exe")
$Xprocess[49] = ("xrestart.exe")
$Xprocess[50] =  ("xrestore.exe")
$Xprocess[51] = ("xrollover.exe")
$Xprocess[52] =  ("xrunout.exe")
$Xprocess[53] =  ("xs2sgen.exe")
$Xprocess[54] = ("xscan.exe")
$Xprocess[55] = ("xscan_arima.exe")
$Xprocess[56] = ("xsched.exe")
$Xprocess[57] = ("xsecondary.exe")
$Xprocess[58] = ("xsnap.exe")
$Xprocess[59] = ("xsnmp_monitor.exe")
$Xprocess[60] = ("xsport_file_def.exe")
$Xprocess[61] = ("xsport_history_update.exe")
$Xprocess[62] = ("xsport_parlay_scan.exe")
$Xprocess[63] = ("xsport_scan.exe")
$Xprocess[64] = ("xsport_sif_update.exe")
$Xprocess[65] = ("xsport_stream.exe")
$Xprocess[66] = ("xtest_profile.exe")
$Xprocess[67] = ("xtime.exe")
$Xprocess[68] = ("xtktscan.exe")
$Xprocess[69] = ("xtr_ms_scan.exe")
$Xprocess[60] = ("xupdate.exe")
$Xprocess[71] = ("xvalidateswitch.exe")
$Xprocess[72] = ("xvalidate_admin.exe")
$Xprocess[73] = ("xval_check.exe")
$Xprocess[74] = ("x_c_log_commands.exe ")

 $xcli = ProcessExists ("xcli.exe")
 $xtime = ProcessExists ("xtime.exe")
 $xinput = ProcessExists ("xinput.exe")


#comments-start
	xi is = to teh get process of "x"
	x is = to the xprocess in theat current loop 
#comments-end
#comments-end


for $x in $Xprocess
	ConsoleWrite($x & @CRLF)
	$xi = ProcessExists ($x)
	if $xi <> 0 then
		MsgBox (0,"xprocess open", $xi & " is open, please appl_Stop the system")
		ConsoleWrite ($x )
		terminate ()
	EndIf

Next

EndFunc

func script_param()
	WinWait ("Enter Script Parameters")
	WinActivate ("Enter Script Parameters:")
	send ("y")
	sleep (1000)
	send ("{enter}")
EndFunc

func xtime()
	do
		if $xtime = 0 then
			sleep (1000)
			EndIf
	until $xtime = 1
EndFunc

#comments-start
	this function makes a build gen
	when done will wait for xtime to close before
	moving on.
#comments-end

func build_Gen()
	WinActivate ("Administrator:")
	send ("build_Gen{enter}")
	ConsoleWrite ("a build_gen has been started")
	script_param()
	WinWaitClose ("xcli")
	ConsoleWrite ("build_gen as been completed")
	WinActive ("administrator")
	WinActivate ("administrator")

EndFunc

#comments-start
	this function makes a build tabcorp
	when done will wait for xtime to close before
	moving on.
#comments-end

func build_tab()
	WinWait ("Administrator:")
	WinActivate ("Administrator:")
	WinActive ("Administrator:")
	sleep (2000)
	send ("test{enter}del * /S/Q")
	sleep (2000)
	send ("{enter}")
	send ("build_tabcorp{enter}")
	WinWait ("xcli")
	#script_param()
	#script_param()
	WinWaitClose ("xcli")
	sleep (3000)
	MsgBox (0,"build_tabcorp"," is now complete",60)
EndFunc

func copy_level()
	WinActivate ("Administrator:")
	send ("copy_level{enter}")
	send ("\\hvdevsrv1\builds\tote\development_vs2013{tab}d:\track\field\{tab}{tab}{tab}{tab}y")
	sleep (1000)
	send ("{enter}")
endfunc

func check_z_drive()

local $Z = FileExists ("z:\track\tools\script.exe")
if $Z = 0 then
	msgbox (0,"Z track is not mapped","Z Drive is not mapped")
	ConsoleWrite ("we have detected that the z: ptha in not connected. not able to do a copy_level")
	local $do
	$do = msgbox (52,"FIX","DO you wish to map the Z drive?")
	if $do = 6 then
		WinActivate ("Administrator")
		WinActive ("Administrator")
		sleep (2000)

		send ("subst z: \\hvdevsrv1\dev{enter}")
		sleep (5000)
		send ("exit {enter}")
		if $Z = 0 then
			msgbox (0,"not fixed","Z Drive is unable to be mapped")
			EndIf

		If $z = 1 then
			msgbox (0,"fixed","fix completed",3)
		EndIf
	EndIf

endif

EndFunc

func deploy()
Local $live
$live = MsgBox (36,"Deploy to live?","Do you want to deploy to the live directory?")
 if $live = 6 then
	WinActive ("Administrator:")
	WinActivate ("Administrator:")
	sleep (1000)
	send("start title Deploy_live{enter}")
	WinWait ("Administrator:   Deploy_live")
	WinActive ("Administrator:   Deploy_live")
	WinActivate ("Administrator: Deploy_live")
	send ("color 06{enter}prompt $T $S $D $P $S{enter} ")
	send("live{enter}del * /q{enter}robocopy ..\test\ .\ /e{enter}")
	send ("exit{enter}")
 EndIf
 endfunc

func duplex()
	local $duplex
	$duplex = MsgBox (4,"Duplex?","do you want duplex")

	EndFunc

func simplex()
	WinActivate ("Administrator:")
	WinActive ("Administrator")
	send ("xcli{enter}")
	WinWaitActive ("xcli")
	send ("appl_start{enter}")
	sleep (4000)
	WinActivate ("xcli")
	WinActive ("xcli")
	send ("concentrators_gen.sm{enter}")
	sleep (30000)
	winwaitactive ("xbuffer.exe")
	ConsoleWrite ("waiting for the xcli window to open.")
	send ("system_Start_simplex{enter}")
	sleep (500)
	WinWaitActive ("d:\track\field\dbin\script.exe","",30)
	send ("{enter}{enter}")
	WinWait ("Enter Script Parameters")
	send ("y{enter}")
	winwait ("c_check_appl_time")
	send ("{enter}")
	winwait ("c_check_appl_time")
	send ("y{enter}")
	winwait ("c_check_appl_time")
	send ("y{enter}")
	WinWait ("r_sync_status")
	ConsoleWrite ("simplex mode is now completed.")
	sleep (3000)
EndFunc

; End of functions Section


#comments-start
	this sections is used to do a copy level from the developnent level.
#comments-end

check_z_drive()
check_field_exist()
xProcess_check()
; check doe  z: drive
$cp = MsgBox (4,"copy_level"," do you need a copy_level")
	if $cp = 6 then
		copy_level()
	EndIf

$ask2 = MsgBox (3,"Build", "is this a build gen?",30)
; if yes then do a build_Gen.
if $ask2 = 6 then
	build_gen ()
	ConsoleWrite ("The user has chosen to make a build gen database.")
EndIf

If $ask2 = 7 then
	; if not then do a build tabcorp

	build_tab()
	ConsoleWrite ("The user has chosen to make a tabcorp database.")
EndIf

If $ask2 = 2 then
	; if not then do a build tabcorp
	deploy()
	ConsoleWrite ("The user has chosen to cancel this option.")
EndIf

sleep (1000)
ConsoleWrite ("build is completed. ")





Exit


#COMMENTS-START

											ERROR LOGGING
	__________________________________________________________________________________________________
	|  NUMBER   |  REASON                                                                             |
	|   E001    |  THE FIELD ICON IS NOT ON THE SCREEN OR IS NOT DETECTED (OPEN IT TO RESUME)         |
	|   E002    |  THE Z DRIVE IS NOT SET. OR "Z:\track\tools\copy_level.sm" IS MISSING               |
	|   E003    |  The XCLI window is open during a copy_level attempt                                |
	|   E004    |  Xprocesses are still actice during attempt to copy_level                           |
	|           |                                                                                     |
	|           |                                                                                     |
	|           |                                                                                     |
	|           |                                                                                     |
	|           |                                                                                     |
	|           |                                                                                     |
	|___________|_____________________________________________________________________________________|

	#COMMENTS-END

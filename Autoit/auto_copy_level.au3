#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=icons\TenZon1.ico
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
local $level, $dest, $build

#comments-start
	this is a modified version of copy_level
	that will also make a build when the copy is complete
#comments-end


$level = InputBox ("level to copy ","level of code do you want to copy","\\hvdevsrv1\builds\tote\development_vs2013","",150,100,300,300,17)
$dest = InputBox ("environment"," where to copy this level ?","d:\track\field\","",150,100,300,300,10)

run ("cmd.exe")
WinActivate ("C:\Windows\SYSTEM32\cmd.exe")
WinActive ("C:\Windows\SYSTEM32\cmd.exe")
sleep (500)
send ("CALL d:\track\Field\deliver\track_env.bat d: no Field c: yes e: e:\track\Field c: c:\track\Field d: d:\track\Field{enter}")
send ("test{enter}")
send ("copy_level{enter}")
sleep (500)
send ($level & "{TAB}" & $dest & "{tab}{tab}{tab}{tab}y")
sleep (1000)
send ("{enter}")
$build = MsgBox (3,"Build_type","is this a Build_Tabcorp",10)

if $build = 6 then
	; build tabcorp
	WinActivate ("C:\Windows\SYSTEM32\cmd.exe")
	WinActive ("C:\Windows\SYSTEM32\cmd.exe")
	sleep (500)
	send ("build_tabcorp{enter}")
endif

if $build = 7 then
	; build_gen
	WinActivate ("C:\Windows\SYSTEM32\cmd.exe")
	WinActive ("C:\Windows\SYSTEM32\cmd.exe")
	sleep (500)
	send ("build_gen{enter}")
endif

if $build = 2 then
	Exit
endif
;WinExists ("xcli.exe")




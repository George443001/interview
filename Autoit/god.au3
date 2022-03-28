#comments-start
comments-start
start the copy_level process
#comments-end
SEND ("{LWIN}")
send ("{bs}")
SLEEP (500)
send ("{bs}{bs}{bs}{bs}")
send ("powershell")
send ("{ENTER}")
sleep (3000)
send ("d:\track\field\progtools\track_env.ps1 {ENTER}")
send ("c: {ENTER}")
send ("prompt $P $S $T $s {ENTER}")
send ("c:{ENTER}")
send ("cd\ c:\track\tools\{ENTER}")
send ("copy_level_new{ENTER}")
send ("\\hvdevsrv1\builds\tote\development_vs2013\{TAB}d:\track\field\{tab}{tab}{tab}y{ENTER}")
sleep (165000)
#comments-start
comments-start
start the build process
#comments-end
SEND ("{LWIN}R")
send ("{bs}")
SLEEP (500)
send ("{bs}{bs}{bs}{bs}")
send ("field")
send("{ENTER}")
send("STAGE{ENTER}")
send("DEL * /S /Q{ENTER}")
send("BUILD_TABCORP{ENTER}")
SLEEP (35000)
send("y{ENTER}")
sleep (55000)
send("{SPACE}")
sleep (3000)
send("4{TAB}")
sleep (500)
send("y{ENTER}")



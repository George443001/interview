#comments-start
copy_level automation
from \\hvdevsrv1\builds\tote\development_vs2013
to d:\track\test2\
by: CookieMonster
#comments-end
SEND ("{LWIN}R")
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


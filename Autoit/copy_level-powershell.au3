#comments-start
using a powershell as a field icon

#comments-end
send ("{LWIN down}{R down}{LWIN up}{R up}")
sleep (500)
send ("{BS}")
sleep (500)
send ("powershell.exe {ENTER}")
sleep (1000)
send ("c:\track\util\track_env.ps1 {ENTER}")
send ("set-location E:\track\field\test\ {ENTER}")
send ("cls {ENTER}")
send ("copy_level {ENTER}")
#comments-start
source_dir
dest_dir
include_source
include_config
include_build
include_ProgTools
include_price_macros
create_dirs_if_needed
latest
debug


#comments-end

send ("\\hvdevsrv1\builds\tote\development_vs2013\{TAB}d:\track\field\{TAB}{TAB}{TAB}{TAB}y ")
sleep (5000)
send ("{ENTER}")
#comments-start
copy_level is complete

#comments-end

Exit

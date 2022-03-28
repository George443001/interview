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


send ("test {ENTER} xcli {ENTER} system_start_simplex {ENTER}")

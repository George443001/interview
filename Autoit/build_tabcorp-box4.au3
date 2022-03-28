
#comments-start
using a powershell to build a database
#comments-end

#WinActivate ( "Administrator:  field Visual Studio 2013")
WinActivate ( "Administrator:")
send ("build_tabcorp {ENTER}")
sleep (2000)

# first pop-up
WinActivate ("xcli")
sleep (6000)
WinActivate ("Enter Script Parameters")
WinWaitActive ( "Enter Script Parameters")
send ("y")
sleep (500)
send ("{ENTER}")


WinWaitActive ( "Enter Script Parameters")
send ("y")
send ("{ENTER}")

#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseX64=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
# test of the bmt login
#a human would move at a speed level of 50
local $prop
sleep (2000)


#start the bmt
func Start_BMT()
	#clear the desktop
	#move all open apps to the taskbar
	MouseClick ( "left",1915,1043,1,10)
	Sleep (500)
	#start the bmt.bat FileChangeDir
	Run ("c:\users\operator\desktop\bmt.bat","d:\track\run\")
	sleep (3000)
	WinActivate ("Book Manager  -    ")
	WinActive("Book Manager  -    ")
	sleep (4000)
	send ("{enter}sport")
	SLEEP(2000)
	send ("{enter}sport")
	sleep (1000)
	send("{enter}")
	sleep (3000)
	#close communication status window
	MouseClick ( "left",158,840,1,70)
EndFunc

#update the user settings
Func user_settings()
	#details button
	MouseClick ( "left",99,40,1,70)
	#event filter
	send ("{down}{down}{down}{down}{down}{right}{down}")
	sleep (2000)
	send("{enter}")

	#details button
	MouseClick ( "left",99,40,1,70)
	#font size for medium
	send("{down}{right}{down}{down}")
	sleep (2000)
	send("{enter}")
		#Summary button
	MouseClick ( "left",167,40,1,70)
	# click on Font size Standard
	send("{down}{right}{down}")
	sleep (2000)
	send("{enter}")
	EndFunc


#Terminate the bmt and close the program
func Stop_BMT()
	#Clicked the admin icon in the menu bar in sports mode
	MouseClick ( "left",231,41,1,70)
	#click control in the menu bar
	MouseClick ( "left",291,40,1,70)
	#click the signout button
	MouseClick ( "left",303,400,1,70)
	#click the close bmt widow
	sleep (500)
	WinClose ("Book Manager  - Signed Out  ")
	EndFunc

# this function is used to find a prop or future event
func Search()
	MouseClick ( "left",505,41,1,70)
	sleep (500)
	send ($prop)
	sleep (1000)
	send ("{enter}")
	EndFunc

#this function clicks the "stop betting" button
Func stop_betting()
	MouseClick ( "left",285,40,1,70)
	sleep (500)
	MouseClick ( "left",1047,570,1,70)
	EndFunc

#next sport future
func next_future()
	MouseClick ( "left",586,39,1,70)
	EndFunc
#previous sport future
func prev_future()
	MouseClick ( "left",546,40,1,70)
	EndFunc

#test start
#start the bmt
#Start_BMT()
sleep (1000)

# EXAMPLE OF SEARCH
#$prop = "4603"
#search()

# START TEST HERE #
stop_BMT()
#comments-start
sleep (1000)
user_settings()
sleep (1000)
$prop = "4601"
 Search()
sleep (1000)
stop_betting()
sleep (1000)
next_future()
sleep (1000)
stop_betting()
sleep (1000)
prev_future()
sleep (6000)
Stop_BMT()
#comments-end

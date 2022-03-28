#comments-start
date 18NOV19
i want to start the wciu in a min state.


#comments-end
Local $app

$app = WinExists ("WCIU V4.28")
if $app = 1 then
	WinClose ("WCIU V4.28")
	WinWaitClose ("WCIU V4.28")
	ConsoleWrite (@CRLF & "i closed the WCIU V4.28" & @crlf)
endif

Run ("c:\track\wciu\wciu.exe","c:\track\wciu\")
WinWait ( "WCIU V4.28")
ConsoleWrite (@crlf & "the new WCIU V4.28 is now open " & @crlf)
#WinMinimizeAll ()
sleep (500)
ConsoleWrite (@crlf &"im clicking the min button in the window "& @crlf)
MouseClick ("left",1824,11,2)

WinFlash ( "WCIU V4.28" ,"",2,1000)
exit

$aimove = 2.5
$moved = 0
$smove = 0
$boost = 0
$btime = TimerInit()
HotKeySet("w", "fc")
HotKeySet("s", "fc")
#include <Misc.au3>
#include <GUIConstants.au3>

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Banana Pong", 209, 205, 193, 115)
$Label1 = GUICtrlCreateLabel("Pong Setup", 8, 8, 60, 17)
$Label2 = GUICtrlCreateLabel("Player 1 Controls:", 8, 32, 86, 17)
$Radio1 = GUICtrlCreateRadio("Keys", 8, 56, 97, 17)
$Radio2 = GUICtrlCreateRadio("Mouse", 112, 56, 81, 17)
$Checkbox1 = GUICtrlCreateCheckbox("AI Player", 8, 80, 97, 17)
$Combo1 = GUICtrlCreateInput("", 80, 104, 65, 25)
$Label3 = GUICtrlCreateLabel("Points to Win:", 8, 105, 70, 17)
GUIStartGroup()
$rad1 = GUICtrlCreateRadio("Easy AI", 8, 135)
$rad2 = GUICtrlCreateRadio("Hard AI", 70, 135)
GUIStartGroup()
$Button1 = GUICtrlCreateButton("Start!", 16, 165, 177, 33, 0)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
$inittime = TimerInit()

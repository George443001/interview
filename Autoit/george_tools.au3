#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=C:\Users\operator\Desktop\autoit\DEBUGER.kxf
$Form1 = GUICreate("GEORGE DEBUGGER", 323, 195, 292, 122)
GUISetBkColor(0x464646)
$Button1 = GUICtrlCreateButton("EXIT", 120, 120, 73, 41)
$Button2 = GUICtrlCreateButton("GATEWAY", 8, 8, 73, 41)
GUICtrlSetBkColor(-1, 0xB9D1EA)
$Button3 = GUICtrlCreateButton("WCIU 1", 120, 8, 73, 41)
GUICtrlSetBkColor(-1, 0xA6CAF0)
$Button4 = GUICtrlCreateButton("BMT", 224, 8, 73, 41)
GUICtrlSetBkColor(-1, 0xA6CAF0)
$Button5 = GUICtrlCreateButton("PFG", 8, 60, 73, 41)
GUICtrlSetBkColor(-1, 0xA6CAF0)
$Button6 = GUICtrlCreateButton("DPS", 120, 60, 73, 41)
GUICtrlSetBkColor(-1, 0xA6CAF0)
$Button7 = GUICtrlCreateButton("GW TEST", 226, 59, 73, 41)
GUICtrlSetFont(-1, 8, 800, 0, "Palatino Linotype")
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0xA0A0A4)
$Label1 = GUICtrlCreateLabel("SQA Servers", 8, 152, 96, 24)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
GUICtrlSetColor(-1, 0xC8C8C8)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd

$Button19 = GUICtrlCreateButton("Button1", 395, 148, 89, 41)
$Button20 = GUICtrlCreateButton("Button1", 395, 98, 89, 41)
$Button21 = GUICtrlCreateButton("Button1", 490, 54, 89, 41)
$Button22 = GUICtrlCreateButton("Button1", 490, 202, 89, 41)
$Button23 = GUICtrlCreateButton("Button1", 490, 150, 89, 41)
$Button24 = GUICtrlCreateButton("Button1", 490, 100, 89, 41)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd

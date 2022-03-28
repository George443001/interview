#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=\\sqa1\c$\track\run\book.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****


Global $S1, $S2, $S3, $S4, $SA, $SB, $startNotepad, $starCalc0, $IE
$S1 = "SQA1"
$S2 = "SQA2"
$S3 = "SQA3"
$S4 = "SQA4"
$SA = "SQA-ws-a"
$SB = "SQA-ws-b"





#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=c:\users\gbarber\pictures\desk1.kxf
$Form1_1 = GUICreate("QA Test Tools", 415, 338, 1213, 496)

#comments-start
 this is the section for the "QA Test Tools"form buttons
#comments-end


Global $sqa1 = GUICtrlCreateButton("SQA1", 35, 25, 75, 20)
Global $sqa2 = GUICtrlCreateButton("SQA2", 35, 50, 75, 20)
Global $sqa3 = GUICtrlCreateButton("SQA3", 35, 75, 75, 20)
Global $sqa4 = GUICtrlCreateButton("SQA4", 35, 100, 75, 20)

Global $sqaA = GUICtrlCreateButton("SQA-WS-A", 35, 130, 75, 20)
Global $sqaB = GUICtrlCreateButton("SQA-WS-B", 35, 155, 75, 20)
Global $rdp = GUICtrlCreateButton("Remote Desktop", 35, 180, 84, 20)

Global $gLogA = GUICtrlCreateButton("GWS A Logs", 195, 130, 75, 20)
Global $gLogB = GUICtrlCreateButton("GWS B Logs", 195, 155, 75, 20)



Global $outl = GUICtrlCreateButton("Outlook", 35, 220, 75, 20)
Global $word = GUICtrlCreateButton(" Word", 35, 245, 75, 20)
Global $exce = GUICtrlCreateButton(" Excel", 115, 245, 75, 20)
Global $skyp = GUICtrlCreateButton("Skype", 115, 220, 75, 20)
Global $BT = GUICtrlCreateButton("Bose", 35, 270, 75, 20)

Global $gwsA = GUICtrlCreateButton("GWS Client A", 115, 130, 75, 20)
Global $gwsB = GUICtrlCreateButton("GWS Client B", 115, 155, 75, 20)
Global $Button9 = GUICtrlCreateButton("Button9", 115, 75, 75, 20)

Global $tester = GUICtrlCreateButton("SM Tester", 288, 25, 75, 20)
Global $beyond3 = GUICtrlCreateButton("Beyond Compare", 288, 50, 95, 25)

Global $exit = GUICtrlCreateButton("exit", 170, 300, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###



While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE

		Case $exit
			Exit
		Case $outl
			Run("C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE", "C:\Program Files (x86)\Microsoft Office\root\Office16\")

		case $gLogA
			run ('explorer . \\sqa-ws-a\c$\GwsFolders\WebQAGateWayLogs\', '')

		Case $skyp
			Run("C:\Program Files (x86)\Microsoft Office\root\Office16\lync.exe", "C:\Program Files (x86)\Microsoft Office\root\Office16\")
		case $rdp
			run ('mstsc.exe')

		Case $sqa1
			Run('mstsc.exe /v:sqa1 /admin')
		Case $sqa2
			Run('mstsc.exe /v:sqa2 /admin ')

		Case $sqa3
			Run('mstsc.exe /v:sqa3 /admin ')

		Case $sqa4
			Run('mstsc.exe /v:sqa4 /admin ')

		Case $sqaA
			Run('mstsc.exe /v:sqa-WS-A /admin ')

		Case $sqaB
			Run('mstsc.exe /v:sqa-WS-B /admin ')
		Case $beyond3
			Run("C:\Program Files (x86)\Beyond Compare 3\BCompare.exe", "C:\Program Files (x86)\Beyond Compare 3\")

		Case $tester
			Run("C:\Program Files (x86)\Microsoft Visual Studio\2017\TestPro\Common7\IDE\mtm.exe", "C:\Program Files (x86)\Microsoft Visual Studio\2017\TestPro\Common7\IDE\")
		Case $word
			Run("C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE", "C:\Program Files (x86)\Microsoft Office\root\Office16\")
		Case $exce
			Run("C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE", "C:\Program Files (x86)\Microsoft Office\root\Office16\")
		Case $gwsA
			Run("C:\Program Files\Internet Explorer\iexplore.exe", "C:\Program Files\Internet Explorer\")
		case $BT
			run ("C:\Program Files\ASUS\Bluetooth Software\BTWUIExt.exe & ", "C:\Program Files\ASUS\Bluetooth Software\")





	EndSwitch
WEnd















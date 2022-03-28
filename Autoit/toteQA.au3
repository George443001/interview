#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\..\..\..\track\run\book.ico
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
$Form1_1 = GUICreate("QA Tote Tools", 400, 400, 100, 100)
#comments-start
 this is the section for the "QA Test Tools"form buttons
#comments-end

Global $exit = GUICtrlCreateButton("Close", 140, 350, 75, 25)
# Global $outl = GUICtrlCreateButton("Outlook", 35, 220, 75, 20)
# Global $word = GUICtrlCreateButton(" Word", 190, 220, 75, 20)
# Global $exce = GUICtrlCreateButton(" Excel", 270, 220, 75, 20)
# Global $skyp = GUICtrlCreateButton("Skype", 113, 220, 75, 20)
# Global $BT = GUICtrlCreateButton("Bose", 35, 270, 75, 20)
# Global $sqa4 = GUICtrlCreateButton("SQA4", 35, 100, 75, 20)

Global $sqa1 = GUICtrlCreateButton("SQA1", 35, 25, 75, 20)
Global $sqa2 = GUICtrlCreateButton("SQA2", 115, 25, 75, 20)
Global $sqa3 = GUICtrlCreateButton("SQA3", 195, 25, 75, 20)
Global $tester = GUICtrlCreateButton("SM Tester", 275, 25, 95, 20)

Global $rdp = GUICtrlCreateButton("RDP", 35, 50, 75, 20)
Global $GWT	= GUICtrlCreateButton("GW test", 115, 50, 75, 20)
Global $STT = GUICtrlCreateButton ("Self Term", 195, 50, 75, 20)
Global $beyond3 = GUICtrlCreateButton("Beyond Compare", 275, 50, 95, 25)

Global $utl = GUICtrlCreateButton("Process EX", 35, 75, 75, 20)
Global $EXP = GUICtrlCreateButton("expand_log", 115, 75, 75, 20)
Global $TTT = GUICtrlCreateButton ("Tell Term", 195, 75, 75, 20)
Global $GW = GUICtrlCreateButton("gateway", 275, 75, 95, 20)


Global $sqaA = GUICtrlCreateButton("SQA-WS-A", 115, 100, 75, 20)
Global $gwsA = GUICtrlCreateButton("GWS Client A", 195, 100, 75, 20)
Global $gLogA = GUICtrlCreateButton("GWS A Logs", 275, 100, 95, 20)

Global $dpice	= GUICtrlCreateButton("DPS Price", 35, 100, 75, 20)


Global $dsk	= GUICtrlCreateButton("disk MON", 35, 230, 75, 20)

Global $mem = GUICtrlCreateButton("Ram Map", 35, 265, 75, 20)
Global $DPS = GUICtrlCreateButton("DPS logs", 115, 265, 75, 20)
Global $SNDM = GUICtrlCreateButton("GWS IP config", 195, 265, 80, 20)
Global $gLogB = GUICtrlCreateButton("PFG Logs", 278, 265, 93, 20)

Global $txpmon = GUICtrlCreateButton("TCP MON", 35, 300, 75, 20)
Global $BMT = GUICtrlCreateButton("WCIU", 115, 300, 75, 20)

GUISetState(@SW_SHOW)
#EndRegion



While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $exit
			Exit
		#Case $outl
			Run("C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE", "C:\Program Files (x86)\Microsoft Office\root\Office16\")

		case $gLogA
			run ('explorer \\sqa-ws-a\c$\GwsFolders\WebQAGateWayLogs\', '')

		case $GW
			run('c:\track\gateway\gateway.exe', 'c:\track\gateway\')
			run('c:\track\wciu\wciu.exe', 'c:\track\wciu\')

		case $gLogB
			run ('explorer \\sqa-ws-a\c$\GwsFolders\PFGLogs\PFG1\', '')

		case $EXP
			RunWait('cmd.exe','c:\track\gateway')

		case $GWT
			RunWait('cmd.exe','c:\track\gw')

		#Case $skyp
			Run("C:\Program Files (x86)\Microsoft Office\root\Office16\lync.exe", "C:\Program Files (x86)\Microsoft Office\root\Office16\")
		case $rdp
			run ('mstsc.exe')
		case $dpice
			run ('notepad \\sqa-ws-a\c$\Program Files (x86)\AmTote\DPSsimulator\Release\dpsSimulatorPrices.txt')

		Case $sqa1
			Run('mstsc.exe /v:sqa1 /admin')

		Case $sqa2
			Run('mstsc.exe /v:sqa2 /admin ')

		Case $sqa3
			Run('mstsc.exe /v:sqa3 /admin ')

		case $SNDM
			run('notepad \\sqa-ws-a\c$\GwsFolders\WebQAGateWayLogs\sendmsg.cfg')

		# Case $sqa4
			# Run('mstsc.exe /v:sqa4 /admin ')

		Case $sqaA
			Run('mstsc.exe /v:sqa-WS-A /admin ')

		Case $DPS
			Run('explorer \\sqa-ws-a\c$\GwsFolders\DPSSimulator')

		# Case $beyond3
			Run("C:\Program Files (x86)\Beyond Compare 3\BCompare.exe", "C:\Program Files (x86)\Beyond Compare 3\")

		# Case $tester
			Run("C:\Program Files (x86)\Microsoft Visual Studio\2017\TestPro\Common7\IDE\mtm.exe", "C:\Program Files (x86)\Microsoft Visual Studio\2017\TestPro\Common7\IDE\")
		# Case $word
			Run("C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE", "C:\Program Files (x86)\Microsoft Office\root\Office16\")
		# Case $exce
			Run("C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE", "C:\Program Files (x86)\Microsoft Office\root\Office16\")
		Case $gwsA
			Run("C:\Program Files\Internet Explorer\iexplore.exe", "C:\Program Files\Internet Explorer\")
		# case $BT
			run ("C:\Program Files\ASUS\Bluetooth Software\BTWUIExt.exe & ", "C:\Program Files\ASUS\Bluetooth Software\")
		case $STT
			run ('C:\track\TERMINAL\self\nfvtac.exe', 'C:\track\TERMINAL\self')

		case $TTT
			run('C:\track\TERMINAL\tell\nstac.exe','C:\track\TERMINAL\tell')
		case $utl
			run('c:\track\suite\procexp.exe', 'c:\track\suite\')

		case $dsk
			run('c:\track\suite\Diskmon.exe', 'c:\track\suite\')

		case $mem
			run('c:\track\suite\RAMMap.exe', 'c:\track\suite\')

		case $txpmon
			run('c:\track\suite\Tcpview.exe', 'c:\track\suite\')

		case $BMT
			Run('c:\track\wciu\wciu.exe', 'c:\track\wciu\')
			run('c:\track\run\bmt.bat', 'c:\track\run\')





	EndSwitch
WEnd















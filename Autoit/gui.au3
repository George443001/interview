
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$QA_Tools = GUICreate("QA_Tools", 288, 348, 1146, 92)
Global $STerminal = GUICtrlCreateButton("Self Terminal", 32, 40, 75, 25)
Global $SSTerminal = GUICtrlCreateButton("TellerTerminal", 32, 88, 75, 25)
Global $exitapp = GUICtrlCreateButton("Close", 96, 216, 75, 25)
Global $BMT = GUICtrlCreateButton("BMT", 32, 128, 75, 25)
Global $gw_test = GUICtrlCreateButton("gw_test", 168, 40, 75, 25)
Global $gateway = GUICtrlCreateButton("gateway", 168, 80, 75, 25)
Global $wciu = GUICtrlCreateButton("wciu", 32, 168, 75, 25)
Global $wciu_setup = GUICtrlCreateButton("wciu_setup", 168, 168, 75, 25)
Global $ToteSimulator = GUICtrlCreateButton("ToteSimulator", 168, 128, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ####include <ButtonConstants.au3>

While 1
              $nMsg = GUIGetMsg()
              Switch $nMsg
                             Case $GUI_EVENT_CLOSE
                                           Exit

                             Case $QA_Tools
              EndSwitch
WEnd


While 1
              $nMsg = GUIGetMsg()
              Switch $nMsg
                             Case $GUI_EVENT_CLOSE
                                           Exit

                             Case $STerminal
                                           StartSSTerminal()

                             Case $SSTerminal
                                           StartTTerminal()

				  Case $exitapp
					  Exit

                             Case $BMT
                                           StartBMT()

                             Case $gw_test
                                           Startgw_test()


                             Case $gateway
                                           StartGateway()

                             Case $wciu
                                           StartWCIU()

                             Case $wciu_setup
                                           StartWCIUSetup()

                             Case $ToteSimulator
                                           StartToteSim()



              EndSwitch
WEnd






Func StartSSTerminal()
              Run('c:\track\wciu\wciu.exe', 'c:\track\wciu\')
              Run('C:\track\TERMINAL\self\nfvtac.exe', 'C:\track\TERMINAL\self\')
EndFunc   ;==>StartSSTerminal

Func StartTTerminal()
              Run('c:\track\wciu\wciu.exe', 'c:\track\wciu\')
              Run('C:\track\TERMINAL\tell\nstac.exe', 'C:\track\TERMINAL\tell\')
EndFunc   ;==>StartTTerminal

Func StartBMT()
                             Run('c:\track\run\decwnt.exe sport.opt', 'c:\track\run\')
EndFunc   ;==>StartBMT

Func Startgw_test()
              Run('gw_test.exe', 'c:\track\gw\')
EndFunc   ;==>Startgw_test

Func StartGateway()
              Run('c:\track\gateway\gateway.exe', 'c:\track\gateway')
EndFunc   ;==>StartGateway

Func StartWCIU()
              Run('c:\track\wciu\wciu.exe.', 'c:\track\wciu\')
EndFunc   ;==>StartWCIU

Func StartWCIUSetup()
              Run('c:\track\wciu\wciu_setup.exe', 'c:\track\wciu\')
EndFunc   ;==>StartWCIUSetup

Func StartToteSim()
              Run('C:\track\Tote_Simulator\ToteSimulator.exe', 'C:\track\Tote_Simulator\')
EndFunc   ;==>StartToteSim


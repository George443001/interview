#comments-start
; wait till the bmt is called
WinActivate("  - ")
WinActive ("  - ")
send ("{enter}")
sleep (500)
; log in using the username 
send ("sport{enter}")
sleep (500)
; logs in using the password
send ("sport{enter}")
#comments-end
#include <MsgBoxConstants.au3>

; Find a pure red pixel in the bottom right of the screen
; when an intercept is red when active
; when an intercept is black when expired
Local $Color = PixelSearch(900,900, 1300, 1300, 0x7f0000)
If Not @error Then
    ;MsgBox($MB_SYSTEMMODAL, "", "X and Y are: " & $Color[0] & "," & $Color[1])
EndIf

; Find a pure red pixel or a red pixel within 10 shades variations of pure red
$Color = PixelSearch(900,900, 1300, 1300, 0x7f0000, 10)
If Not @error Then
    ;MsgBox($MB_SYSTEMMODAL, "", "X and Y are: " & $Color[0] & "," & $Color[1])
EndIf
; ("  - ") is the name of the intercept window. 
WinActivate("  - ")
WinActive ("  - ")
;MouseMove ($Color[0],$Color[1])
MouseClick ("right",$Color[0],$Color[1],2)
; click the reject button
sleep (2000)
ControlClick ("Sport Bet Intercept","","Button3","left",1)
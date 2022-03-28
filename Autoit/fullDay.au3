# functions
Local $field

$field = ProcessExists ("Administrator: ")

Func copy_level()
    WinActivate ("Administrator:")
    send ("{enter}test" & $field)
EndFunc


copy_level()

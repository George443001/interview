Global $name, $password

$name = InputBox("Your Name", "Please enter your name", "youe name here")

$password = InputBox("Your password", "Please enter your password", "", "#")

MsgBox(0, "info", "your name is " & $name & " your password is " & $password)

ControlFocus (
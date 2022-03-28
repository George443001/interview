Global $first, $second, $third, $fourth, $total, $choice

$total = 0
$first = 100
$second = 150
$third = $first + $second
$fourth = 123



$choice = MsgBox(4, "SAW", "Would you like to play a game? ")
if $choice == 6 then $total = 1000
if $choice == 6 then MsgBox (0,"welcome", "we given you some funds to play with")
if $choice == 7 then MsgBox(0, "Total", "this is your " & $total & "$")




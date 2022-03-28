function display ($DisplaySettings){
    if     ($DisplaySettings -eq 1){
        displayswitch.exe /internal
        talk "display changed to main screen mode"
    }
    elseif ($DisplaySettings -eq 2) {
        displayswitch.exe /external
        talk "Display changed to screen 2 only"
    }
    elseif ($DisplaySettings -eq 3) {
        displayswitch.exe /extend
        talk "Display is changed to extended mode"
    }
    elseif ($DisplaySettings -eq 4) {
        displayswitch.exe /clone
        talk "Display is changed to duplicate both screens"
	}
	# if the user enters an invalid option
	else
	{
		write-host "
        1 = main screen
        2 = second screen 
        3 = extend screen
        4 = duplicate screens 
        " -ForegroundColor yellow -BackgroundColor black
		talk " this is not a valid option "
	}
}
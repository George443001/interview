
 clear-host 
 while (0 -eq 0){
	$color1 = get-random -maximum 6 -minimum 0
	$color2 = get-random -maximum 6 -minimum 0
	$date = get-date -format 'MMMM dd,yyyy hh:mm.s'
	clear-host
	if     ($color1 -eq 0){ $fcolor = 'green'}
	elseif ($color1 -eq 1){ $fcolor = 'black'}
	elseif ($color1 -eq 2){ $fcolor = 'Cyan'}
	elseif ($color1 -eq 3){ $fcolor = 'blue'}
	elseif ($color1 -eq 4){ $fcolor = 'red'}
	elseif ($color1 -eq 5){ $fcolor = 'yellow'}
	
	if     ($color2 -eq 0){ $bcolor = 'darkgray'}
	elseif ($color2 -eq 1){ $bcolor = 'Magenta'}
	elseif ($color2 -eq 2){ $bcolor = 'darkgreen'}
	elseif ($color2 -eq 3){ $bcolor = 'darkGray'}
	elseif ($color2 -eq 4){ $bcolor = 'darkyellow'}
	elseif ($color2 -eq 5){ $bcolor = 'darkred'}
	
	write-host "$date" -foregroundcolor $fcolor -backgroundcolor $bcolor
	sleep 1
 }
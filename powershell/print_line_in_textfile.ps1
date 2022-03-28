<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2021 v5.8.195
	 Created on:   	2/4/2022 11:31 AM
	 Created by:   	George
	 Organization: 	
	 Filename: select_line  	
	===========================================================================
	.DESCRIPTION
		you give it a file and a line numbber and
		it will print that line to the screen.

#>
$fileMaxline = 0
$file        = $null
$selectLine  = $null
clear-host 
get-date |write-host -foregroundcolor darkyellow
[string]$file = read-host "what file do you want to target? "
# error if the file done exist or incorrect path 
if ((test-path $file) -ne $true) { write-host "[thisfile dont exist]" -ForegroundColor yellow -BackgroundColor darkred }
Else
{
    # get the max line count in the file
	[long]$fileMaxline = (Get-Content $file | Measure-Object).count
	# ask the user what line do they want
    $selectLine = read-host "what line do you want ($fileMaxline is the limit)"
	# if the user gives a null answer ( fat fingers)
    if ($null -eq $selectLine) { write-host "no selection was given" -ForegroundColor yellow -BackgroundColor darkred }
	
    if ($selectLine -gt $fileMaxline) { write-host "the line you chose was above the limit" -ForegroundColor yellow -BackgroundColor darkred }
	$skip = $selectLine - 1
	get-content $file | Select-Object -skip $skip | Select-Object -first 1 | write-host -ForegroundColor white -BackgroundColor blue
}

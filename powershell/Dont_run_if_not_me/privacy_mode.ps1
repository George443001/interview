<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2022 v5.8.200
	 Created on:   	2/6/2022 3:47 PM
	 Created by:   	George
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		disable all networking adapters
   		WARNING dont run this on a remote connected computer. 

	Disclamer
		If your not me and and you run this, i am not responsable for what results you will get. 

#>
Clear-Host
get-date
Get-NetAdapter | Where-Object {$_.status -match 'Up'}
Write-Warning "are you sure you want to do this"
pause

$names = (Get-NetAdapter).name

foreach ($name in $names)
{
	if ((Get-NetAdapter -Name $name) -match 'Up')
	{
		Write-Host "stopping $name" -ForegroundColor Yellow -BackgroundColor darkred
		Disable-NetAdapter -Name $name  
	}	
}




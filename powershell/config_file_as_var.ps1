<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2021 v5.8.195
	 Created on:   	2/6/2022 1:45 PM
	 Created by:   	George
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		get text from a config file and apply them as a varable
#>
$config = "D:\Users\George\Documents\GitHub\interviews\powershell\config.ini"
function display
{
	Write-Host "$compname " -ForegroundColor yellow
	Write-Host "$path " -ForegroundColor yellow
	Write-Host "$number " -ForegroundColor yellow
	Write-Host "$boolianDataType" -ForegroundColor yellow
}


if ((Test-Path $config) -eq $true)
{
	$compname1 = Get-Content $config | Where-Object { $_ -match 'Computer name' }
	$compname = $compname1 -replace "computer name :", ""
	
	$path1 = Get-Content $config | Where-Object { $_ -match 'path'}
	$path = $path1 -replace "path :", ""
	
	
	$number1 = Get-Content $config | Where-Object { $_ -match 'number'}
	$number = $number1 -replace "number :", ""
	
	
	$boolianDataType1 = Get-Content $config | Where-Object { $_ -match 'bool'}
	$boolianDataType = $boolianDataType1 -replace "bool :", ""
	
	clear-host
	display
}



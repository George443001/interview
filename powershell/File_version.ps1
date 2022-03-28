
# the param is not mandatory, but gives a friendly message to fill in the parm if null
if ($null -eq $ParameterName) {$targetFile = read-host "what file do you want to check? "}
# if the location given is valid.
if ((test-path $targetFile) -eq $true)
{
    $targetFileVersion = [System.Diagnostics.FileVersionInfo]::GetVersionInfo("$targetFile").FileVersion
    write-host "$targetFileVersion" -foregroundColor cyan
}
#if the location the user gave is not valid
else
{
    write-host "Target File $targetFile is not found" -foregroundColor yellow
}
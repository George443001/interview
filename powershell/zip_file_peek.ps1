<#
use this to peek inside of a zip file to see its contents.
i use this to see the version data of the databases in db_share of tabhp2 server
#>
functon zip_peeker{
    param
        (
            [parameter(Mandatory = $true)]
            [string]$zipFilesPath,
            [parameter(Mandatory = $true)]
            [string]$TargetFileInZip
        )
    $zipFilesPath = Get-ChildItem "\\tabhp2\c$\db_share\*.zip"
    $TargetFileInZip = "version.dat"
    foreach ($EachZipFileInPath in $zipFilesPath){
        Add-Type -assembly "system.io.compression.filesystem"
        $PeakInside = [io.compression.zipfile]::OpenRead("$EachZipFileInPath")
        $file = $PeakInside.Entries | where-object { $_.Name -eq "$TargetFileInZip"}
        $PeakOutside = $file.Open()

        $reader = New-Object IO.StreamReader($stream)
        $textContents = $reader.ReadToEnd()
        if ($textContents -eq 'null'){
            $textContents = "no $TargetFileInZip Exist in $EachZipFileInPath"
            add-content -path C:\DB_version.txt -value "$textContents"
        }
        else {
            add-content -path C:\DB_version.txt -value "$textContents $EachZipFileInPath"
        }
        $reader.Close()
        $stream.Close()
        $PeakInside.Dispose()

        $textContents = "null"
        start-sleep -Milliseconds 250
    }
}
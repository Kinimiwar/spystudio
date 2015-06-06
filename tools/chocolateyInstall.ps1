$packageName = 'NektraSpyStudio' # arbitrary name for the package, used in messages
$installerType = 'EXE_MSI_OR_MSU' #only one of these: exe, msi, msu
$url = 'http://www.nektra.com/files/SpyStudio/SpyStudio-v2.zip' # download url
$url64 = 'http://www.nektra.com/files/SpyStudio/SpyStudio-v2-x64.zip' # 64bit URL here or remove - if installer decides, then use $url
$silentArgs = 'SILENT_ARGS_HERE' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"

Write-Output "*************************************************************"
Write-Output "*  INSTRUCTIONS: Type `"spystudio.exe`" to start SpyStudio. *"
Write-Output "*       More Info: http://www.rohitab.com/apimonitor        *"
Write-Output "*************************************************************"
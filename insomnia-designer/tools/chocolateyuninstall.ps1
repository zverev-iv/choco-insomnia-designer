$ErrorActionPreference = 'Stop';

$packageName = $env:ChocolateyPackageName
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\insomnia-designer\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Insomnia at $Env:USERPROFILE\AppData
Remove-Item "$Env:USERPROFILE\AppData\Local\insomnia-designer" -recurse
Remove-Item "$Env:USERPROFILE\AppData\Roaming\Insomnia Designer" -recurse

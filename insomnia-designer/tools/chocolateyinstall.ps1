$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/designer%402020.5.2/Insomnia.Designer-2020.5.2.exe'
  checksum      = 'A250E2565CDB81070F44C5BDDB1918F4E07ED6FD6EC6D7DE915DBEFA728D1F5F'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia Designer'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://fael-downloads-prod.focusrite.com/customer/prod/downloads/focusrite-control-3.17.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Focusrite-Control*' 

  checksum      = '3699e24a484b8995ddd2313e4d67fe6c346a76604d7bba316f7a543b0afed9e8'
  checksumType  = 'sha256'

  silentArgs   = '/SP- /VERYSILENT /NORESTART /SUPRESSMSGBOXES'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs 
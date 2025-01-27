$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://fael-downloads-prod.focusrite.com/customer/prod/downloads/focusrite_control_3.20.0.exe'


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Focusrite-Control*' 

  checksum      = '3d4e9aee3243293656ced425ab34d682bb6d754f5105b56e9a3d2f996d75b6c0'
  checksumType  = 'sha256'

  silentArgs   = '/SP- /VERYSILENT /NORESTART /SUPRESSMSGBOXES'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs 
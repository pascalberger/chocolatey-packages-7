﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/57daeefc879b/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.2.6f1.exe'
$checksum64     = '4ca276583a4c5e9c31c8aca411fec37d24eaf4614c795def3f3c970b9e63669f'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

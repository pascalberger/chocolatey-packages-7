﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/302b264628f9/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.19f1.exe'
$checksum64     = 'e5143f8a5be7a8da5935313e2f628fc0c1e4fe8c14e53e62acc05ac97b1eaa91'

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

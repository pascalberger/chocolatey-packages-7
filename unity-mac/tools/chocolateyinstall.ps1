﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1b156197d683/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.21f1.exe'
$checksum64     = '2d855d4ea5712279c0f4029bc36d90dbdd13fb99e5a038d864bc91aa2e119853'

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

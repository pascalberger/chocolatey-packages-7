﻿$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88c277b85d21/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.47f1.exe'
$checksum64     = '306a48ee968679303ac80ea8f6bbea9635e44d85bcb780a0348727dfc7989345'

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

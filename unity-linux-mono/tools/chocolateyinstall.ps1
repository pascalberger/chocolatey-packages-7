﻿$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/381b4941466e/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.5f1.exe'
$checksum64     = 'e6c83a0de41061dbf00666eb9ec0c5175110c8f5cfde1fd81231cfd0838744d3'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

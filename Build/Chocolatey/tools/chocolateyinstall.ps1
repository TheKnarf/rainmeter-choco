# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$versionFull  = "$env:ChocolateyPackageVersion.3632"
$versionShort = $env:ChocolateyPackageVersion

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = "https://github.com/rainmeter/rainmeter/releases/download/v$versionFull/Rainmeter-$versionShort.exe"
  softwareName  = 'rainmeter*'

  # You can also use checksum.exe (choco install checksum) and use it e.g. checksum -t sha256 -f path\to\file
  checksum      = '9B71DE08570B60C155B14F85AF08611812E9FAE2FFE3BD0CA58AB9AC85690F76'
  checksumType  = 'sha256'

  # MSI
  silentArgs    = "/S"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
powershell.exe -NoProfile -ExecutionPolicy unrestricted -Command "& {Import-Module '.\lib\psake.4.0.1.0\tools\psake.psm1'; invoke-psake -Framework '4.0' .\src\default.ps1 %1; if ($lastexitcode -ne 0) {write-host "ERROR: $lastexitcode" -fore RED; exit $lastexitcode} }" 

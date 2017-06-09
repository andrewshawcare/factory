#requires -runasadministrator

$PermissableExecutionPolicies = @("Bypass", "Unrestricted")
$ExecutionPolicy = Get-ExecutionPolicy

If ($ExecutionPolicy -notin $PermissableExecutionPolicies) {
  Write-Output "Execution policy is $($ExecutionPolicy). In order to execute this script the execution policy must be one of: $($PermissableExecutionPolicies -join ', ')."
  exit 1
}

Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
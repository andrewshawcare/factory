﻿$packageId = "AgileBits.1Password"

winget list --exact --id $packageId

if ($?) {
    Write-Host "${packageId} is already installed."
} else {
    winget install --exact --id $packageId --silent
}
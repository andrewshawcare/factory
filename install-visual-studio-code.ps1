﻿$packageId = "Microsoft.VisualStudioCode"

winget show --exact --id $packageId

if ($?) {
    Write-Host "${packageId} is already installed."
} else {
    winget install --exact --id $packageId --silent
}
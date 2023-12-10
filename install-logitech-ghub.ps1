$packageId = "Logitech.GHUB"

winget list --exact --id $packageId

if ($?) {
    Write-Host "${packageId} is already installed."
} else {
    winget install --exact --id $packageId --silent
    Remove-Item -Path "${env:PUBLIC}\Desktop\Logitech G HUB.lnk"
}
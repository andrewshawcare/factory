$packageId = "Docker.DockerDesktop"

winget list --exact --id $packageId

if ($?) {
    Write-Host "${packageId} is already installed."
} else {
    winget install --exact --id $packageId --silent
}
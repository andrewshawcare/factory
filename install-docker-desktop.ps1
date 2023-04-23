$packageId = "Docker.DockerDesktop"

winget show --exact --id $packageId

if ($?) {
    Write-Host "${packageId} is already installed."
} else {
    winget install --exact --id $packageId --silent
    Remove-Item -Path "${env:PUBLIC}\Desktop\Docker Desktop.lnk"
}
(New-Object System.Net.WebClient).DownloadFile(
    'https://downloads.nordcdn.com/apps/windows/10/NordVPN/6.2.4/NordVPNSetup.exe',
    "$($env:temp)\NordVPNSetup.exe"
)

Invoke-Expression "$($env:temp)\NordVPNSetup.exe /qb"
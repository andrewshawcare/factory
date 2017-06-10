Invoke-WebRequest `
  -Uri 'https://rink.hockeyapp.net/api/2/apps/0cb99692bcdb47abb89fad56dfd56d0c?format=zip' `
  -OutFile "$($env:temp)\1Password.exe"

Invoke-Expression "$($env:temp)\1Password.exe /VERYSILENT"
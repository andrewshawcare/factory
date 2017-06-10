Get-ChildItem install-*.ps1 |
ForEach-Object {
    & $($_.FullName)
}
function Remove-Application-From-Taskbar {
    param([string] $applicationName)
    
    $applicationsFolderClsid = '4234d49b-0245-4df3-b780-3893943456e1'

    try {
        (
            (New-Object -Com Shell.Application).NameSpace(
                "shell:::{${applicationsFolderClsid}}"
            ).Items() |
            Where-Object{$_.Name -eq $appname}
        ).Verbs() |
        Where-Object{$_.Name.replace('&','') -match 'Unpin from taskbar'} |
        ForEach-Object{$_.DoIt()}
        
        return "App '$appname' unpinned from Taskbar"
    } catch {
        Write-Error "Error Unpinning App! (App-Name correct?)"
    }
}
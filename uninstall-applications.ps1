function Uninstall-Application {
    param([string] $applicationName)

    Get-AppxPackage $applicationName | Remove-AppxPackage
}

Uninstall-Application('MicrosoftTeams')
Uninstall-Application('Microsoft.Paint')
Uninstall-Application('Microsoft.Getstarted')
Uninstall-Application('Microsoft.XboxIdentityProvider')
Uninstall-Application('Microsoft.WindowsNotepad')
Uninstall-Application('Microsoft.MicrosoftEdge.Stable')
Uninstall-Application('Microsoft.Windows.Photos')
Uninstall-Application('Microsoft.ZuneVideo')
Uninstall-Application('Microsoft.ZuneMusic')
Uninstall-Application('Microsoft.windowscommunicationsapps')
Uninstall-Application('Microsoft.WindowsCalculator')
Uninstall-Application('Microsoft.Todos')
Uninstall-Application('MicrosoftCorporationII.QuickAssist')
Uninstall-Application('MicrosoftCorporationII.MicrosoftFamily')
Uninstall-Application('Microsoft.YourPhone')
Uninstall-Application('Microsoft.XboxSpeechToTextOverlay')
Uninstall-Application('Microsoft.XboxGamingOverlay')
Uninstall-Application('Microsoft.XboxGameOverlay')
Uninstall-Application('Microsoft.WindowsSoundRecorder')
Uninstall-Application('Microsoft.WindowsMaps')
Uninstall-Application('Microsoft.WindowsFeedbackHub')
Uninstall-Application('Microsoft.People')
Uninstall-Application('Microsoft.MicrosoftStickyNotes')
Uninstall-Application('Microsoft.MicrosoftSolitaireCollection')
Uninstall-Application('Microsoft.MicrosoftOfficeHub')
Uninstall-Application('Microsoft.GetHelp')
Uninstall-Application('Microsoft.GamingApp')
Uninstall-Application('Microsoft.BingWeather')
Uninstall-Application('Microsoft.BingNews')
Uninstall-Application('Clipchamp.Clipchamp')
Uninstall-Application('MicrosoftWindows.Client.WebExperience')
Uninstall-Application('SpotifyAB.SpotifyMusic')
Uninstall-Application('Microsoft.OneDriveSync')


# TODO: Find all packages to remove with this command
Get-AppxPackage | Where-Object{$_.NonRemovable -eq $false} | Select-Object -Property Name, Publisher, IsFramework
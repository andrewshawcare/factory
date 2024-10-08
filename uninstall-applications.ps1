function Uninstall-Application {
    param([string] $applicationName)

    Get-AppxPackage $applicationName | Remove-AppxPackage
}

Uninstall-Application('Clipchamp.Clipchamp')

Uninstall-Application('Microsoft.BingNews')
Uninstall-Application('Microsoft.BingWeather')
Uninstall-Application('Microsoft.Copilot')
Uninstall-Application('Microsoft.GamingApp')
Uninstall-Application('Microsoft.GetHelp')
Uninstall-Application('Microsoft.Getstarted')
Uninstall-Application('Microsoft.HEIFImageExtension')
Uninstall-Application('Microsoft.HEVCVideoExtension')
Uninstall-Application('Microsoft.MicrosoftEdge.Stable')
Uninstall-Application('Microsoft.MicrosoftOfficeHub')
Uninstall-Application('Microsoft.MicrosoftSolitaireCollection')
Uninstall-Application('Microsoft.MicrosoftStickyNotes')
Uninstall-Application('Microsoft.OneDriveSync')
Uninstall-Application('Microsoft.OutlookForWindows')
Uninstall-Application('Microsoft.Paint')
Uninstall-Application('Microsoft.People')
Uninstall-Application('Microsoft.RawImageExtension')
Uninstall-Application('Microsoft.ScreenSketch')
Uninstall-Application('Microsoft.Todos')
Uninstall-Application('Microsoft.VP9VideoExtensions')
Uninstall-Application('Microsoft.WebMediaExtensions')
Uninstall-Application('Microsoft.WebpImageExtension')
Uninstall-Application('Microsoft.WidgetsPlatformRuntime')
Uninstall-Application('Microsoft.Windows.Photos')
Uninstall-Application('Microsoft.WindowsAlarms')
Uninstall-Application('Microsoft.WindowsCalculator')
Uninstall-Application('Microsoft.WindowsCamera')
Uninstall-Application('microsoft.windowscommunicationsapps')
Uninstall-Application('Microsoft.WindowsFeedbackHub')
Uninstall-Application('Microsoft.WindowsMaps')
Uninstall-Application('Microsoft.WindowsNotepad')
Uninstall-Application('Microsoft.WindowsSoundRecorder')
Uninstall-Application('Microsoft.Xbox.TCUI')
Uninstall-Application('Microsoft.XboxGameOverlay')
Uninstall-Application('Microsoft.XboxGamingOverlay')
Uninstall-Application('Microsoft.XboxIdentityProvider')
Uninstall-Application('Microsoft.XboxSpeechToTextOverlay')
Uninstall-Application('Microsoft.YourPhone')
Uninstall-Application('Microsoft.ZuneMusic')
Uninstall-Application('Microsoft.ZuneVideo')

Uninstall-Application('MicrosoftCorporationII.MicrosoftFamily')
Uninstall-Application('MicrosoftCorporationII.QuickAssist')

Uninstall-Application('MicrosoftTeams')

Uninstall-Application('MicrosoftWindows.Client.WebExperience')
Uninstall-Application('MicrosoftWindows.CrossDevice')

Uninstall-Application('SpotifyAB.SpotifyMusic')

# TODO: Find all packages to remove with this command
Get-AppxPackage | Where-Object{$_.NonRemovable -eq $false -and $_.IsFramework -eq $false} | Select-Object -Property Name, Publisher, IsFramework
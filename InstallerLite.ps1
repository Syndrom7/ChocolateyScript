$chocolateyAppList = "steam,origin,epicgameslauncher,vscode,python,composer,git,xampp-81,chrome,discord,spotify,vlc,7zip,winrar,bitwarden"
if ([string]::IsNullOrWhiteSpace($chocolateyAppList) -eq $false){   
    Write-Host "Chocolatey Apps Specified"  
    
    $appsToInstall = $chocolateyAppList -split "," | foreach { "$($_.Trim())" }

    foreach ($app in $appsToInstall)
    {
        Write-Host "Installing $app"
        & choco install $app /y
    }
}
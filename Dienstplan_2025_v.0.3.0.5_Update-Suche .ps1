function CheckIfUpdateIsAvailable {
    param (
        [string]$currentVersion = "0.3.0.5", # <----------- VERSION Examlpes: 0.0.1   0.0.1-alpha   0.0.1-beta   0.0.1-rc    0.0.1-release_candidate    0.0.1-stabile    0.0.1-stabile_version
        [string]$repoOwner = "RaptorXilef", # <----------- RaptorXilef
        [string]$repoName = "dienstplanJuS" # <----------- repository-Name Examlpe: UpdateCheckerPowerShell
    )

    # Definition der Funktion Get-LatestVersionFromGitHub zum abrufen der Versionsnummer aus tag_name von GitHub # Definition of the Get-LatestVersionFromGitHub function to retrieve the version number from tag_name from GitHub
    function Get-LatestVersionFromGitHub($releaseUrlApi) {
        # Variablen
        # $releaseUrlApi = "https://api.github.com/repos/$repoOwner/$repoName/releases" # <-------- Use this if you also want to check for pre-releases
        $releaseUrlApi = "https://api.github.com/repos/$repoOwner/$repoName/releases/latest"
        try {
            $response = Invoke-RestMethod -Uri $releaseUrlApi -Method Get
            $latestVersion = $response.tag_name
            return $latestVersion
        }
        catch {
            Write-Host "GitHub API not accessible." -ForegroundColor Red
            Write-Host "It was not possible to check whether an update is available." -ForegroundColor Red
            return $null
        }
    }

    # Funktion zur Trennung von Versionsnummer und Suffix # Function for separating version number and suffix
    function Split-Version {
        param (
            [string]$version
        )

        if ($version) {
            # Trennen der Version und des Suffix durch den Bindestrich # Separate the version and the suffix with the hyphen
            $version, $versionSurfix = $version -split "-"

            # Rückgabe der Ergebnisse # Return of the results
            return ,$version, $versionSurfix
        }
    }

    # Funktion zur Entfernung eines vorstehenden "v" # Function for removing a protruding "v"
    function Remove-vFromVersion {
        param (
            [string]$version
        )

        if ($version) {
#            Write-Host "String mit 'v': $version"
            # Überprüfen, ob der String mit "v" beginnt # Check whether the string begins with "v"
            if ($version.StartsWith("v")) {
                # Entfernen des "v" vom Anfang des Strings # Remove the "v" from the beginning of the string
                $version = $version.Substring(2)
#                Write-Host "String ohne 'v': $version"
            }

            # Rückgabe der Ergebnisse # Return of the results
            return $version
        }
    }

    # Funktion zur Konvertierung ins System.Version Format # Function for converting to System.version format
    function ConvertTo-SystemVersion {
        param (
            [string]$version
        )

        if ($version) {
            # Konvertieren des $version in Version # Convert the $version to version
            $version = [Version]$version

            # Rückgabe der Ergebnisse # Return of the results
            return $version
        }
    }

    # Funktion um jeder Pre-Releases-Bezeichnung einen Int-Wert zu zu ordnen # Function to assign an Int value to each pre-release designation
    function Test-IsVersionsSurfixChange {
        param (
            [string]$versionSurfix
        )
        if ($versionSurfix) {
            if ($versionSurfix -eq "alpha") {
                $versionSurfixValueAsNumber = [Int32]"1"
            } elseif ($versionSurfix -eq "beta") {
                $versionSurfixValueAsNumber = [Int32]"2"
            } elseif ($versionSurfix -eq "rc") {
                $versionSurfixValueAsNumber = [Int32]"3"
            } elseif ($versionSurfix -eq "release_candidate") {
                $versionSurfixValueAsNumber = [Int32]"3"
            } elseif ($versionSurfix -eq "stabile") {
                $versionSurfixValueAsNumber = [Int32]"4"
            } elseif ($versionSurfix -eq "stabile_version") {
                $versionSurfixValueAsNumber = [Int32]"4"
            } elseif ($versionSurfix -eq "") {
                $versionSurfixValueAsNumber = [Int32]"5"
            } else {
                $versionSurfixValueAsNumber = [Int32]"0"
            }
        } else {
            $versionSurfixValueAsNumber = [Int32]"5"
        }
        return $versionSurfixValueAsNumber
    }

    # Definition der Funktion CheckForUpdate zum Ausgeben, ob ein Update verfügbar ist, oder nicht. # Definition of the CheckForUpdate function to output whether an update is available or not.
    function Test-UpdateAvailable($currentVersion, $lastVersion, $repoOwner, $repoName) {
        $releaseUrl = "http://fmf.bplaced.net/projekte/dienstplan/releases/latest"
        if ($lastVersion) {
            if (($currentVersion -eq $lastVersion -and $currentVersionSurfixValueAsNumber -eq $lastVersionSurfixValueAsNumber) -or (($currentVersion -eq $lastVersion -and $currentVersionSurfixValueAsNumber -gt $lastVersionSurfixValueAsNumber) -or ($currentVersion -gt $lastVersion))) {
                Write-Host "Die installierte Version: $currentVersion ($currentVersionSurfix) ist aktuell." -ForegroundColor Green
                Start-Sleep -Seconds 5
            
            } elseif (($currentVersion -eq $lastVersion -and $currentVersionSurfixValueAsNumber -lt $lastVersionSurfixValueAsNumber) -or ($currentVersion -lt $lastVersion)) {
                $answerChoose = $false
                do {
                    Clear-Host
                    Write-Host "Ein Update ist verfügbar!" -ForegroundColor Yellow
                    Write-Host "Installierte Version: $currentVersion ($currentVersionSurfix), Neuste Version: $lastVersion ($lastVersionSurfix)"
                    $answer = Read-Host "Möchen Sie die Downloadseite der neusten Version in Ihrem Browser öffnen? (J/N)"

                    if ($answer -eq "J" -or $answer -eq "j" -or $answer -eq "Y" -or $answer -eq "y") {
                        $answerChoose = $true
                        Start-Process $releaseUrl
                    } elseif ($answer -eq "N" -or $answer -eq "n") {
                        $answerChoose = $true
                        Write-Host ""
                        Write-Host "Öffnen Sie die Seite $releaseUrl um das letzte Update herunterzuladen."
                        Read-Host "Drücken Sie eine Taste um fortzufahren ..."
                    } else {
                        Write-Host ""
                        Write-Host "Falsche Eingabe." -ForegroundColor Red
                        Start-Sleep -Seconds 1
                    }
                } while ($false -eq $answerChoose)
            
            }
        }
    }




    # Aufruf der Funktion Get-LatestVersionFromGitHub # Calling the Get-LatestVersionFromGitHub function
    $lastVersion = Get-LatestVersionFromGitHub $releaseUrlApi

    # Trennung von Versionsnummer und Suffix für aktuelle und letzte Version # Separation of version number and suffix for current and last version
    $currentVersion, $currentVersionSurfix = Split-Version -version $currentVersion
    $lastVersion, $lastVersionSurfix = Split-Version -version $lastVersion

    # Setzt die Versionsbezeichnung auf stabile wenn diese nicht gesetzt wurde # Sets the version designation to stabile if this has not been set
    if ($currentVersionSurfix) {} else {$currentVersionSurfix = "stabile"}
    if ($lastVersionSurfix) {} else {$lastVersionSurfix = "stabile"}

    # Entfernen des "v" vom Anfang des Strings, wenn es existiert # Remove the "v" from the beginning of the string if it exists
    $currentVersion = Remove-vFromVersion -version $currentVersion
    $lastVersion = Remove-vFromVersion -version $lastVersion

    # Konvertierung von $currentVersion von String in Version # Conversion of $currentVersion from string to version
    $currentVersion = ConvertTo-SystemVersion -version $currentVersion
    $lastVersion = ConvertTo-SystemVersion -version $lastVersion

    # Test-Ausgabe der aufgetrennten Versionen # Test-output of the split versions
#    Write-Host "Aktuelle Version: $currentVersion ($currentVersionSurfix)"
#    Write-Host "Neueste Version: $lastVersion ($lastVersionSurfix)"

    # Version-Surfix in nummerischen Wert umwandeln # Convert version surfix to numerical value
    $currentVersionSurfixValueAsNumber = Test-IsVersionsSurfixChange -versionSurfix $currentVersionSurfix
    $lastVersionSurfixValueAsNumber = Test-IsVersionsSurfixChange -versionSurfix $lastVersionSurfix

    # Aufruf der Funktion Test-UpdateAvailable # Call the Test-UpdateAvailable function
    Test-UpdateAvailable $currentVersion $lastVersion $repoOwner $repoName


}


# Abrufen der Funktionen # Calling up the functions
CheckIfUpdateIsAvailable
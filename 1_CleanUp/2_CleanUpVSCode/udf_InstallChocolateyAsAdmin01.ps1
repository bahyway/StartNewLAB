Function Install-Chocolatey {

    $AdminUser = Test-Administrator
    $testchoco = powershell choco -v
    IF (-not($testchoco)) {
        IF ($AdminUser) {
            Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
            & Set-Variable "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
        }
    }
    else {
        Write-Output "Chocolatey Version $testchoco is already installed"
    }
 

}
Install-Chocolatey
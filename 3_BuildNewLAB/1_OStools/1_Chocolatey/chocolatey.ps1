Function Test-Administrator {
    $currentUser = New-Object System.Security.Principal.WindowsPrincipal (
        [System.Security.Principal.WindowsIdentity]::GetCurrent()
    )
    $currentUser.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)
    Return $currentUser
}
###===============================================================================================================
###===============================================================================================================
Function Install-Chocolatey {

    $AdminUser = Test-Administrator
    $testchoco = powershell choco -v
    IF (-not($testchoco)) {
        IF ($AdminUser) {
            Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
            & SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
        }
    }
    else {
        Write-Output "Chocolatey Version $testchoco is already installed"
    }
 

}
Install-Chocolatey
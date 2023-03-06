Function udf_InstallChocolateyAsAdmin {

    $AdminUser = udf_TestAdministrator
    $testchoco = powershell choco -v
    IF (-not($testchoco) -and (-not (Test-Command choco))) {
        IF ($AdminUser) {
            Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
            & Set-Variable "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

            Write-Output "Configuring Chocolatey..."
            choco feature enable -n allowglobalconfirmation
            choco feature enable -n allowEmptyChecksums
            choco feature enable -n allowEmptyChecksumsSecure

            #Set environment variables so the above options are true when directly calling Chocolatey functions/commands:
            [Environment]::SetEnvironmentVariable("ChocolateyAllowEmptyChecksums", $true)
            [Environment]::SetEnvironmentVariable("ChocolateyAllowEmptyChecksumsSecure", $true)
            [Environment]::SetEnvironmentVariable("ChocolateyToolsLocation", "$env:ChocolateyInstall\Tools")


        }
        choco install chocolatey-core.extension -y

        choco install au -y # Automatic Chocolatey Package Update
    }
    else {
        Write-Output "Chocolatey Version $testchoco is already installed"
    }
 

}
udf_InstallChocolateyAsAdmin
Function UDF_InstallAppsUsingChoco {
    Param ([CmdletBinding()]
        [parameter(Mandatory = $true, Position = 0)]
        [String[]]$Packages         
    )
    BEGIN {
        Write-Host "###=========================================================================================" 
        Write-Host ("### UDF_InstallAppsusingChoco script Started at " + (Get-Date).ToLongTimeString() + ".")
        Write-Host "###========================================================================================="
        
    } 
    Process {
        If (Test-Path -Path "$env:ProgramData\Chocolatey") {
            ForEach ($PackageName in $Packages) {
                choco install $PackageName -y
            }
        }
        Else {
            # InstallChoco
            Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
            # DoYourPackageInstallStuff
            ForEach ($PackageName in $Packages) {
                choco install $PackageName -y
            }
        }
    }
    END {
        Write-Host "###=========================================================================================" 
        Write-Host ("### UDF_InstallAppsusingChoco script finished at " + (Get-Date).ToLongTimeString() + ".")
        Write-Host "###========================================================================================="
    }   
}
# use in each run another set of packages:
$Packages = 'sqlsentryplanexplorer', 'dbatools', 'sqlitepsprovider', 'rabbitmq', 'powershellplus', 'powershell-core', 'powershell-packagemanagement', `
    'stayawake.powershell', 'invokemsbuild', 'azuredatastudio-powershell', 'powershellbuild.powershell', 'dsc.powershellcommunity', 'posh-github', `
    'poshcode', 'psake', 'httprest', 'bettercredentials', 'ntfssecurity-psmodule', 'terminal-icons.powershell', 'azurepowershell', 'oh-my-posh', `
    'dotnetcore-sdk'
UDF_InstallAppsusingChoco  $Packages
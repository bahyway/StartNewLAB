<#--------------------
    Run remooveScoop.ps1 file from 
    within PowerShell Edittor
----------------------#>

# Set PowerShell Execution policy first
Set-Executionpolicy remotesigned -scope currentuser

# Uninstalling Scoop
scoop uninstall scoop 
# Broken Install
Remove-Item .\scoop -Force
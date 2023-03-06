<#
.Author
   Bahaa Fadam
.SYNOPSIS
    My own Module to install and uninstall Chocolatey Packages
.DESCRIPTION
    When this module is imported, the functions are loaded using dot sourcing. 
#>

param ( [switch]$IncludeExtended )

. ($PSScriptRoot + "\udf_EnsureChocolatey.ps1")

. ($PSScriptRoot + "\udf_TestAdministrator.ps1")

. ($PSScriptRoot + "\udf_InstallChocolateyAsAdmin.ps1")

if ($IncludeExtended) 
{
  Write-Host "Adding extended modules."
}
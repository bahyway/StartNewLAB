<#
.SYNOPSIS
  Set up a machine for SysAdmin responsibilities
.DESCRIPTION
  This script will install chocolatey and several utilities to get you started setting up a sysadmin box.
  This is intended to be installed on your personal machine where you will do your sysadmin work from.
  It will not work on a SAW.
.EXAMPLE
  ./SysadminSetupScript.ps1
.NOTES
  It requires Administrator privileges and at least Powershell 4.0.
.LINK
  http://www.microsoft.com
#>
function udf_AddChocolateyPackages {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        $PackageName,
        $Parameters,
        [switch]$Force
    )
    
    begin {
        $chocoExe = "$($env:ProgramData)\chocolatey\bin\choco.exe"
        $packages = &$chocoExe list --local-only --limit-output  | ForEach-Object {($_ -split '\|')[0]}
    }
    
    process {
        If(($packages -notcontains $PackageName) -or ($Force)){
            $cmd = "$chocoExe install $PackageName --confirm"
            if (!([System.String]::IsNullOrWhiteSpace($Parameters))) {
                $cmd += " --parameters ""$Parameters"""
            }
            if([System.Management.Automation.ActionPreference]::SilentlyContinue -ne $VerbosePreference) {
                $cmd += " --verbose"
            }
            if($Force) {
                $cmd += " --force"
            }
            write-verbose ">>> Running $cmd"
            Invoke-Expression -Command $cmd
        }
    }
    
    end {
        
    }
}

write-host ">>> Starting $(get-date)"
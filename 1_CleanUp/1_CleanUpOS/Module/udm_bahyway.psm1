<#
.Author
   Bahaa Fadam
.SYNOPSIS
    A simple module that uses dot sourcing to load the functions.
.DESCRIPTION
    When this module is imported, the functions are loaded using dot sourcing. 
    The Module Folder name must be equal to the module name.
.LINK
Powershell: Building a Module, one microstep at a time
https://powershellexplained.com/2017-05-27-Powershell-module-building-basics/

Chapter 10 - Script modules
https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/10-script-modules?view=powershell-7.3
#>

#  Get the path to the function files...
$functionpath = $PSScriptRoot + "\function\"

# Get a list of all the function file names...
$functionlist = Get-ChildItem -Path $functionpath -Name 

#  Loop over alll the files and dot source them into memory..
foreach ($function in $functionlist) 
{
    . ($functionpath + $function) 
}

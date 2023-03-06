Clear-Host
<#
Reading file data with PowerShell
================================:
https://www.sqlshack.com/reading-file-data-with-powershell/
#>
$extensions=New-Object System.IO.StreamReader(".\env\extensions\powershell_extensions.txt")
#Get-Content -Path ".\env\vscode\extensions\extensions.txt"

$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"
$readallextensions=$extensions.ReadToEnd()

ForEach ($ext in $readallextensions)  {
    if ($installed.Contains($ext)) {
       Write-Host $ext "already installed." -ForegroundColor Yellow -BackgroundColor DarkBlue
    }
    else {
        Write-Host "Installing" $ext "..." -ForegroundColor Black -BackgroundColor Gray
        code --install-extension $ext --force
    }
    $extensions.Dispose()
}

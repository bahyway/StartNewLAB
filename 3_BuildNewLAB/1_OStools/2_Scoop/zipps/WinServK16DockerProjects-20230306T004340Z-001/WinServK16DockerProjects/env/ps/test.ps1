# A system-wide install of VSCode might be in: "C:\Program Files\Microsoft VS Code\bin\code"
clear-host
    [string[]] $extensions = @(
        "ms-vscode.PowerShell"
        ,"ms-vscode.PowerShell-Preview"
        ,"justin-grote.powershell-extension-pack"
        ,"formulahendry.code-runner")

<#
try {
    $extensions | ForEach-Object {
        Write-Host " Installing " $_ " by Force!" -Foregroundcolor Yellow -BackgroundColor DarkBlue
        Code --install-extension $_ --force
    }    
}
catch {
    $_
}
#>
try{
$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"

foreach ($ext in $extensions) {
    if ($installed.Contains($ext)) {
        Write-Host $ext "already installed." -ForegroundColor White -BackgroundColor Blue
    }
    else {
        Write-Host "Installing" $ext "..." -ForegroundColor Black  -BackgroundColor White
        code --install-extension $ext --force
    }
}
}catch{
    # Catch any error
    Write-Host ("Failed to install " + $($ext.name)) -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
}
Finally
{
    # [Optional] Run this part always
    Write-Host "cleaning up ..."
}
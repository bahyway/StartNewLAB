
Clear-Host

$extensions=New-Object System.IO.StreamReader(".\env\extensions\vscode_extensions.txt")
#Get-Content -Path ".\env\vscode\extensions\extensions.txt"

$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"

While (($ext = $extensions.ReadLine()) {
    if ($installed.Contains($ext)) {
       Write-Host $ext "already installed." -ForegroundColor Gray -BackgroundColor DarkBlue
    }
    else {
        Write-Host "Installing" $ext "..." -ForegroundColor Black -BackgroundColor Yellow
        code --install-extension $ext --force
    }
    $extensions.Dispose()
}

<#
    After Uninstalling all <not basic> extensions from location:
    C:\Users\Bahaa\.vscode\extensions
    Restart VSCode to refresh it. 
#>
Remove-Item -PATH "$env:USERPROFILE\.vscode\extensions" -exclude "ms-vscode.PowerShell" `
-and "ms-vscode.PowerShell-Preview" -Recurse -Force 

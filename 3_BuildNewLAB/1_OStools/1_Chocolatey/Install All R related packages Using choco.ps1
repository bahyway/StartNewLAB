<#
Chocolatey detected you are not running from an elevated command shell
 (cmd/powershell).

 You may experience errors - many functions/packages
 require admin rights. Only advanced users should run choco w/out an
 elevated shell. When you open the command shell, you should ensure
 that you do so with "Run as Administrator" selected.
#>
$RunChoco ="choco install R.project R.Studio Pandoc rsvg-convert python python3 miktex -y"
Start-Process powershell -verb runas $RunChoco 
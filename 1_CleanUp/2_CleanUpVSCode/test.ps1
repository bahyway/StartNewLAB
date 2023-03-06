
# If any of the below fail with 429, wait one hour
# https://chocolatey.org/docs/community-packages-disclaimer#what-to-do-when-you-are-rate-limited

# install Powershell 7
udf_AddChocolateyPackages -PackageName "pwsh"

# Visual Studio Code and various extensions
#udf_AddChocolateyPackages -PackageName "vscode"
udf_AddChocolateyPackages -PackageName "vscode-powershell"
# BF : 
udf_AddChocolateyPackages -PackageName "ms-vscode.PowerShell-Preview"
udf_AddChocolateyPackages -PackageName "vscode-gitignore"
udf_AddChocolateyPackages -PackageName "vscode-gitlens"
udf_AddChocolateyPackages -PackageName "vscode-icons"
udf_AddChocolateyPackages -PackageName "vscode-kubernetes-tools"
udf_AddChocolateyPackages -PackageName "vscode-mssql"
udf_AddChocolateyPackages -PackageName "vscode-yaml"

udf_AddChocolateyPackages -PackageName "sysinternals"

udf_AddChocolateyPackages -PackageName "git"

# remote server admin tools
udf_AddChocolateyPackages -PackageName "rsat"

<#
# SQL Server tools
udf_AddChocolateyPackages -PackageName "azure-data-studio"
udf_AddChocolateyPackages -PackageName "azure-data-studio-sql-server-admin-pack"
udf_AddChocolateyPackages -PackageName "azuredatastudio-powershell"
udf_AddChocolateyPackages -PackageName "ssms"

#>

# Kubernetes client
udf_AddChocolateyPackages -PackageName "kubernetes-cli"
udf_AddChocolateyPackages -PackageName "kubernetes-helm"

# Azure clients
udf_AddChocolateyPackages -PackageName "azure-cli"
udf_AddChocolateyPackages -PackageName "microsoftAzureStorageExplorer"

# Docker Tools
udf_AddChocolateyPackages -PackageName "ms-azuretools.vscode-docker"
udf_AddChocolateyPackages -PackageName "formulahendry.docker-explorer"
udf_AddChocolateyPackages -PackageName "formulahendry.docker-extension-pack"
udf_AddChocolateyPackages -PackageName "george3447.docker-run"
udf_AddChocolateyPackages -PackageName "TqrHsn.vscode-docker-registry-explorer"
udf_AddChocolateyPackages -PackageName "sandipchitale.docker-dive"
udf_AddChocolateyPackages -PackageName "jonrad.docker-diary-vscode"
udf_AddChocolateyPackages -PackageName "david-reis.dockerlive"
udf_AddChocolateyPackages -PackageName "balaprasanna.bala-bks-docker-snippets"
udf_AddChocolateyPackages -PackageName "jeff-hykin.better-dockerfile-syntax"
udf_AddChocolateyPackages -PackageName "QuentinGruber.dockerfiletemplate"
udf_AddChocolateyPackages -PackageName "redhat.vscode-yaml"
udf_AddChocolateyPackages -PackageName "haranjackson.vscode-docker-ipython"
udf_AddChocolateyPackages -PackageName "ms-vscode-remote.remote-containers"
udf_AddChocolateyPackages -PackageName "Nodixo.pytest-in-docker"
udf_AddChocolateyPackages -PackageName "foxundermoon.shell-format"
udf_AddChocolateyPackages -PackageName "exiasr.hadolint"
udf_AddChocolateyPackages -PackageName "marquesmps.dockerfile-validator"
udf_AddChocolateyPackages -PackageName "aaron-bond.better-comments"
udf_AddChocolateyPackages -PackageName "okteto.remote-kubernetes"
udf_AddChocolateyPackages -PackageName "ilevine.squash"
udf_AddChocolateyPackages -PackageName "bmuskalla.vscode-tldr"
udf_AddChocolateyPackages -PackageName "2ndshift.fresh-material"
udf_AddChocolateyPackages -PackageName "Shan.code-settings-sync"

udf_AddChocolateyPackages -PackageName "7zip"
udf_AddChocolateyPackages -PackageName "beyondcompare"

udf_AddChocolateyPackages -PackageName "cascadiacodepl"
udf_AddChocolateyPackages -PackageName "dropbox"
udf_AddChocolateyPackages -PackageName "box-drive"
udf_AddChocolateyPackages -PackageName "google-drive-file-stream"


udf_AddChocolateyPackages -PackageName "darktable"
udf_AddChocolateyPackages -PackageName "thunderbird"
udf_AddChocolateyPackages -PackageName "microsoft-windows-terminal"
udf_AddChocolateyPackages -PackageName "firefox"
udf_AddChocolateyPackages -PackageName "discord"
udf_AddChocolateyPackages -PackageName "choco-cleaner"
udf_AddChocolateyPackages -PackageName "choco-upgrade-all-at" -Parameters "'/DAILY:yes /TIME:07:00 /ABORTTIME:10:00'"

write-host ">>> Finished $(get-date)"
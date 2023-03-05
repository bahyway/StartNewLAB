<#------------------------------------------------------------------------#>
<#  Add Extensions only for
    =======================:
    1): Python
    2): PostgreSQL 
    3): Docker
    4): Remote SSH
    5): GitHub
    6): PDF
    7): AsciiDoc
    7): Markdown

--------------------------------------------------------------------------#>
<#------------------------------------------------------------------------#>
# Script for batch installing Visual Studio Code extensions
# Specify extensions to be checked & installed by modifying $extensions

$extensions =
# Remote SSH & Development
"ms-vscode-remote.remote-ssh",
"ms-vscode.remote-explorer",
"ms-vscode-remote.vscode-remote-extensionpack",
# GitHub 
"GitHub.copilot",
"eamodio.gitlens",
"donjayamanne.githistory",
"mhutchie.git-graph",
"arturock.gitstash",
"TeamHub.teamhub",
"ivangabriele.vscode-git-add-and-commit",
"letmaik.git-tree-compare",
"GitHub.codespaces",
"vinirossa.vscode-gitandgithub-pack",
# GitHub Gist Explorer
"k9982874.github-gist-explorer",
# Git Pull request
"GitHub.vscode-pull-request-github",
#GitHub Theme
"GitHub.github-vscode-theme",
"thenikso.github-plus-theme",
# GitHub Repositories
"GitHub.remotehub",
"henriqueBruno.github-repository-manager",
# GitHub Actions
"cschleiden.vscode-github-actions",
# Open in GitHub
"fabiospampinato.vscode-open-in-github",
# GitHub Linker
"gimenete.github-linker",
# GitHub Notification
"fabiospampinato.vscode-github-notifications-bell",
# GitHub Folder
"PeterHdd.github-folder",
# Open in GitHub Desktop
"wraith13.open-in-github-desktop",
# GitHub Pull Request Monitor
"erichbehrens.pull-request-monitor",
# Python
"MikeShaker.python-essentials",
"ms-python.python",
"rohit-chouhan.sqlite-snippet",
# Preview on Web Server
"yuichinukiyama.vscode-preview-server",
# Docker
"ms-azuretools.vscode-docker",
"formulahendry.docker-explorer",
# PostgreSQL
"ckolkman.vscode-postgres",
"ms-ossdata.vscode-postgresql",
# tool to save your settings as a gist
"Shan.code-settings-sync",
# PDF
"tomoki1207.pdf",
# AsciiDoc
"asciidoctor.asciidoctor-vscode",
# Markdown
"yzhang.markdown-all-in-one",
"starkwang.markdown"

$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"

foreach ($ext in $extensions) {
    if ($installed.Contains($ext)) {
        Write-Host $ext "already installed." -ForegroundColor Gray
    }
    else {
        Write-Host "Installing" $ext "..." -ForegroundColor White
        code --install-extension $ext
    }
}




<#------------------------
1): Create a New Hyper-V Virtual Machine as Development LAB
2): Create an updateScoop.ps1 file and use it in the VM startup
3): Set this command in the updateScoop.ps1 file : scoop update all
4): After Installing Scoop there is NO need to remove it.
5): Use the following command to show all Scoop commands : scoop h
6): you can get a list of all installed scoop buckets , by running this command : scoop bucket list
7): To search for any app to install ,for example python: scoop search python/*
8): This way only some apps will be accept to run on other workers laptops 
   <in case to prevent them from having other apps>.
9): Search for new buckets contains new apps , in case you need it.
10): To run the file "scoopEnvironment.ps1" again , you need to delete the whole content of scoop folder
     , in scoop folder tlocation:C:\Users\Administrator\scoop\.
--------------------------#>



# Set PowerShell Execution policy first
Set-Executionpolicy remotesigned -scope currentuser


# Install Scoop
#Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression
Invoke-Expression  "& {$(Invoke-WebRequest get.scoop.sh)} -RunAsAdmin" 

# Install multiple Buckets
scoop bucket add extras
scoop bucket add nerd-fonts
scoop bucket add nonportable

# Even if you're not using Git, Scoop uses it to perform updates.
scoop install git

# Update the buckets you added
scoop update

# First Docker & GitHub
scoop install docker
scoop install github

# Browsers ,Web Tech & TextEditor
scoop install googlechrome googlechrome-canary firefox firefox-nightly
scoop install notepadplusplus nano vim
scoop install nvm nodejs OpenSSL mkcert 
scoop install sysinternals

# command line tools and helpers
scoop install 7zip gzip zip unzip
scoop install sudo
scoop install windows-terminal
scoop install cmder-full
scoop install ffmpeg
scoop install hugo-extended
scoop install rclone
scoop install restic
scoop install wget
scoop install imagemagick memcached 

# Install Databases
scoop install dbeaver 
scoop install sql-server-management-studio-np
scoop install sqlitebrowser

#

# GUI tools
scoop install filezilla
#scoop install gimp
scoop install IrfanView
scoop install imgburn
scoop install keepassxc
scoop install mremoteng
scoop install pdfsam
scoop install notepadplusplus
scoop install handbrake
scoop install vlc
scoop install sumatrapdf keepassxc inkscape

# Visual Studio Code and Visual Studio Code Insiders (VSCode is already installed,Here!)
scoop install vscode vscode-insiders

# Helm is the package manager for Kubernetes
scoop install Helm
# Okular - KDE PDF viewer
scoop install okular
# OBS Studio - screen video recording and streaming


# Python & R
scoop install Python
scoop install latex r
scoop install gvim rstudio  

# Insomnia. Insomnia is a REST Client
scoop install insomnia

# admin / sudo permissions required
sudo scoop install openvpn
<#

# you can check the installed applications with
scoop list

# If you want to check what app is out of date, you can run the following commands
scoop update

scoop status
# If you want to update more then one app, you can simply run
scoop update *

# Keep in mind that this is not the same as scoop update. You need to run scoop update first to update applications.
#>
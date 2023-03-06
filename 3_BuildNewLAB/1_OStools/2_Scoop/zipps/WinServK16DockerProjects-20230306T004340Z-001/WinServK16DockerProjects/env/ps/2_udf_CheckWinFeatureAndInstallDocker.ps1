[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

function udf_CheckWinFeatureAndInstallDocker() {
  $containersFeature = (Get-WindowsOptionalFeature -FeatureName Containers -Online)
  if (-not $containersFeature -or $containersFeature.State -ne 'Enabled') 
  {
      ## Install Windows Containers Feature on Windows Server 2016
      Write-Host "Install Windows Containers Feature on Windows Server 2016" -ForegroundColor Yellow -BackgroundColor -Green
      Install-WindowsFeature Containers

      # Install NuGet
      Write-Host "Install NuGet" -ForegroundColor Yellow -BackgroundColor -Green
      Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force

      Write-Host "Configure PSGallery trust policy" -ForegroundColor Yellow -BackgroundColor -Green
      Set-PSRepository -InstallationPolicy Trusted -Name PSGallery

      Write-Host "Install-Module DockerProvider" -ForegroundColor Yellow -BackgroundColor -Green
      Install-Module DockerMsftProvider -Force

      Write-Host "Install-Package Docker" -ForegroundColor Yellow -BackgroundColor -Green
      Install-Package -Name docker -ProviderName DockerMsftProvider -Force

      Write-Host "Installing docker-compose" -ForegroundColor Yellow -BackgroundColor -Green
      (New-Object Net.WebClient).DownloadFile('https://github.com/docker/compose/releases/download/1.23.2/docker-compose-Windows-x86_64.exe', "$env:ProgramFiles\Docker\docker-compose.exe")

      Write-Host "Starting Docker" -ForegroundColor Yellow -BackgroundColor -Green
      Start-Service docker

  }
else {
      Restart-Computer -Force
  }
  }
udf_CheckWinFeatureAndInstallDocker
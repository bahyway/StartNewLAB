<#
Build and run your first Docker Windows Server container
=============================================================================:
https://www.docker.com/blog/build-your-first-docker-windows-server-container/

Docker Engine is now running as a Windows service, listening on the default Docker named pipe. 
For development VMs running (for example) in a Hyper-V VM on Windows 10, it might be advantageous 
to make the Docker Engine running in the Windows Server 2016 VM available to the Windows 10 host:
#>
# Open firewall port 2375
netsh advfirewall firewall add rule name="docker engine" dir=in action=allow protocol=TCP localport=2375

# Configure Docker daemon to listen on both pipe and TCP (replaces docker --register-service invocation above)
Stop-Service docker
dockerd --unregister-service
dockerd -H npipe:// -H 0.0.0.0:2375 --register-service
Start-Service docker

<#
The Windows Server 2016 Docker engine can now be used from the VM host by setting DOCKER_HOST:
-----------------------------------------------------------:
To Get the VM IP Address, I create a needed Static IP Address on the VM using this link as help:

Static IP assigned to Windows Server 2016 running as a VM on VirtualBox
https://forums.virtualbox.org/viewtopic.php?f=2&t=91156

1): Create Bridgue Network on the VirtualBox VM, using "Ethernet" and NOT an "Wifi" because wifi sometimes not work.
2): from the VM itself run on powershell : ipconfig /all
3): Check the IP Address (preferable) for the Network location of (Physical Address. . . . . . . . . : 08-00-27...)- this is the VM
4): Add all as it is mentioned on powershell prompt:
   IPv4 Address. . . . . . . . . . . : 10.0.2.15(Preferred)
   Subnet Mask . . . . . . . . . . . : 255.255.255.0
   Default Gateway . . . . . . . . . : 10.0.2.2
   DNS Servers . . . . . . . . . . . : 192.168.2.254
   Alternative DNS . . . . . . . . . : 8.8.8.8 --> This one I did it.

PS C:\Users\Administrator> ping www.google.com

Pinging www.google.com [142.250.179.196] with 32 bytes of data:
Reply from 142.250.179.196: bytes=32 time=11ms TTL=59
Reply from 142.250.179.196: bytes=32 time=10ms TTL=59
Reply from 142.250.179.196: bytes=32 time=11ms TTL=59
Reply from 142.250.179.196: bytes=32 time=11ms TTL=59

Ping statistics for 142.250.179.196:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 10ms, Maximum = 11ms, Average = 10ms
PS C:\Users\Administrator>
------------------------------------------------------------
# And then restart , you will see that the Internet is running and you get your static IP Address.
#>
#$env:DOCKER_HOST = "<ip-address-of-vm>:2375"
$env:DOCKER_HOST = "10.0.2.15:2375"

<#
Running Windows containers
First, make sure the Docker installation is working:

> docker version
--------------------------------
Next, pull a base image that’s compatible with the evaluation build, re-tag it and to a test-run:
--------------:
Check this link for the "Docker Pull latest" Error
----------------------------------------------------:
Error response from daemon: pull access denied for microsoft/windowsservercore, 
repository does not exist or may require 'docker login': denied: requested access to the resource is denied
Unable to find image 'microsoft/windowsservercore:latest' locally
docker: Error response from daemon: pull access denied for microsoft/windowsservercore, 
repository does not exist or may require 'docker login': denied: requested access to the resource is denied.
See 'docker run --help'.
-----------------------------------------------------
Windows Server 2019 Now Available
===================================:
https://techcommunity.microsoft.com/t5/containers/windows-server-2019-now-available/ba-p/382430
#>
## TEST Pulling the following:
#docker pull microsoft/windowsservercore
#docker pull microsoft/windowsservercore:ltsc2016

docker pull mcr.microsoft.com/windows/servercore:1809
<#
I've got another Error now
===========================:
1809: Pulling from windows/servercore
no matching manifest for windows/amd64 10.0.14393 in the manifest list entries
Unable to find image 'microsoft/windowsservercore:latest' locally
docker: Error response from daemon: pull access denied for microsoft/windowsservercore, repository does not exist or may require 'docker login': 
denied: requested access to the resource is denied.
See 'docker run --help'.
=========================
#>
#Here’s the old string for pulling a container
docker pull microsoft/windowsservercore:ltsc2016
docker pull microsoft/nanoserver:1709

#Change the string to the new syntax and use the same tag
docker pull mcr.microsoft.com/windows/servercore:ltsc2016
docker pull mcr.microsoft.com/windows/nanoserver:1709

<#
PS Z:\_AllProjects\WinServK16DockerProjects> docker images
REPOSITORY                             TAG        IMAGE ID       CREATED       SIZE
mcr.microsoft.com/windows/servercore   ltsc2016   f11cd340a3ed   3 weeks ago   12GB
PS Z:\_AllProjects\WinServK16DockerProjects> docker run f11cd340a3ed  hostname
f0c012c61fb0
PS Z:\_AllProjects\WinServK16DockerProjects>

#>
docker run f11cd340a3ed  hostname

<#
First Steps: Docker and Containers in Windows Server 2016
=========================================================:
https://petri.com/first-steps-docker-containers-windows-server-2016

Create a New Image
We can now build a new image using the previously downloaded Windows Server image as a starting point. Before starting, 
you’ll need a Docker ID. If you don’t already have one, sign up for a Docker account here.

Docker images are usually created from Docker file recipes, but for the purposes of the demonstration, we’ll run a command 
on the image we downloaded, create a new image based on the change, and then upload it to Docker so that it’s accessible from the cloud.

#>
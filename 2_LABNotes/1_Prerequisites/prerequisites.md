# **_prerequisites_**

I need the following to be installed on my Laptop befor ***Building any New Development LAB*** using VSCode , Docker & GitHub:
1. ***Chocolatey*** &/Or ***Scoop***, to Automate  and Silently install all other needed apps.
   1. Using **_Scoop_** means creating optionally a **_Scoop Bucket_**.
   2. Using **_Chocolatey_** needs ***Administrator*** Privileges.
2. ***Git*** for ***Scoop***.
3.  ***VSCode*** for running ***Scoop*** and/or ***Chocolatey*** scripts that will install any other needed to install apps for your project on your own Laptop &/or within Docker Container.
4. ***GitHub*** New Account for Creating ***New Repository***.
5. ***Git Bash*** for connecting to ***GitHub*** from command line of your local machine.
6. ***GitHub Desktop*** for connecting to ***GitHub Repository*** and ***VSCode*** from your local machine.
7. ***Docker Desktop*** to connect to Docker containers localy.
```scoop
scoop install docker
```
Then Check to see if **_Docker_** is running, use the shell and write:
```cmd
docker version
```


8. ***VScode GitHub Extensions*** & ***VSCOde Docker Extensions*** to connect to both apps from ***VSCode***.

<spin style="color:red"> ***Install Remote Container Extension in VSCode*** </spin>
```bash
code --install ms-vscode-remote.vscode-remote-extensionpack
code --install ms-vscode-remote.remote-ssh
```


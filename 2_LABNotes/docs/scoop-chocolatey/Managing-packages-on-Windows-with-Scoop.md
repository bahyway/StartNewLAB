## **_Managing packages on Windows with Scoop_**

<img src="../logo/Me_.ico" width="50">

The goal of ***Package Management*** is to simplify the installing, upgrading, configuring and removing software.One of the key features is ***Dependency management:*** if your software depends on some other software that isn’t already installed, the package manager will give you the option to install it.

## **_How is Scoop different from Chocolatey?_**
- ***Installs to ~/scoop/ by default***. You can set up your own programs and not worry that they'll interfere with other users' programs (or theirs with yours, perhaps more importantly). You can optionally choose to install programs system-wide if you have administrator rights.
- ***No UAC popups, doesn't require admin rights***. Since programs are installed just for your user account, you won't be interrupted by UAC popups.
- ***Doesn't pollute your path.*** Where possible, Scoop puts your program shims in a single directory and just adds that to your path.
- <span style="color:blue">***Doesn't use NuGet.***</span> NuGet is a great solution to the problem of managing software library dependencies. Scoop avoids this problem altogether: each program you install is isolated and independent.
- ***Simpler than packaging.*** Scoop isn't a package manager, rather it reads plain JSON manifests that describe how to install a program and its dependencies.
- ***Simpler app repository.*** Scoop just uses Git for its app repository. You can create your own repo, or even just a single file that describes an app to install.
- ***Can't always install a specific version of a program.*** For some programs, scoop can install an older version of a program, via ```scoop install app@version```. For example, ```scoop install curl@7.56.1```. This functionality only works if the old version is still available online. Some older versions have specific installers, such as Python 2.7 and Ruby 1.9, which are commonly required. These can be installed from the versions bucket via```scoop install python27``` and ```scoop install ruby19```.

> ***NOTE***                         
> While it would be easy to install Skype with Scoop, this will probably never be in Scoop's main bucket (app repository). Scoop focuses on open-source, command-line developer tools. The scoop extras bucket is for non developer tools.


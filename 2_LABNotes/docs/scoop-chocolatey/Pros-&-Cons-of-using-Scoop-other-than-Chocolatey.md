<p align="center">

# **_Pros & Cons of using Scoop other than Chocolatey_**

<img src="../logo/Me_.ico" width="50">

## **_Chocolatey Pros_**
* <span style="color:#3498DB">***Pro Chocolatey***</span>: ***Large number of applications/utilities available:***   
Chocolatey has a massive community package repository of installs (more than 9,000 packages), and its open nature allows everyone to contribute more as needed.

* <span style="color:#3498DB">***Pro Chocolatey***</span>: ***silently Installs***
Installs silently without crapware.

* <span style="color:#3498DB">***Pro Chocolatey***</span>: ***Scriptable***
You can put Chocolatey install commands into your powershell scripts.
* <span style="color:#3498DB">***Pro Chocolatey***</span>: ***Upgrade all software with one command***
choco upgrade all is like Windows Update for all of your 3rd party software. ... or for the more succinct command use 'cup' !!
* <span style="color:#3498DB">***Pro Chocolatey***</span>: ***Downloaded files are verified by checksums.***
Chocolatey requires checksums by default for files downloaded over non-secure locations and highly recommends it for HTTPS/SSL locations. It is moving towards requiring checkums by default for downloading from secure locations.
* <span style="color:#3498DB">***Pro Chocolatey***</span>: ***Manages the entire software lifecycle**
From install to upgrade to uninstall, Chocolatey manages the whole process.
* <span style="color:#3498DB">***Pro Chocolatey***</span>: ***GUI available***
There's a package called ChocolateyGUI that can be installed and lets you use Chocolatey with a UI frontend.
* <span style="color:#3498DB">***Pro Chocolatey***</span>:  ***Support and features available for organizations***
There is a business edition available for organizations that need more support. The business edition also includes a Package Synchronizer, Package Internalizer, Package Builder, and a host of other features.
* <span style="color:#3498DB">***Pro Chocolatey***</span>:  ***Can be extended with PowerShell***
Chocolatey allows installing extension packages that add PowerShell functions to your package automation scripts.

## **_Chocolatey Cons_**

* <span style="color:#E74C3C">***Con Chocolatey***</span>:  ***Some package installs aren't good or polished or don't install well***
For Example:
    - Macrium downloads the online installer
    - 7-zip doesn't associate files
    - PotPlayer is outdated                    
* <span style="color:#E74C3C">***Con Chocolatey***</span>: ***Incomplete and conflicting package options***
Not enough maintenance done to package library so there are different similarly-named or -versioned packages available, some broken and some not.
* <span style="color:#E74C3C">***Con Chocolatey***</span>: ***Sometimes hard to know which package to install from community package repository***
The community repository contains multiple packages with similar names, making it hard to know which one to install. This is of course only related to using Chocolatey with the community repository, and you can look up the number of downloads to see which are the most widely used.
* <span style="color:#E74C3C">***Con Chocolatey***</span>: ***Unable to easily change your install directory in the free version***
In the free version you must know the native installer switches and pass them through with install args. In the paid versions you have a ubiquitous install directory option where Chocolatey determines how to properly pass that to the underlying native installer.
* <span style="color:#E74C3C">***Con Chocolatey***</span>: ***Buggy***
Slow, many packages fail to install, and config can corrupt causing it to not be able to manage packages anymore, leading to a bunch of installed and non-updateable software
* <span style="color:#E74C3C">***Con Chocolatey***</span>: ***Uploading packages can be time consuming***
It can take weeks to have a package accepted and with a fair amount of resubmitting for the dev/ maintainer.
* <span style="color:#E74C3C">***Con Chocolatey***</span>: ***Can not download asynchronously***

## **_Scoop Pros_**
* <span style="color:#2ECC71 ">***Pro Scoop***</span>:***App installs are independent and self-contained; therefore, they have fewer conflicts and are easier to uninstall***
* <span style="color:#2ECC71 ">***Pro Scoop***</span>:***Apps are installed without requiring admin permission***
Installing for all users requires admin permissions in order to be secure, so scoop installs without that requiring an elevated command prompt.
* <span style="color:#2ECC71 ">***Pro Scoop***</span>:***App packages install locally (so users can preserve their own environment) or globally***
* <span style="color:#2ECC71 ">***Pro Scoop***</span>:***Users can easily create their own apps and collections of apps***
* <span style="color:#2ECC71 ">***Pro Scoop***</span>:***Absolutely zero costs***                         Unlike some competitors, there is no free nor paid version, simply the FLOSS software as it is built.
* <span style="color:#2ECC71 ">***Pro Scoop***</span>:***Installed packages verified by checksums***
* <span style="color:#2ECC71 ">***Pro Scoop***</span>:***Easy to upgrade installed Packages***                                                                               Easy to upgrade installed packages, unlike in Chocolately which makes you pay for upgrade feature.
* <span style="color:#2ECC71 ">***Pro Scoop***</span>:***Simple versioning model for dependencies***                             
In Chocolatey, if a package declares dependencies on a bad version of a package, installation or upgrade might break. Scoop dependencies are the latest version of a package, which reduces the chance of things breaking.
* <span style="color:#2ECC71 ">***Pro Scoop***</span>:***Sets reasonable default configuration options for apps***
E.g. installing npm configures the global package prefix to your local app folder, and curl includes the Mozilla CA list.
* <span style="color:#2ECC71 ">***Pro Scoop***</span>:***Customisable selection***
If the standard package selection isn't enough for you, you can easily find additional "buckets" that suit your needs. You can also create your own and share them.

## **_Scoop Cons_**

* <span style="color:#E74C3C">***Cons Scoop***</span>:***Has a smaller selection of packages than Chocolatey***
While Chocolatey seems to have a huge selection of packages including some windows updates, Scoop has a much smaller selection mainly focused on command-line tools. However, it can be argued that Scoop is focusing on a different type of setup than Chocolatey so package count may not be a good comparison.
* <span style="color:#E74C3C">***Cons Scoop***</span>:***Doesn't handle orphan packages***
Package maintainers can add other needed packages, but if a package gets uninstalled, it doesn't mark other packages as orphans.
(No package relation trees)

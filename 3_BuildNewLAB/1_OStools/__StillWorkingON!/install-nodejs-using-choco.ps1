cls
<#
choco-install-guide.md
=======================:
https://gist.github.com/krayfaus/2a68fbc7386d3cdbcb45c577b1d4bae8

Install NPM using Chocolatey on Windows
=======================================:
https://vocon-it.com/2019/11/19/install-npm-using-chocolatey-on-windows/

PS: RUN EACH COMMAND SEPARATELY
#>
<# Uninstal Node.js if its already installed#>
choco uninstall -y --force nodejs-lts
<# Install Node #>
choco install -y --force nodejs-lts 

<#
type on the terminal : node -v
to check if the installation was correct, if it returns erro of not found , run the following in the powershell:
-----------------------------------------------------------------------------------------------------------------
$env:path -split ';' | Select-String nodejs

if you get the location , then restart powershell ( vscode), after restarting as administrator, you will get the fllowing:

PS Microsoft.PowerShell.Core\FileSystem::\\tsclient\E\[WebSite_Project]\Projects\Nodejs_Project> node -v
v18.12.1

#>
cls
<# install npm = [Node Package manager]#>
npm i -g npm 

<# check version:
npm -v
# output:
9.a.3
#>
<# Install Angular CLI #>
npm i -g @angular/cli

<#
 added 227 packages in 2m

26 packages are looking for funding
  run `npm fund` for details
PS Microsoft.PowerShell.Core\FileSystem::\\tsclient\E\[WebSite_Project]\Projects\Nodejs_Project> npm fund
'\\tsclient\E\[WebSite_Project]\Projects\Nodejs_Project'
CMD.EXE was started with the above path as the current directory.
UNC paths are not supported.  Defaulting to Windows directory.
Windows
#>
npm fund

<# Create Package.json in the Nodejs_Project folder#>
npm init -y

<# You will get
================:
PS Microsoft.PowerShell.Core\FileSystem::\\tsclient\E\[WebSite_Project]\Projects\Nodejs_Project> npm init -y
'\\tsclient\E\[WebSite_Project]\Projects\Nodejs_Project'
CMD.EXE was started with the above path as the current directory.
UNC paths are not supported.  Defaulting to Windows directory.
Wrote to C:\Windows\package.json:

{
  "name": "windows",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}


PS Microsoft.PowerShell.Core\FileSystem::\\tsclient\E\[WebSite_Project]\Projects\Nodejs_Project> 
----------------------------------------------------------------------------------------------
NOTE
====: 
1): Write it localy from the folder itself using powershell prompt.
2): To add or change the content of this file , delete the first one and re initiate the command without the -y, and type the things you want to change in 
    the input of the prompt, use the vscode terminal on the folder location. 
#>
npm init
<#
Output
======:
PowerShell Extension v2022.11.0
Copyright (c) Microsoft Corporation.

https://aka.ms/vscode-powershell
Type 'help' to get help.

PS C:\Users\bahaa\Desktop\WebSiteProject\Projects> npm init
This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sensible defaults.

See `npm help init` for definitive documentation on these fields
and exactly what they do.

Use `npm install <pkg>` afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
package name: (projects) Noodjs_Project
Sorry, name can no longer contain capital letters.
package name: (projects) noodjs_project
version: (1.0.0)
description: this is my first nood.js project
entry point: (index.js)
test command:
git repository:
keywords:
author: bahaa fadam
license: (ISC)
About to write to C:\Users\bahaa\Desktop\WebSiteProject\Projects\package.json:

{
  "name": "noodjs_project",
  "version": "1.0.0",
  "description": "this is my first nood.js project",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "bahaa fadam",
  "license": "ISC"
}


Is this OK? (yes) 
PS C:\Users\bahaa\Desktop\WebSiteProject\Projects> 
#>
<# THIS I NOT GOOD !!! , BECAUSE IT GENERATE THE FILE IN THE WRONG LOCATION (PROJECTS) AND NOT IN (Noodjs_Project),
   RE-RUN IT IN THE NOODJS_PROJECT LOCATION.

   Note
   ====:
   Now it is OK
   -------------:
PS C:\Users\bahaa\Desktop\WebSiteProject\Projects\Nodejs_Project> npm init
This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sensible defaults.

See `npm help init` for definitive documentation on these fields
and exactly what they do.

Use `npm install <pkg>` afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
package name: (nodejs_project)
version: (1.0.0)
description: This is My First Nood.js Project
entry point: (index.js)
test command:
git repository:
keywords:
author: Bahaa Fadam
license: (ISC)
About to write to C:\Users\bahaa\Desktop\WebSiteProject\Projects\Nodejs_Project\package.json:

{
  "name": "nodejs_project",
  "version": "1.0.0",
  "description": "This is My First Nood.js Project",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "Bahaa Fadam",
  "license": "ISC"
}


Is this OK? (yes)
PS C:\Users\bahaa\Desktop\WebSiteProject\Projects\Nodejs_Project> 
#>

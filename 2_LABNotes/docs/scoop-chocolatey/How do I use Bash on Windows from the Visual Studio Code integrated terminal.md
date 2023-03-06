## **_How do I use Bash on Windows from the Visual Studio Code integrated terminal_**
<img src="../logo/Me_.ico" width="50">

When **_Git_** has not been installed on the **_laptop OS_** OS yet, the only terminal we have on VSCode is the **_PowerShell_** terminal, therefor to add a ***Bash*** terminal to the VSCode we need to follow these steps:

1. Install Git from Chocolatey Script.
2. Open VSCode and press _**Ctrl+`**_ to open the terminal
3. When the terminal only shows **_Powershell_**, do the following:
   1. Open the Command palette using **_Ctrl+Shift+P_**.
   <img src="../images/Open-the-Command-palette-using-ctrl-shift-p.png">
   2. Type <span style="color:blue">***Select Default Profile***</span>.
   3. Select ***Git Bash*** from the options
   <img src="../images/select-Git-Bash-as-default-user-profile-for-terminals.png">
   <u>***OR***</u>:
   you can change the ***User Settings*** by selecting ***File->Preferences->Settings*** or by pressing ``Ctrl+,`` . You have to click on the Open Settings(JSON) icon as shown in the image below:
   <img src="../images/open-settings-json.png">
   Only one line of code will be added to the end of the settings file:
   <img src="../images/this-will-add--terminal-integrated-defaultprofile-for-windows-gitbash.png">
   4. Click on the **_+_** icon in the terminal window,In case you can not add a Powershell or any other already installed terminals then:
   5. <img src="../images/select-any-other-terminal-in-vscode.png">
   6. The new terminal now will be a ***Git Bash*** terminal. Give it a few seconds to load Git Bash.
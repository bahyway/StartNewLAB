# **_Why I need to Create My Own Scoop Bucket_**

<img src="../logo/Me_.ico" width="50">


Not all ***Known Buckets*** to Scoop have the needed apps, see the following screenshot:
<img src="../images/Why-I-need-to-Create-MyOwn-Scoop-Bucket01.png">, so the **_Search_** doesnt return any apps when the option ``[x] Official buckets only is selected``, Disabling this option will returns the needed app:
<img src="../images/Why-I-need-to-Create-MyOwn-Scoop-Bucket02.png">,This means I need to **_Bundle_** some apps in **_My Own New Scoop Bucket_** to ensure the installation of needed apps.

## **_Requirements_**
For an application to be added, it needs to meet the following criteria:
- It must not be available via any other bucket listed on the [<span style="color:blue">**_Scoop website_**</span>](https://scoop.sh/#/apps?o=false&s=0&d=1) or in the [<span style="color:blue">**_Scoop directory_**</span>](https://rasa.github.io/scoop-directory/by-bucket).
- If written in Node.js or Python, it must not be available via [<span style="color:blue">**_npm_**</span>](https://www.npmjs.com/) or [<span style="color:blue">**_pip_**</span>](https://pip.pypa.io/en/stable/).
- It must not require administrative or elevated privileges for the installation.
- It needs to provide a way to check for updates, so that it can be [<span style="color:blue">**_auto-updated_**</span>](https://github.com/marketplace/actions/shovel-bucket-minion).

## **_Creating your own bucket_**



## **_References_**
***GitHub:***
[TheLastZombie](https://github.com/TheLastZombie/scoop-bucket)
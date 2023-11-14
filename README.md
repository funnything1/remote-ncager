# remote ncager
Remote nicolas cager


A simple script that adds ncage+ extention to google chrome forcefully to any specified computer

Warning: The user wont be able to remove the extension on their own unless they know what registry key to delete

ncage+: https://chromewebstore.google.com/detail/ncage+/blenoallcdijagcfhdbidjiimoandabh?pli=1

For remote computers requires winrm to be enabled and running: https://support.auvik.com/hc/en-us/articles/204424994-How-to-enable-WinRM-with-domain-controller-Group-Policy-for-WMI-monitoring


Add the function to the end of your powerhsell profile to make it persistant:

 ```"C:\Users\%UserProfile%\Documents\WindowsPowerShell\profile.ps1"```

Requires admin acces to the computer

Usage:

```Cage -Computer Desktop-Test```     Adds the extension to chrome on the computer "Desktop-Test"

```Cage -Computer Desktop-Test -Remove``` Removes the extension on the computer "Desktop-Test"

```Cage``` Adds the extension on the local computer

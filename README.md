# remote ncager
Remote nicolas cager


Adds ncage+ extention to google chrome forcefully to any specified computer using a powershell function


ncage+: https://chromewebstore.google.com/detail/ncage+/blenoallcdijagcfhdbidjiimoandabh?pli=1

For remote computers requires winrm to be enabled and running: https://support.auvik.com/hc/en-us/articles/204424994-How-to-enable-WinRM-with-domain-controller-Group-Policy-for-WMI-monitoring


Requires admin acces to the computer

Usage:

```Cage -Computer Desktop-Test```     Adds the extension ot chrome on the specified computer

```Cage -Computer Desktop-Test -Remove``` Removes the extension of the specified computer

```Cage``` Adds the extension on the local computer

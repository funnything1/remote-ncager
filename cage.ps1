﻿function Cage {

    [CmdletBinding()]
    param(
        [Parameter(Position=0,mandatory=$false)]
        [string] $Computer="localhost",
        [Parameter(Position=1,mandatory=$false)]
        [switch] $Remove)

#use this guide to enable winrm on machines using group policy
#https://support.auvik.com/hc/en-us/articles/204424994-How-to-enable-WinRM-with-domain-controller-Group-Policy-for-WMI-monitoring

$code = {reg add HKLM\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist /v 1 /t REG_SZ /d blenoallcdijagcfhdbidjiimoandabh /f}
$coderemove = {reg delete HKLM\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist /v 1 /f}

if(!$Remove){
    try{

        if($Computer -eq "localhost" -or $Computer -eq $env:COMPUTERNAME){
            Invoke-Command -ScriptBlock $code -ErrorAction Stop
            }
        else{
            Invoke-Command -ComputerName $Computer -ScriptBlock {$code} -ErrorAction Stop
            }
        Write-Host "The computer $Computer has been caged" -ForegroundColor Green
        }

    catch{Write-Host $_ -ForegroundColor Red}}

else{
    try{

        if($Computer -eq "localhost" -or $Computer -eq $env:COMPUTERNAME){

            Invoke-Command -ScriptBlock $coderemove -ErrorAction Stop
            }
        else{

            Invoke-Command -ComputerName $Computer -ScriptBlock {$coderemove} -ErrorAction Stop

            }
        Write-Host "The computer $computer has been un-caged" -ForegroundColor Green
        }
    catch{Write-Host $_ -ForegroundColor Red}}
    }
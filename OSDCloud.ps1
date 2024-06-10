Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."


Install-Module OSD -Force -Skippublishercheck
Install-Module MSCatalog -Force -Skippublishercheck

#Harvest Hash, Store on Drive
if(test-path E:\Hash){
write-host "Harvesting Hash E"
powershell.exe  -File ".\Ressources\Get-WindowsAutoPilotInfo.ps1" -OutputFile ".\Output\hardwarehash.csv" -Append
}Else{
write-host "Harvesting Hash D"
powershell.exe  -File ".\Ressources\Get-WindowsAutoPilotInfo.ps1" -OutputFile ".\Output\hardwarehash.csv" -Append
}



#$Global:MyOSDCloud = @{
    #DriverPackName = 'none'
    #ApplyManufacturerDrivers = $false
    #ApplyCatalogDrivers = $true
    #ApplyCatalogFirmware = $true
    #MSCatalogDiskDrivers = $true
    #MSCatalogNetDrivers = $true
    #MSCatalogScsiDrivers = $true
    #MSCatalogFirmware = $true
#}

#

$Params = @{
    OSVersion = "Windows 11"
    OSBuild = "22H2"
    OSEdition = "Enterprise"
    OSLanguage = "en-us"
    ZTI = $true
    Firmware = $false
}
Start-OSDCloud @Params
wpeutil reboot

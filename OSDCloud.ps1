Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."


Install-Module OSD -Force -Skippublishercheck
Install-Module MSCatalog -Force -Skippublishercheck

#Harvest Hash, Store on Drive
if(test-path E:\Hash){
write-host "Harvesting Hash E"
start "E:\Hash\start.cmd"
}
Else{
write-host "Harvesting Hash D"
start "D:\Hash\start.cmd"
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

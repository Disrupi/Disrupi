Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."
start-sleep -seconds 6

Install-Module OSD -Force -Skippublishercheck
Install-Module MSCatalog -Force -Skippublishercheck


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

cls
Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Install-Module OSD -Force -Skippublishercheck


$Global:MyOSDCloud = @{
    DriverPackName = 'none'
    #ApplyManufacturerDrivers = $false
    #ApplyCatalogDrivers = $true
    #ApplyCatalogFirmware = $true
    MSCatalogDiskDrivers = $true
    MSCatalogNetDrivers = $true
    MSCatalogScsiDrivers = $true
    MSCatalogFirmware = $true
}



$Params = @{
    OSVersion = "Windows 11"
    OSBuild = "22H2"
    OSEdition = "Pro"
    OSLanguage = "en-US"
    ZTI = $true
    Firmware = $true
}
Start-OSDCloud @Params
#wpeutil reboot

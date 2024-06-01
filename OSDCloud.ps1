cls
Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Install-Module OSD -Force -Skippublishercheck


$Global:MyOSDCloud = @{
    DriverPackName = 'none'
    #ApplyManufacturerDrivers = $false
    #ApplyCatalogDrivers = $false
    ApplyCatalogFirmware = $true
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
start-sleep -seconds 300
#wpeutil reboot

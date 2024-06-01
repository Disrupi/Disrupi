cls
Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Install-Module OSD -Force -Skippublishercheck

$Params = @{
    OSVersion = "Windows 11"
    OSBuild = "22H2"
    OSEdition = "Pro"
    OSLanguage = "en-US"
    ZTI = $true
    Firmware = $true
    DriverPack = $false
    WindowsUpdateDrivers = $true
}
Start-OSDCloud @Params

#wpeutil reboot

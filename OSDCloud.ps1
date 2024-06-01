cls
Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Install-Module OSD -Force -Skippublishercheck

$Params = @{
    OSVersion = "Windows 10"
    OSBuild = "22H2"
    OSEdition = "Pro"
    OSLanguage = "en-US"
    ZTI = $true
    Firmware = $true
}
Start-OSDCloud @Params

wpeutil reboot

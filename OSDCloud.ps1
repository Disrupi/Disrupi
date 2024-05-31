cls
Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Install-Module OSD -Force -Skippublishercheck

#Start-OSDCloud -UpdateFirmware -OSName 'Windows 11 22H2 x64' -OSLanguage en-us -OSEdition Enterprise -zti
Start-OSDCloud -OSName 'Windows 11 22H2 x64' -Firmware -OSLanguage en-us -OSEdition Enterprise -zti
##
Start-Sleep -Seconds 20
wpeutil reboot

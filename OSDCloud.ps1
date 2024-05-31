cls
Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Install-Module OSD -Force -Skippublishercheck

#Start-OSDCloud -UpdateFirmware -OSName 'Windows 11 22H2 x64' -OSLanguage en-us -OSEdition Enterprise -zti
#Start-OSDCloud -OSName 'Windows 11 22H2 x64' -OSLanguage en-us -OSEdition Enterprise -zti
Start-OSDCloud -OSVersion 'Windows 11' -OSLanguage en-us -OSBuild 22H2 -OSEdition Enterprise -ZTI 
start-sleep -seconds 5

wpeutil reboot

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."


Install-Module OSD -Force -Skippublishercheck | out-null
Install-Module MSCatalog -Force -Skippublishercheck | out-null


#Harvest Hash, Store on Drive
if(test-path E:\Hash){
write-host "Harvesting Hash E"
#Get-WindowsAutopilotInfo -OutputFile E:\Hash\AutopilotHWID.csv -Append
get-hash -OutputFile E:\Hash\hash.csv -Append
}

if(test-path D:\Hash){
write-host "Harvesting Hash D"
#Get-WindowsAutopilotInfo -OutputFile D:\Hash\AutopilotHWID.csv -Append
get-hash -OutputFile D:\Hash\hash.csv -Append
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

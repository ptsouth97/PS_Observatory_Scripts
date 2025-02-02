$cam = New-Object -ComObject "ASCOM.Simulator.Camera"

Write-Output "The name of the camera is:"
$cam.Name

$cam.Connected = $true

Write-Output "Connected?"
$cam.Connected

Write-Output "Can I set the CCD Temperature?"
$cam.CanSetCCDTemperature

Write-Output "The CCD temperature in degrees Celsius is:"
Write-Output $cam.CCDTemperature

Write-Output "The width of the camera chip is:"
$cam.CameraXSize

Write-Output "Camera is ready, Exposing."

#while (-not $cam.ImageReady) {
#    $cam.StartExposure(1, 1)
#}

#Duration as a double, light as a boolean
$cam.StartExposure(1,1)

Start-Sleep -Seconds 5

Write-Output "Is the image ready?"
$cam.ImageReady

$image = $cam.ImageArray

#$image.Save("C:\Users\BlakeCrosby\PS_Observatory_Scripts\image.fit")

#Get-Process | Out-File -FilePath C:\Users\BlakeCrosby\PS_Observatory_Scripts\image.fit

#Write-Output "Supported Actions:"
#$cam.SupportedActions


#Maxim
#$cam.SaveImage("C:\Users\BlakeCrosby\PS_Observatory_Scripts\image.fit")
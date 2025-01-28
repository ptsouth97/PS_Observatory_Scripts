$cam = New-Object -ComObject "MaxIm.CCDCamera"
#$cam = New-Object -ComObject "ASCOM.Simulator.Camera"

Write-Output "The name of the camera is:"
$cam.CameraName

$cam.LinkEnabled = $true
#$cam.Connected = $true

Write-Output "Can I set the CCD Temperature?"
$cam.CanSetTemperature

Write-Output "The CCD temperature in degrees Celsius is:"
Write-Output $cam.Temperature

Write-Output "The width of the camera chip is:"
$cam.CameraXSize

Write-Output "Camera is ready, Exposing."

#while (-not $cam.ImageReady) {
#    $cam.StartExposure(1, 1)
#}

# duration, light, filter
$cam.Expose(10, 1, 0)
#$cam.StartExposure(1,1)

Start-Sleep -Seconds 15

Write-Output "Is the image ready?"
$cam.ImageReady

#$image = $cam.ImageArray

#Get-Process | Out-File -FilePath C:\Users\BlakeCrosby\PS_Observatory_Scripts\image.fit

#Write-Output "Supported Actions:"
#$cam.SupportedActions



$cam.SaveImage("C:\Users\BlakeCrosby\PS_Observatory_Scripts\image.fit")
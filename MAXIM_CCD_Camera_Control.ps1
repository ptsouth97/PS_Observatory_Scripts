$cam = New-Object -ComObject "MaxIm.CCDCamera"


Write-Output "The name of the camera is:"
Write-Host $cam.CameraName

$cam.LinkEnabled = $true


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

$exposureLength = 5
$waitTime = $exposureLength+5

# duration, light, filter
$cam.Expose($exposureLength, 1, 0)

Start-Sleep -Seconds $waitTime

$cam.SaveImage("C:\Users\BlakeCrosby\PS_Observatory_Scripts\image.fit")
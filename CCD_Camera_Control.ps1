#$cam = New-Object -ComObject "MaxIm.CCDCamera"
$cam = New-Object -ComObject "ASCOM.Simulator.Camera"
Write-Output "Made ASCOM Camera object"

#$cam.LinkEnabled = $true
$cam.Connected = $true

Write-Output "The CCD temperature is:"
$cam.CCDTemperature

Write-Output "Camera is ready, Exposing."

#while (-not $cam.ImageReady) {
#    $cam.StartExposure(1, 1)
#}

#$cam.Expose(1, 1, 0)
$cam.StartExposure(1,1)

Start-Sleep -Seconds 5

Write-Output "Is the image ready?"
$cam.ImageReady

#$cam.SaveImage("C:\Users\BlakeCrosby\Documents\Image.fit")
$cam = New-Object -ComObject "MaxIm.CCDCamera"
$cam.LinkEnabled = $true

Write-Output "Camera is ready, Exposing."

#while (-not $cam.ImageReady) {
#    $cam.StartExposure(1, 1)
#}

$cam.Expose(1, 1, 0)

Start-Sleep -Seconds 5


$cam.SaveImage("C:\Users\BlakeCrosby\Documents\Image.fit")
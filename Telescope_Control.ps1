$telescope = New-Object -ComObject "ASCOM.Simulator.Telescope"

Write-Output "The telescope's aperture in meters is:"
$telescope.ApertureDiameter

Write-Output "The telescope's focal length in meters is:"
$telescope.FocalLength

Write-Output "The driver version is:"
$telescope.DriverVersion

$telescope.Tracking = $true

$telescope.SlewToCoordinates(15.1, 56.2)
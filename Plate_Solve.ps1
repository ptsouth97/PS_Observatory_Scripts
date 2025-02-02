$img = New-Object -ComObject "MaxIm.Document"

$FilePath = "C:\Users\BlakeCrosby\PS_Observatory_Scripts\T UMi.fit"

$img.OpenFile($FilePath)

#Write-Host $img.XSize

#Document.PinPointSolve ( [RA, Dec, [XPixScale, YPixScale] )

$img.PinPointSolve()
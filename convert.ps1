# created by Michael Vandenberghe ( https://github.com/h3knix/ )
# find this on github ( https://github.com/h3knix/steam-shortcut-converter/ )

$basepath = $env:USERPROFILE +"\Desktop\"

$convertedpath = $basepath +"converted_shortcuts"
New-Item -ItemType Directory -Force -Path $convertedpath | Out-Null
$convertedpath = $convertedpath +"\"

$Shell = New-Object -ComObject ("WScript.Shell")

Write-Host "Running in" $basepath
Write-Host "----------------------------------"

$found = 0
Get-ChildItem $basepath -Filter *.url | 
Foreach-Object {
	$found++
	$origname = $_.Name
	$name = $origname.split('.')
	$name = $name[0..($name.length-2)]
	$name = $name -join "."
	
	$description = $name
	$path = $basepath + $name +".lnk"
	
	Write-Host "Converting" $_.FullName
	Write-Host "To" $path
	
	$content = Get-Content $_.FullName
	Move-Item $_.FullName ($convertedpath + $origname)
	
	$url = $content | Where-Object {$_ -match 'URL'}
	$url = $url.split('=')[1]
	#Write-Host $url
	
	$icon = $content | Where-Object {$_ -match 'IconFile'}
	$icon = $icon.split('=')[1]
	#Write-Host $icon
	
	$ShortCut = $Shell.CreateShortcut($path)
	$ShortCut.TargetPath = "%windir%\explorer.exe"
	$ShortCut.Arguments = $url
	$ShortCut.IconLocation = $icon
	$ShortCut.Description = $description;
	$ShortCut.Save()
	
	Write-Host "----------------------------------"
}
if ( $found ) {
	Write-Host $found "file(s) converted"
} else {
	Write-Host "No files found to convert"
}
Read-Host "Press enter key to continue"
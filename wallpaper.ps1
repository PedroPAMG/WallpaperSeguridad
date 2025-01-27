$path = $pwd | Select -ExpandProperty Path
$wall = $args[0]

Function Set-WallPaper($Value) {
Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name Wallpaper -value $value
rundll32.exe user32.dll, UpdatePerUserSystemParameters 1, True
}

Set-WallPaper -value "$path\Wallpaper\$wall.png"

$path = $pwd | Select -ExpandProperty Path
$wall = $args[0]

Function Set-WallPaper($Value) {
Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name Wallpaper -value $value
}

Set-WallPaper -value "$path\Wallpaper\$wall.png"

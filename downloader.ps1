$path = $pwd | Select -ExpandProperty Path
$client = new-object System.Net.WebClient

New-Item -Path "$path\Wallpaper" -ItemType Directory



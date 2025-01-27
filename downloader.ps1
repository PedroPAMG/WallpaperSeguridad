$path = $pwd | Select -ExpandProperty Path
$client = new-object System.Net.WebClient

Invoke-WebRequest -URI 'https://github.com/PedroPAMG/WallpaperSeguridad/raw/refs/heads/main/Wallpaper.zip' -OutFile 'Wallpaper.zip'
Expand-Archive "$path\Wallpaper.zip" -DestinationPath "$path"

Invoke-WebRequest -URI 'https://raw.githubusercontent.com/PedroPAMG/WallpaperSeguridad/refs/heads/main/wallpaper.ps1' -OutFile 'wallpaper.ps1'

Remove-Item -Path "$path\Wallpaper.zip"

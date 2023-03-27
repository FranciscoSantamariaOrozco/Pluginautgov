$nombreApp = "plugin Autenticação.Gov"

$instalaciones = Get-Package | Where-Object {$_.Name -like "*$nombreApp*"}

if ($instalaciones) {
    Write-Output "La aplicación $nombreApp está instalada en este equipo."
} else {
    Write-Output "La aplicación $nombreApp NO está instalada en este equipo."
}

# V. Antiga: 2.0.70
# V. Atual: 2.0.75
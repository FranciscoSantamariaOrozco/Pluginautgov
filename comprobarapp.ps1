$nombreApp = "plugin Autenticação.Gov"

$instalaciones = Get-Package | Where-Object {$_.Name -like "*$nombreApp*"}

if ($instalaciones) {
    Write-Output "La aplicación $nombreApp está instalada en este equipo."
} else {
    Write-Output "La aplicación $nombreApp no está instalada en este equipo."
}
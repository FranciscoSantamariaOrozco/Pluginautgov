﻿# Silent Update plugin autenticação.gov 

$nomeapp = "plugin Autenticação.Gov"
$checkapp = Get-Package | Where-Object {$_.Name -like "*$nomeapp*"}

if ($checkapp) {
    Write-Output "La aplicación $nomeapp está instalada en este equipo."
    $workdir = "c:\installer\"
    $Url = "https://aplicacoes.autenticacao.gov.pt/plugin/Instalador%20plugin%20Autenticacao.Gov.msi"
    $Path = "C:\installer\pluginAutenticacao.gov_Win_x64_signed.msi"

# Check if work directory exists if not create it 
If (Test-Path -Path $workdir -PathType Container)
{ Write-Host "$workdir already exists" -ForegroundColor Red}
ELSE
{ New-Item -Path $workdir -ItemType directory }

# Download the .msi
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile( $url, $path )

# Start the update 
Start-Process -FilePath msiexec.exe -ArgumentList "/i $Path /passive /qb /norestart" -Wait

# Remove the installer 
Remove-Item -Force "C:\installer\pluginAutenticacao.gov_Win_x64_signed.msi"

} else {
    Write-Host "La aplicación $app NO está instalada."
}
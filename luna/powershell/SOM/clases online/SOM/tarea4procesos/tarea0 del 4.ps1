#Solo quiero los paths y los nombres de los procesos
#cuyo id sea menor de diezmil y su nombre conntenga al menos
#una "s". Y solo mostraremos los procesos que cumplan todos los 
# campos


Get-Process | Select-Object name,id,path | Where-Object { $_.Name -match "s" } | ForEach-Object {


    if ( $_.id -lt 10000 -and $_.path -ne $null ){

        Write-Host "Este proceso cumple $($_.path), $($_.Name)"


    }
}
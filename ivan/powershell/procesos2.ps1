while ($true) {
    Write-Host "Selecciona una opcion:"
    Write-Host "1) Uso de la CPU de un proceso"
    Write-Host "2) PATH del ejecutable de un proceso"
    Write-Host "3) exit"

    # echo de menos el select de bash :(

    $opcion = Read-Host

    switch ($opcion) {
        1 {
            $proceso = Read-Host "Ingresa el PID"
            try {
                Get-Process -Id $proceso -ErrorAction Stop | Select-Object ProcessName, CPU | Format-List
            }
            catch {
                Write-Host "No hay ningun proceso activo con ese id" -ForegroundColor Red
            }
        }
        2 {
            $proceso = Read-Host "Ingresa el PID"
            try {
                Get-Process -Id $proceso -ErrorAction Stop | Select-Object ProcessName, Path | Format-List
            }
            catch {
                Write-Host "No hay ningun proceso activo con ese id" -ForegroundColor Red
            }
        }
        3 {
            exit
        }
        "exit" {
            exit
        }
        default {
            Write-Host "Opcion no valida" -ForegroundColor Red
        }
    }
}

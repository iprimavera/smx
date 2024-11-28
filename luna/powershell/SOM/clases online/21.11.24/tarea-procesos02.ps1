$OPCION = "Defecto"

if ( $OPCION -ne "exit"){

    Write-Host "Menu : "
    Write-Host " * 1) : Muestra Nombre y CPU"
    Write-Host " * 2) : Muestra Nombre y PATH"
    Write-Host " * exit) : SALIR "
    Write-Host " * Indica tu opción"
    $OPCION = Read-Host

    switch ($opcion) {
    
    1{ 
        $proceso = Read-Host "Ingresa el PID"
        try {
            Get-Process -Id $proceso -ErrorAction Stop | Select-Object ProcessName,CPU | Format-List
        } 
        catch { 
            Write-Host "No hay ningun proceso activo con ese id" -ForegroundColor Red
        }
    }

    2{ 
        $proceso = Read-Host "Ingresa el Nombre del Proceso"
        try {
         Get-Process -Id $proceso -ErrorAction Stop | Select-Object ProcessName,Path | Format-List
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
    Write-Host "Opcion no valido" -Foreground Red
    Write-Host "...Saliendo..."
    }
   }
}
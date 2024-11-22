while ($true) {
    Write-Host "Selecciona una opcion:"
    Write-Host "1) Uso de la CPU de un proceso"
    Write-Host "2) PATH del ejecutable de un proceso"
    Write-Host "3) A partir del nombre obten el ID"
    Write-Host "k) A partir del nombre cierra todos los procesos que sean pares"
    Write-Host "5) exit"

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
	    $proceso = Read-Host "Ingresa el nombre del proceso"
	    try {
        	Get-Process *$proceso* -ErrorAction Stop | Select-Object Id
        }
        catch {
            Write-Host "No hay ningun proceso activo con ese nombre" -ForegroundColor Red
        }
	}
	# Write-Host "k) A partir del nombre cierra todos los procesos que sean pares"


	

	k {
	    $proceso = Read-Host "Ingresa el nombre del proceso"
	    #try {
			$id1 = Get-Process *$proceso* -ErrorAction Stop | Select-Object Id   | ForEach-Object {
				$id2 = $($_.Id) % 2
				if ( $id2 -eq 0) {

				Stop-Process $($_.Id)
					
				}
			}
				#for () {	
				#	$id2 = $id1 % 2
				#	if ( $id2 -eq 0 ) {
				#		Stop-Process $id1
				#	}
				#}
        #    }
        #    catch {
        #        Write-Host "No hay ningun proceso activo con ese nombre" -ForegroundColor Red
        #    }
	}



        5 {
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

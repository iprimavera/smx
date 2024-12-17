#Crea un PowerShell Script que muestre un menú con las siguientes opciones:
#- Opción “i”: Instala un software sólo si no está ya instalado, en
#caso de que ya esté que muestre un mensaje.
#- Opción “d”: Desinstala un Software del equipo, pero en este caso
#debe mostrar un submenú que permita elegir entre:
#a) OperaGX
#b) Notepad++
#c) VLC
#d) Volver atrás
#- Opción “f”: Pregunta por una fecha en formato YYYYMMDD, y
#genera en la carpeta Personal del Usuario que está lanzando
#el Script un fichero de exportación del Software instalado en el
#equipo cuyo nombre sea: YYYYMMDD_SoftList.json
#y en caso de que el fichero ya existiera previamente, que
#pregunte si desea borrarlo.
#- Opción “q” o “quit”: Sale del menú

 while ( $true ){

    Write-Host "Menu : "
    Write-Host " * i) : Instala un software."
    Write-Host " * d) : Desinstala un Software del equipo."
    Write-Host " * f) : Fecha."
    Write-Host " * q) : Salir del menú. "
    Write-Host " * Indica tu opción"
    $OPCION = Read-Host

        if ($OPCION -eq "i"){
       
         if ( $args.Count -eq 0 ){
	
		        Write-Host "Dime que software quieres instalar"
		        Write-Host "OperaGX/Notepad++/VLC"
		        $software = Read-Host

		    } 
                if ( $software -eq "OperaGX" -or $software -eq "Notepad++" -or $software -eq "VLC"){
		
			        Write-Host "Tu Software es: $software"
			        Write-Host "winget install $software"
	   
                }
                else
                {
	
			         Write-Host "Elección de programa incorrecta"
			         exit
		        }
      }

    elseif ($OPCION -eq "d"){
        
        
        while ( $true ){

                Write-Host "Submenu : "
                Write-Host " * a) : OperaGX."
                Write-Host " * b) : Notepad++."
                Write-Host " * c) : VLC."
                Write-Host " * d) : Volver atras. "
                Write-Host " * Indica tu opción"
                $eleccion = Read-Host

                if ( $eleccion -eq "a"){

                    Write-Host "winget uninstall OperaGX"

                }
                elseif ($eleccion -eq "b") {
                    
                    Write-Host "winget uninstall Notepad++"

                }
                elseif ($eleccion -eq "c") {
                    
                    Write-Host "winget uninstall VLC"

                }
                elseif ($eleccion -eq "d") {
                    
                    exit

                }
        }
    } 
    elseif ($OPCION -eq "f"){

        Write-Host "Dime una fecha en formato YYYYMMDD"
        $fecha = Read-Host
        $personal = [System.Environment]::GetFolderPath("Personal")
        $archivo = Join-Path -Path $personal -ChildPath "$fecha`_SoftList.json"
    
        if (Test-Path $archivo) {
            $respuesta = Read-Host "El archivo ya existe. ¿Deseas borrarlo? (S/N)"
            if ($respuesta -eq 'S' -or $respuesta -eq 's') {
                Write-Host "Remove-Item $archivo"
                Write-Host "El archivo ha sido borrado."
            } else {
                Write-Host "El archivo no ha sido borrado. Saliendo del script."
                exit
            }
        }
    
        $software = Get-WmiObject -Class Win32_Product | Select-Object -Property Name, Version
    
        $software | ConvertTo-Json | Set-Content -Path $archivo

        Write-Host "La lista de software ha sido exportada a $archivo"
    
    }
    elseif ($opcion -eq "q"){
        Write-Host "...Saliendo..." -ForegroundColor green
        exit
    
    }else{
     
        Write-Host "Opcion no disponible, prueba otra vez" -ForegroundColor Red
        Write-Host ""
    }
}
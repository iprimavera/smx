

	if ( $args.Count -eq 0 ){
	
		Write-Host "Debes decirme el rol"
		Write-Host "Devops/Oficina/Gerencia"
		$rol = Read-Host
	}
		
		if ( $rol -eq "OperaGX" -or $rol -eq "Notepad++" -or $rol -eq "VLC"){	
		
			Write-Host "Tu rol es: $rol"
			winget export -o "$rol.fichero"

		}else{
	
			Write-Host "Rol incorrecto"
			exit
		}
	
	if ( $args.Count -eq 1 -and (Test-Path $args[0])){
	
			$ficheroAInstalar = $args[0]
			Write-Host "Me han dado un fichero listado"
			Write-Host "Instalando"
			winget import -i $ficheroAInstalar
		}
		
	if ($args.Count -eq 1 -and -not (Test-Path $args[0])){
	
		Write-Host "El fichero suministrado no es un fichero"
		
	}
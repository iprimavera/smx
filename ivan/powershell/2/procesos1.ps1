if ($($args.Count) -eq 1) {
    if ($args[0] -ge 1 -and $args[0] -le 10000) {
        try {
            Get-Process -Id $args[0] -ErrorAction Stop | Select-Object ProcessName | Format-List
        }
        catch {
            Write-Host "No hay ningun proceso activo con ese id" -ForegroundColor Red
        }
    } else {
        Write-Host "El numero debe estar entre el 1 y el 10000" -ForegroundColor Red
    }
} else {
    Write-Host "Solo se debe pasar un unico argumento" -ForegroundColor Red
}
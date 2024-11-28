Write-Host "Me han pasado $($args.Count)"

if ( $($args.Count) -eq 1){

    $PROCESO = $args[0]
    Write-Host -Foreground yellow "El usuario me ha dicho el $PROCESO, voy a ver"

    if ( $args[0] -ge 1 -and $args[0] -le 10000){
       Write-Host -Foreground Green " [PID $PROCESO ] : Valido " 
       Get-Process = -Id $PROCESO | Select-Object ProcessName 

    }else{
        
        Write-Host -Foreground Red " ! Error: PID imcorrecto $PROCESO fuera del rango"
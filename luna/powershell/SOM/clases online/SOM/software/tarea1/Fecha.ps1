#Crea un PowerShellScript que acepte como único argumento una
#fecha en formato YYYYMMDD y que muestre como resultado 
#de la ejecución todo el Software que hay instalado en el 
#equipo cuya fecha de instalación sea anterior.
#En caso de que no haya ningún software anterior, que muestre 
#un mensaje indicándolo. Si un software no tiene ninguna 
#fecha de instalación, asumir que es del tres de enero de 
#2021.

	num1 = $args

if ($args.Count -ne  1) {
    
	Write-Host "Por favor, ingrese una fecha como argumento en formato YYYYMMDD." -ForegroundColor red
    exit
}

$fecha = [int]$args[0]


$ListaSoftware = (Get-WmiObject -Class Win32_Product | Select-Object -Property Name, InstallDate)

foreach ($Software in $ListaSoftware){
	$auxs = $Software.InstallDate

		if ($auxs -ne $null){
			
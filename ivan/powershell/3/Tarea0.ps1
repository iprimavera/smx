#Haz un PowerShell Script que compruebe que la Calculadora de Windows
#está en ejecución, en caso afirmativo que muestre el Path del ejecutable, su
#tamaño y el tiempo de CPU que lleva usado.

try
{
    Get-Process CalculatorApp -ErrorAction Stop | Select-Object Path, Size, CPU
}
catch
{
    Write-Host "la calculadora no esta ejecutandose" -ForegroundColor Red
}
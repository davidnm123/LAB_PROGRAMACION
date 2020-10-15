
function GET-NETIP{
    $variable = Get-NetIPConfiguration
    $IP = $variable.IPv4Address[1].IPAddress
    $puerta = $variable.IPv4DefaultGateway.NextHOP
    Write-Host "LA IP DEL INTERNET ES:  $IP" 
    Write-Host "LA PUERTA DE CONEXIÓN DE INTERNET ES: $puerta" 
}

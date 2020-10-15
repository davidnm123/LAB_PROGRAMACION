function Get-NetTCP{
$TCP = Get-NetTCPConnection
$tabla = Get-NetTCPConnection | Format-Table
$tabla
}


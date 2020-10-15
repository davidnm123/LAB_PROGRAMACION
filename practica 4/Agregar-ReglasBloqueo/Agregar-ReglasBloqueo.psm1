function Agregar-ReglasBloqueo{ 
	$puerto = Read-Host -Prompt "Cuál puerto quieres bloquear?" 
	#La siguiente es una sola línea, no tiene saltos de línea
	$null = New-NetFirewallRule -DisplayName "Puerto-Entrada-$puerto" -Profile "Public" -Direction Inbound -Action Block -Protocol TCP -LocalPort $puerto 
}

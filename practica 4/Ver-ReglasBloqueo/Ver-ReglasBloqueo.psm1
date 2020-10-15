function Ver-ReglasBloqueo{
    if(Get-NetFirewallRule -Action Block -Enabled True -ErrorAction SilentlyContinue){
        $reglas = Get-NetFirewallRule -Action Block -Enabled True
        Foreach($regla in $reglas){
            Write-Host "ID:" $regla.name
            Write-Host "Nombre:" $regla.DisplayName
            Write-Host "Estado:" $regla.Enabled
            Write-Host "Dirección:" $regla.Direction
            Write-host "Acción:" $regla.Action
            "`n"
        }
    } else{
        Write-Host "No hay reglas definidas aún"
    }
}
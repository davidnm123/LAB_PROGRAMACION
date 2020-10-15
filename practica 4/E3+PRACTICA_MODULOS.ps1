#DAVID ALEJANDRO NAVARRO MENDOZA
#SOFÍA HERNÁNDEZ RODRÍGUEZ
#ÁNGEL ALEJANDRO VÁZQUEZ GARCÍA


Import-Module GET-NETIP -ErrorAction SilentlyContinue
Import-Module GET-NETTCP -ErrorAction SilentlyContinue
Import-Module Ver-StatusPerfil -ErrorAction SilentlyContinue
Import-Module Cambiar-StatusPerfil -ErrorAction SilentlyContinue
Import-Module Ver-PerfilRedActual -ErrorAction SilentlyContinue
Import-Module Cambiar-PerfilRedActual -ErrorAction SilentlyContinue
Import-Module Ver-ReglasBloqueo -ErrorAction SilentlyContinue
Import-Module Eliminar-ReglasBloqueo -ErrorAction SilentlyContinue
Import-Module Agregar-ReglasBloqueo -ErrorAction SilentlyContinue
do {
Write-Host
    "1. Obtener IP" 
    "2. Obtener conexiones TCP" 
    "3. Ver el estatus del perfil"
    "4. Cambiar estatus del perfil"
    "5. Ver red de perfil actual"
    "6. Cambiar la red del perfil actual"
    "7. Ver reglas de bloqueo"
    "8. Eliminar reglas de bloqueo"
    "9. Agregar Reglas de Bloqueo"
    "10. Salir"
    [int]$opcion = Read-Host -Prompt "Elige una opcion (numero) "

 

switch ($opcion){

 

    1{GET-NETIP}
    2{GET-NETTCP}
    3{Ver-StatusPerfil}
    4{Cambiar-StatusPerfil}
    5{Ver-PerfilRedActual}
    6{Cambiar-PerfilRedActual}
    7{Ver-ReglasBloqueo}
    8{Eliminar-ReglasBloqueo}
    9{Agregar-ReglasBloqueo}
    default {
        Write-Host "Opcion no valida"
        }
    }
}while ($opcion -ne 10)
    break

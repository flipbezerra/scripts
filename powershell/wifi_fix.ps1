# Script para reiniciar o driver de Wi-Fi no Windows 10, pode fazer a internet voltar a funcionar
Disable-NetAdapter -Name "Wi-Fi" -Confirm:$false
Enable-NetAdapter -Name "Wi-Fi"

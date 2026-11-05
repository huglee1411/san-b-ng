# Script: tong_hop.ps1
# Tac gia: Le Gia Hung
# Ngay tao: 2026-11-05
Write-host "Dang tao bao cao..."
"=== BAO CAO GREENFIELD FC ===" | Out-File logs/tong_hop.txt
Get-Content logs/access.log | Select-String "status=404" | Out-File logs/tong_hop.txt -Append
(Get-Content logs/access.log | Select-String "status=500").Count | Out-File logs/tong_hop.txt -Append
Write-output "Da hoan thanh"
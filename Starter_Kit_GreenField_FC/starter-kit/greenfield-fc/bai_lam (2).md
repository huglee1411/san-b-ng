# Bài làm – GreenField FC  
  
Họ và tên: LÊ GIA HƯNG
Lớp: CNTT3
  
## 4.2 Thao tác CLI  
Lệnh đã chạy:  
  Get-Location
  Get-ChildItem -Force
  Move-Item ghi_chu_ban_giao.txt docs/
  New-Item -ItemType Directory -Name backup
  Copy-Item "data/danh sach cau thu.xlsx" backup/
  Remove-Item *.tmp
  Set-Location logs
  Get-ChildItem
  Set-Location ..
  Get-ChildItem -Force
Kết quả liệt kê toàn bộ dự án (bao gồm file ẩn):  
  
    Directory: C:\Users\LEGION 5\Downloads\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/5/2026   1:55 PM                backup
d-----         11/5/2026   1:53 PM                data
d-----         11/5/2026   1:49 PM                docs
d-----         11/5/2026   1:23 PM                evidence
d-----         11/5/2026   1:44 PM                logs
d-----         11/5/2026   1:17 PM                web
-a----         11/5/2026   1:17 PM             92 .env
-a----         11/5/2026   1:17 PM            560 access.log
-a----         11/5/2026   1:17 PM            701 bai_lam.md
## 4.3 Lọc log  
**a) Lệnh lọc status=500:**  Get-Content .\logs\access.log | Select-String "status=500" > .\logs\loi_500.txt
  
  
2026-10-28 18:03:25 GET /api/players status=500
2026-10-28 18:05:12 GET /api/players status=500
  
**b) Lệnh đếm status=404 và kết quả:**  
  (Get-Content .\logs\access.log | Select-String "status=404").count
  4
## 4.4 Script báo cáo  
Lệnh chạy script:  
  Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
  & '.\# Script tong_hop.ps1'
Nội dung logs/tong_hop.txt:  
=== BAO CAO GREENFIELD FC ===

2026-10-28 18:03:22 GET /images/logo-sai.png status=404
2026-10-28 18:07:44 GET /fixtures status=404
2026-10-28 18:13:52 GET /favicon.ico status=404
2026-10-28 18:32:18 GET /api/players status=404


3

  
## 4.6 Kiểm tra website và báo cáo lỗi  
| Tab | Tên file/thông báo | Cách khắc phục |  
|---|---|---|  
| Network |Lỗi ảnh|Đổi tên ảnh thành greenfield-logo |  
| Console | | |  
  
**Context:**  
  
**Expected:**  
  
**Actual:**  
  
**Log:**  
  
Câu tìm kiếm Google:  
  
## Ghi chú Excel  
Công thức/khó khăn đã gặp:

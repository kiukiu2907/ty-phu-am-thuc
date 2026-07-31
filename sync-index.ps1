# Chep bat-landing-page.html -> index.html (ban trien khai cho GitHub Pages).
# CHAY FILE NAY MOI LAN SUA bat-landing-page.html roi moi push len GitHub,
# neu khong thi trang web that su se van la ban cu.
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Copy-Item (Join-Path $here 'bat-landing-page.html') (Join-Path $here 'index.html') -Force
Write-Host "Da cap nhat index.html tu bat-landing-page.html" -ForegroundColor Green

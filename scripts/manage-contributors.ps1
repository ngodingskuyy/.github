# Script PowerShell untuk mengelola contributors
param(
    [Parameter(Mandatory=$true)]
    [string]$Action,
    
    [Parameter(Mandatory=$false)]
    [string]$Username,
    
    [Parameter(Mandatory=$false)]
    [string]$Contributions = "code"
)

$ErrorActionPreference = "Stop"

function Add-Contributor {
    param(
        [string]$User,
        [string]$Contribs
    )
    
    Write-Host "🔄 Menambahkan contributor: $User dengan kontribusi: $Contribs" -ForegroundColor Yellow
    
    try {
        & npx all-contributors add $User $Contribs
        Write-Host "✅ Berhasil menambahkan contributor: $User" -ForegroundColor Green
    }
    catch {
        Write-Host "❌ Error menambahkan contributor: $($_.Exception.Message)" -ForegroundColor Red
        exit 1
    }
}

function Update-Contributors {
    Write-Host "🔄 Memperbarui daftar contributors..." -ForegroundColor Yellow
    
    try {
        & npx all-contributors generate
        Write-Host "✅ Daftar contributors berhasil diperbarui!" -ForegroundColor Green
    }
    catch {
        Write-Host "❌ Error memperbarui contributors: $($_.Exception.Message)" -ForegroundColor Red
        exit 1
    }
}

function Show-Help {
    Write-Host @"
🚀 NgodingSkuyy Contributors Manager

Penggunaan:
  .\manage-contributors.ps1 add <username> [contributions]
  .\manage-contributors.ps1 generate
  .\manage-contributors.ps1 help

Contoh:
  .\manage-contributors.ps1 add ilhamridho code,doc,infra
  .\manage-contributors.ps1 add johndoe code
  .\manage-contributors.ps1 generate

Jenis Kontribusi:
  - code: Kode
  - doc: Dokumentasi  
  - design: Desain
  - infra: Infrastruktur
  - test: Testing
  - bug: Bug reports
  - example: Contoh
  - ideas: Ide
  - review: Code review
  - talk: Presentasi
  - tutorial: Tutorial
  - translation: Terjemahan
  - question: Menjawab pertanyaan
  - maintenance: Maintenance
"@ -ForegroundColor Cyan
}

# Main logic
switch ($Action.ToLower()) {
    "add" {
        if (-not $Username) {
            Write-Host "❌ Username diperlukan untuk menambah contributor" -ForegroundColor Red
            Write-Host "Contoh: .\manage-contributors.ps1 add ilhamridho code,doc" -ForegroundColor Yellow
            exit 1
        }
        Add-Contributor -User $Username -Contribs $Contributions
    }
    
    "generate" {
        Update-Contributors
    }
    
    "help" {
        Show-Help
    }
    
    default {
        Write-Host "❌ Action tidak dikenal: $Action" -ForegroundColor Red
        Write-Host "Gunakan: add, generate, atau help" -ForegroundColor Yellow
        Show-Help
        exit 1
    }
}

# 🤝 Contributors Management Guide

Panduan lengkap untuk mengelola contributors di NgodingSkuyy organization.

## 🚀 Quick Start

### Menambah Contributor Baru

#### Menggunakan PowerShell (Windows):
```powershell
# Menambah contributor dengan kontribusi code dan dokumentasi
.\scripts\manage-contributors.ps1 add ilhamridho code,doc,infra

# Menambah contributor dengan kontribusi code saja
.\scripts\manage-contributors.ps1 add johndoe code
```

#### Menggunakan npm scripts:
```bash
# Menambah contributor
npm run contributors:add ilhamridho code,doc,infra

# Generate ulang daftar contributors
npm run contributors:generate
```

#### Menggunakan all-contributors CLI langsung:
```bash
npx all-contributors add ilhamridho code,doc,infra
```

### Generate Contributors List
```powershell
# PowerShell
.\scripts\manage-contributors.ps1 generate

# atau npm
npm run contributors:generate
```

## 📋 Jenis Kontribusi

| Simbol | Jenis | Deskripsi |
|--------|-------|-----------|
| 💻 | `code` | Kode program |
| 📖 | `doc` | Dokumentasi |
| 🎨 | `design` | Desain UI/UX |
| 🚇 | `infra` | Infrastruktur |
| 🚨 | `test` | Testing |
| 🐛 | `bug` | Bug reports |
| 💡 | `example` | Contoh/Examples |
| 🤔 | `ideas` | Ide dan planning |
| 👀 | `review` | Code review |
| 📢 | `talk` | Presentasi |
| ✅ | `tutorial` | Tutorial |
| 🌍 | `translation` | Terjemahan |
| 💬 | `question` | Menjawab pertanyaan |
| 🚧 | `maintenance` | Maintenance |

## 🤖 Otomatis dengan GitHub Actions

Sistem akan otomatis memperbarui contributors list dalam kondisi:

1. **Manual Trigger**: Melalui GitHub Actions workflow dispatch
2. **Push ke main**: Ketika ada perubahan pada `.all-contributorsrc`
3. **Scheduled**: Setiap minggu pada hari Minggu jam 00:00 UTC

## 📁 File Struktur

```
NGODINGSKUYY/
├── .all-contributorsrc          # Konfigurasi all-contributors
├── profile/README.md            # Target file untuk contributors list
├── scripts/
│   ├── inject-contributors.js   # Script Node.js untuk update
│   └── manage-contributors.ps1  # Script PowerShell untuk Windows
├── workflows/
│   └── update-contributors.yml  # GitHub Actions workflow
└── package.json                 # npm scripts
```

## 🔧 Konfigurasi

File `.all-contributorsrc` berisi konfigurasi:

```json
{
  "files": ["profile/README.md"],
  "imageSize": 100,
  "commit": false,
  "contributorsPerLine": 7,
  "projectName": "NgodingSkuyy",
  "projectOwner": "ngodingskuyy"
}
```

## 🎯 Contoh Penggunaan Lengkap

### Scenario 1: Menambah contributor baru dengan multiple kontribusi
```powershell
.\scripts\manage-contributors.ps1 add ilhamridho code,doc,infra,review
```

### Scenario 2: Menambah multiple contributors
```powershell
.\scripts\manage-contributors.ps1 add johndoe code
.\scripts\manage-contributors.ps1 add janedoe doc,design
.\scripts\manage-contributors.ps1 add bobsmith test,bug
```

### Scenario 3: Update manual setelah menambah contributors
```powershell
.\scripts\manage-contributors.ps1 generate
```

## 🚨 Troubleshooting

### Error: Configuration file not found
**Solusi**: Pastikan file `.all-contributorsrc` ada di root directory.

### Error: Cannot find module 'all-contributors-cli'
**Solusi**: 
```bash
npm install
# atau
npm install -g all-contributors-cli
```

### Contributors tidak muncul di README
**Solusi**: 
1. Pastikan ada placeholder di `profile/README.md`:
```markdown
<!-- ALL-CONTRIBUTORS-LIST:START -->
<!-- ALL-CONTRIBUTORS-LIST:END -->
```
2. Jalankan generate ulang:
```powershell
.\scripts\manage-contributors.ps1 generate
```

## 📞 Support

Jika mengalami masalah, silakan:
1. Buka issue di repository ini
2. Hubungi tim NgodingSkuyy
3. Check dokumentasi [all-contributors](https://allcontributors.org/)

---

*Dibuat dengan ❤️ oleh NgodingSkuyy Team*

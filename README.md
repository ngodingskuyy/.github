# 🚀 NgodingSkuyy Organization Repository

Welcome to the NgodingSkuyy GitHub Organization management repository! This repo contains scripts, workflows, and configurations for managing our GitHub organization profile and contributors.

## 🎯 Quick Setup

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Add your first contributor:**
   ```powershell
   # Windows PowerShell
   .\scripts\manage-contributors.ps1 add username code,doc

   # Or using npm
   npm run contributors:add username code
   ```

3. **Generate contributors list:**
   ```powershell
   .\scripts\manage-contributors.ps1 generate
   ```

## 🤝 Contributors Management

### Adding Contributors

#### Method 1: PowerShell Script (Recommended for Windows)
```powershell
# Single contribution
.\scripts\manage-contributors.ps1 add ilhamridho code

# Multiple contributions (use comma-separated values)
.\scripts\manage-contributors.ps1 add ilhamridho code,doc,infra
```

#### Method 2: npm Scripts
```bash
# Note: npm scripts require separate commands for each contribution type
npm run contributors:add ilhamridho code
npm run contributors:add ilhamridho doc
npm run contributors:add ilhamridho infra
```

#### Method 3: Direct all-contributors CLI
```bash
npx all-contributors add ilhamridho code
npx all-contributors add ilhamridho doc
npx all-contributors add ilhamridho infra
```

### Updating Contributors List
```powershell
# PowerShell
.\scripts\manage-contributors.ps1 generate

# npm
npm run contributors:generate
```

## 📋 Contribution Types

| Icon | Type | Description |
|------|------|-------------|
| 💻 | `code` | Code contributions |
| 📖 | `doc` | Documentation |
| 🎨 | `design` | Design |
| 🚇 | `infra` | Infrastructure |
| 🚨 | `test` | Tests |
| 🐛 | `bug` | Bug reports |
| 💡 | `example` | Examples |
| 🤔 | `ideas` | Ideas & Planning |
| 👀 | `review` | Reviewed Pull Requests |
| 📢 | `talk` | Talks |
| ✅ | `tutorial` | Tutorials |
| 🌍 | `translation` | Translation |
| 💬 | `question` | Answering Questions |
| 🚧 | `maintenance` | Maintenance |

## 🤖 Automation

### GitHub Actions
- **Automatic updates**: Contributors list is automatically updated on push to main
- **Scheduled updates**: Weekly automatic updates every Sunday
- **Manual trigger**: Can be triggered manually from GitHub Actions tab

### Files Structure
```
NGODINGSKUYY/
├── .all-contributorsrc          # All-contributors configuration
├── profile/README.md            # Organization profile (target file)
├── scripts/
│   ├── inject-contributors.js   # Node.js script for updates
│   └── manage-contributors.ps1  # PowerShell management script
├── workflows/
│   └── update-contributors.yml  # GitHub Actions workflow
├── docs/
│   └── CONTRIBUTORS_GUIDE.md    # Detailed guide
└── package.json                 # npm scripts and dependencies
```

## 🚀 Getting Started Examples

### Scenario 1: Add a new code contributor
```powershell
.\scripts\manage-contributors.ps1 add johndoe code
```

### Scenario 2: Add someone who contributed code and documentation  
```powershell
.\scripts\manage-contributors.ps1 add janedoe code,doc
```

### Scenario 3: Add a designer who also helps with documentation
```powershell
.\scripts\manage-contributors.ps1 add designer123 design,doc
```

### Scenario 4: Update the contributors list after changes
```powershell
.\scripts\manage-contributors.ps1 generate
```

## 🔧 Configuration

The `.all-contributorsrc` file contains the configuration:

```json
{
  "files": ["profile/README.md"],
  "imageSize": 100,
  "contributorsPerLine": 7,
  "projectName": "NgodingSkuyy",
  "projectOwner": "ngodingskuyy"
}
```

## 📖 Documentation

- **[Complete Contributors Guide](docs/CONTRIBUTORS_GUIDE.md)** - Detailed documentation
- **[All Contributors Spec](https://allcontributors.org/)** - Official specification

## 🚨 Troubleshooting

### Common Issues

1. **"Configuration file not found"**
   - Ensure `.all-contributorsrc` exists in root directory
   - Run the commands from project root

2. **"Invalid contribution type"**
   - Check the supported contribution types in the table above
   - Use exact strings (case-sensitive)

3. **PowerShell execution policy error**
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

4. **Contributors not showing in README**
   - Ensure the placeholder comments exist in `profile/README.md`
   - Run generate command after adding contributors

## 🌟 Features

- ✅ Automatic contributor detection from GitHub
- ✅ Multiple contribution types support
- ✅ Automatic README.md updates
- ✅ GitHub Actions integration
- ✅ Cross-platform scripts (PowerShell + Node.js)
- ✅ Scheduled weekly updates
- ✅ Manual trigger support

## 🤝 Contributing

Want to improve this repository? Feel free to:

1. Fork the repository
2. Create your feature branch
3. Make your changes
4. Submit a pull request
5. Add yourself as a contributor!

---

**Made with ❤️ by the NgodingSkuyy Team**

For more information, visit our [website](https://ngodingskuyy.dev) or join our community!

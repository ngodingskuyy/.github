# 🎯 NgodingSkuyy Contributors - Quick Reference

## ⚡ Quick Commands

### Add Contributors (PowerShell - Recommended)
```powershell
# Code contributor
.\scripts\manage-contributors.ps1 add username code

# Multiple contributions
.\scripts\manage-contributors.ps1 add username code,doc,infra

# Generate/update list
.\scripts\manage-contributors.ps1 generate

# Help
.\scripts\manage-contributors.ps1 help
```

### Add Contributors (npm)
```bash
# Add contributor (one type at a time)
npm run contributors:add username code

# Generate list
npm run contributors:generate
```

### Add Contributors (direct CLI)
```bash
# Individual commands
npx all-contributors add username code
npx all-contributors add username doc
npx all-contributors add username infra

# Generate
npx all-contributors generate
```

## 📋 Contribution Types Quick Reference

- `code` 💻 - Code
- `doc` 📖 - Documentation  
- `design` 🎨 - Design
- `infra` 🚇 - Infrastructure
- `test` 🚨 - Tests
- `bug` 🐛 - Bug reports
- `example` 💡 - Examples
- `ideas` 🤔 - Ideas
- `review` 👀 - Code review
- `talk` 📢 - Talks
- `tutorial` ✅ - Tutorials
- `translation` 🌍 - Translation
- `question` 💬 - Answering questions
- `maintenance` 🚧 - Maintenance

## 🎯 Common Use Cases

```powershell
# New developer who writes code
.\scripts\manage-contributors.ps1 add newdev code

# Designer who also documents
.\scripts\manage-contributors.ps1 add designer123 design,doc

# DevOps engineer
.\scripts\manage-contributors.ps1 add devops-pro infra,code

# Community helper
.\scripts\manage-contributors.ps1 add helper question,doc

# Full-stack contributor
.\scripts\manage-contributors.ps1 add fullstack code,test,review,doc
```

## 🤖 Automation Status

- ✅ GitHub Actions setup
- ✅ Weekly auto-updates (Sundays 00:00 UTC)
- ✅ Auto-update on `.all-contributorsrc` changes
- ✅ Manual trigger available

## 🚨 Important Notes

1. **Username must exist on GitHub** - The tool validates against GitHub API
2. **Run from project root** - All commands should be run from `NGODINGSKUYY` directory
3. **Multiple contributions** - Use comma-separated values (no spaces)
4. **Case sensitive** - Contribution types are case-sensitive

---

*Happy contributing! 🚀*

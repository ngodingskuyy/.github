const fs = require('fs');
const { execSync } = require('child_process');
const path = require('path');

// Path ke file README
const readmePath = path.join(__dirname, '..', 'profile', 'README.md');

async function updateContributors() {
    try {
        console.log('🔄 Updating contributors...');

        // Jalankan all-contributors generate
        execSync('npx all-contributors generate', {
            stdio: 'inherit',
            cwd: path.join(__dirname, '..')
        });

        console.log('✅ Contributors updated successfully!');

        if (process.env.GITHUB_ACTIONS) {
            console.log('Running in GitHub Actions environment');
        }
    } catch (error) {
        console.error('❌ Error updating contributors:', error.message);
        process.exit(1);
    }
}

// Fungsi untuk menambah contributor baru
function addContributor(username, contributions) {
    try {
        console.log(`🔄 Adding contributor: ${username} with contributions: ${contributions}`);

        const command = `npx all-contributors add ${username} ${contributions}`;
        execSync(command, {
            stdio: 'inherit',
            cwd: path.join(__dirname, '..')
        });

        console.log(`✅ Successfully added contributor: ${username}`);
    } catch (error) {
        console.error('❌ Error adding contributor:', error.message);
        process.exit(1);
    }
}

// Jika script dipanggil langsung
if (require.main === module) {
    const args = process.argv.slice(2);

    if (args.length >= 2 && args[0] === 'add') {
        // Format: node inject-contributors.js add username contributions
        const username = args[1];
        const contributions = args[2] || 'code';
        addContributor(username, contributions);
    } else {
        // Default: update contributors
        updateContributors();
    }
}

module.exports = { updateContributors, addContributor };
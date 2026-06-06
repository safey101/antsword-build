
const { execSync } = require('child_process');
const path = require('path');

process.env.ELECTRON_MIRROR = 'https://npmmirror.com/mirrors/electron/';

try {
  console.log('Starting build...');
  
  // 首先检查 node_modules 是否存在
  const fs = require('fs');
  if (!fs.existsSync('node_modules')) {
    console.log('Installing dependencies...');
    execSync('npm install', { stdio: 'inherit' });
  }
  
  console.log('Building macOS ARM64 version...');
  
  // 使用 electron-builder 构建
  const builderPath = path.join(__dirname, 'node_modules', '.bin', 'electron-builder');
  if (process.platform === 'win32') {
    execSync(`"${builderPath}.cmd" --mac --arm64`, { stdio: 'inherit' });
  } else {
    execSync(`"${builderPath}" --mac --arm64`, { stdio: 'inherit' });
  }
  
  console.log('Build completed!');
} catch (error) {
  console.error('Build failed:', error);
  process.exit(1);
}

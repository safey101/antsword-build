
const { build } = require('app-builder-lib');
const path = require('path');

process.env.ELECTRON_MIRROR = 'https://npmmirror.com/mirrors/electron/';

console.log('Starting AntSword build for macOS ARM64...');

build({
  config: {
    appId: 'com.antsword.app',
    productName: 'AntSword',
    directories: {
      output: 'dist'
    },
    files: [
      '**/*',
      '!dist/**',
      '!node_modules/**/{test,__tests__,tests,powered-test,example,examples}/**',
      '!node_modules/**/*.{md,ts,tsbuildinfo}',
      '!node_modules/.bin/**'
    ],
    mac: {
      target: [
        {
          target: 'dmg',
          arch: ['arm64']
        },
        {
          target: 'zip',
          arch: ['arm64']
        }
      ],
      category: 'public.app-category.developer-tools'
    },
    win: {
      target: ['nsis', 'portable']
    },
    linux: {
      target: ['AppImage', 'deb'],
      category: 'Development'
    },
    nsis: {
      oneClick: false,
      allowToChangeInstallationDirectory: true
    }
  }
}).then(() => {
  console.log('Build successful!');
  console.log('Output files are in the "dist" directory.');
}).catch((error) => {
  console.error('Build failed:', error);
  process.exit(1);
});

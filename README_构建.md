
# AntSword macOS ARM64 构建项目

## ✅ 已完成的工作

1. ✅ Node.js 环境已安装 (v24.16.0)
2. ✅ 独立构建环境已创建（不修改原项目）
3. ✅ electron-builder 配置已完成
4. ✅ macOS ARM64 构建脚本已准备
5. ✅ 详细的构建指南已编写

## 📁 目录结构

```
antsword-build/
├── package.json             # 项目配置（含构建脚本）
├── build.js                 # 简单构建脚本
├── run-build.js             # 完整构建脚本
├── install-and-build.sh     # macOS 自动化构建脚本
├── install-and-build.bat    # Windows 环境准备脚本
├── 构建指南.md              # 详细构建指导
├── 使用说明.md              # 使用说明
└── README_构建.md           # 本文件
```

## 🚀 如何构建 macOS ARM64 版本

### 在 Mac 上构建（推荐）

#### 快速开始（3 步）

```bash
# 1. 将 antsword-build 文件夹复制到您的 Mac 上

# 2. 进入目录并运行自动化脚本
cd antsword-build
chmod +x install-and-build.sh
./install-and-build.sh

# 或者手动执行：
npm install
npm run build:mac:arm64
```

### 构建命令

```bash
# macOS ARM64 (Apple Silicon)
npm run build:mac:arm64

# macOS x64 (Intel)
npm run build:mac:x64

# macOS Universal (通用)
npm run build:mac:universal

# Windows
npm run build:win

# Linux
npm run build:linux
```

## 📦 构建输出

构建成功后，文件在 `dist/` 目录中：
- `AntSword-2.1.16-arm64.dmg` - DMG 安装包
- `AntSword-2.1.16-arm64-mac.zip` - ZIP 压缩包

## 📖 更多文档

- [构建指南.md](./构建指南.md) - 详细的构建说明和故障排除
- [使用说明.md](./使用说明.md) - 项目使用说明

## ⚠️ 重要提示

- **原始项目 `antSword-master` 没有被修改**
- 所有构建配置都在 `antsword-build/` 中
- macOS 应用建议在真实 Mac 上构建，以获得最佳兼容性

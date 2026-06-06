
# 没有 Mac 电脑时的 macOS ARM64 构建方案

## 📌 核心问题

AntSword 正常使用需要两个部分：
1. **AntSword** - 核心源代码（本项目）
2. **AntSword-Loader** - Electron 加载器

目前官方只提供了 x64 版本的 Loader，没有 ARM64 版本。

---

## 🎯 推荐方案（无需 Mac）

### 方案 1：在 Apple Silicon Mac 上使用 Rosetta 2 运行 x64 版本

如果您有朋友或可以访问 Apple Silicon Mac：

1. 下载官方 x64 版本的 AntSword-Loader
2. macOS 会自动使用 Rosetta 2 转译运行
3. 性能足够日常使用，这是最简单的方案

### 方案 2：使用云 Mac 服务构建

#### 推荐的云 Mac 服务：

| 服务 | 价格 | 特点 |
|------|------|------|
| [MacinCloud](https://www.macincloud.com) | $1/小时起 | 按需使用，按小时计费 |
| [Scaleway](https://www.scaleway.com) | €0.10/小时起 | 欧洲服务器，价格实惠 |
| [MacStadium](https://www.macstadium.com) | 企业级 | 稳定可靠 |
| [GitHub Actions](https://github.com/features/actions) | 免费额度 | 适合开源项目 |

#### 使用 GitHub Actions 构建（免费）

我可以帮您配置 GitHub Actions 来自动构建 macOS ARM64 版本！

### 方案 3：使用虚拟机（不推荐）

- 在 Windows 上运行 macOS 虚拟机比较困难
- 性能差且不稳定
- 违反 Apple 许可协议

---

## 🚀 使用 GitHub Actions 自动构建（推荐！）

这是最适合您的方案！我可以为您配置：

### 优势
- ✅ 完全免费
- ✅ 无需 Mac 电脑
- ✅ 自动构建
- ✅ 生成可下载的安装包

### 步骤

1. 将代码推送到 GitHub 仓库
2. 配置 GitHub Actions 工作流
3. 自动构建并发布 Release

---

## 💡 实用建议

**如果您有 Apple Silicon Mac 的朋友**：
- 请朋友帮忙运行一下 `install-and-build.sh` 脚本
- 几分钟就能构建完成

**如果您需要立即使用**：
- 在 Windows 上先使用 Windows 版本
- 或者使用官方 x64 版本配合 Rosetta 2

---

## 🤔 您希望我做什么？

请告诉我您更倾向于哪种方案：
1. **配置 GitHub Actions** - 我帮您设置自动构建
2. **使用云 Mac 服务** - 我提供详细步骤
3. **其他方案** - 请告诉我您的想法


# 使用 GitHub Actions 自动构建 AntSword

## 🎉 完美方案！无需 Mac 电脑

GitHub 提供免费的 macOS 构建环境，我们可以利用它来自动构建 macOS ARM64 版本！

---

## 📋 使用步骤

### 1. 创建 GitHub 账号
如果还没有账号，先注册一个：https://github.com/

### 2. 创建新仓库
1. 登录 GitHub
2. 点击右上角的 "+" → "New repository"
3. 仓库名：`antsword-build` （或您喜欢的名字）
4. 设置为 Public 或 Private 都可以
5. 点击 "Create repository"

### 3. 上传代码到 GitHub

在 `antsword-build` 文件夹中打开终端或 PowerShell，执行：

```bash
# 初始化 git
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit"

# 添加远程仓库（替换为您的用户名和仓库名）
git remote add origin https://github.com/您的用户名/antsword-build.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

### 4. 手动触发构建（最简单）

1. 进入您的 GitHub 仓库
2. 点击上方的 "Actions" 标签
3. 在左侧选择 "Build AntSword" 工作流
4. 点击右侧的 "Run workflow" 按钮
5. 点击绿色的 "Run workflow" 确认
6. 等待 10-15 分钟，构建完成！

### 5. 下载构建结果

构建完成后：
1. 进入 Actions → 选择对应的构建记录
2. 滚动到页面底部的 "Artifacts" 部分
3. 下载 `AntSword-macOS-arm64` 文件

---

## 📦 自动发布版本

如果您想自动创建 Release：

```bash
# 创建标签
git tag -a v2.1.16 -m "Release v2.1.16"

# 推送标签
git push origin v2.1.16
```

这样 GitHub Actions 会自动：
1. 构建所有平台的版本
2. 创建 Release
3. 上传所有安装包

---

## 🔧 工作流说明

已配置的 GitHub Actions 工作流会：

- 在 `macos-latest` (Apple Silicon) 上构建 ARM64 版本
- 在 `windows-latest` 上构建 Windows 版本
- 在 `ubuntu-latest` 上构建 Linux 版本
- 自动上传构建结果供下载

---

## 💡 优点

| 优点 | 说明 |
|------|------|
| ✅ 完全免费 | GitHub Actions 免费额度充足 |
| ✅ 无需 Mac | 使用 GitHub 提供的 macOS 构建环境 |
| ✅ 一键构建 | 点击按钮即可开始 |
| ✅ 多平台 | 同时构建 Windows、macOS、Linux |
| ✅ 自动发布 | 打标签即可自动发布 Release |

---

## 🚀 快速开始

**最简单的方式**：
1. 把 `antsword-build` 推送到 GitHub
2. 在 Actions 页面手动点击 "Run workflow"
3. 下载 `AntSword-macOS-arm64`

就这么简单！

---

## 📞 需要帮助？

如果推送代码时遇到问题，请检查：
- Git 是否已安装：`git --version`
- 仓库地址是否正确
- GitHub 账号是否已认证


@echo off
chcp 65001 >nul
echo =========================================
echo AntSword 构建脚本
echo =========================================
echo.

REM 检查 Node.js
node --version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未找到 Node.js，请先安装 Node.js
    echo 下载地址: https://nodejs.org/
    pause
    exit /b 1
)

echo [信息] Node.js 版本:
node --version
npm --version
echo.

REM 设置镜像
echo [信息] 配置 Electron 镜像...
set ELECTRON_MIRROR=https://npmmirror.com/mirrors/electron/
npm config set electron_mirror https://npmmirror.com/mirrors/electron/

REM 安装依赖
echo [信息] 安装项目依赖...
call npm install

if errorlevel 1 (
    echo [错误] 依赖安装失败
    pause
    exit /b 1
)

echo [成功] 依赖安装完成
echo.

REM 提示用户
echo =========================================
echo 构建已准备就绪！
echo.
echo 注意：
echo - 要构建 macOS ARM64 版本，请在 Mac 上运行 npm run build:mac:arm64
echo - 在 Windows 上可以构建 Windows 版本：npm run build:win
echo.
echo 查看 构建指南.md 获取详细说明
echo =========================================
echo.
pause

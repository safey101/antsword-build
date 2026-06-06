
#!/bin/bash

# AntSword macOS ARM64 自动化构建脚本

echo "========================================="
echo "AntSword macOS ARM64 构建脚本"
echo "========================================="

# 设置颜色
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检查是否在 macOS 上
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo -e "${RED}错误：此脚本需要在 macOS 上运行${NC}"
    exit 1
fi

# 检查 Node.js
if ! command -v node &> /dev/null; then
    echo -e "${YELLOW}Node.js 未安装，正在安装...${NC}"
    
    if command -v brew &> /dev/null; then
        brew install node
    else
        echo -e "${RED}请先安装 Node.js：https://nodejs.org/${NC}"
        exit 1
    fi
fi

echo -e "${GREEN}Node.js 版本: $(node --version)${NC}"
echo -e "${GREEN}npm 版本: $(npm --version)${NC}"

# 设置镜像（国内加速）
echo -e "${YELLOW}配置 Electron 镜像...${NC}"
export ELECTRON_MIRROR=https://npmmirror.com/mirrors/electron/
npm config set electron_mirror https://npmmirror.com/mirrors/electron/

# 安装依赖
echo -e "${YELLOW}安装项目依赖...${NC}"
npm install

if [ $? -ne 0 ]; then
    echo -e "${RED}依赖安装失败${NC}"
    exit 1
fi

echo -e "${GREEN}依赖安装成功${NC}"

# 开始构建
echo -e "${YELLOW}开始构建 macOS ARM64 版本...${NC}"
npm run build:mac:arm64

if [ $? -eq 0 ]; then
    echo -e "${GREEN}=========================================${NC}"
    echo -e "${GREEN}构建成功！${NC}"
    echo -e "${GREEN}输出目录: dist/${NC}"
    echo -e "${GREEN}=========================================${NC}"
    
    if [ -d "dist" ]; then
        echo -e "${YELLOW}构建的文件:${NC}"
        ls -lh dist/
    fi
else
    echo -e "${RED}构建失败${NC}"
    exit 1
fi

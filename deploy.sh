echo "开始部署 Hexo 博客..."

# 切换到博客目录
cd "$(dirname "$0")" || exit

# 清理旧文件
hexo clean

# 生成新文件
hexo generate

# 部署到 GitHub
hexo deploy

echo "✅ 部署完成！请访问 https://cposa.github.io 查看最新博客。"
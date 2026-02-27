#!/bin/bash
cd /home/openclaw/.openclaw/workspace

# 设置API Key (如果需要)
export GEMINI_API_KEY=""

# 生成日报
npx -y bun scripts/digest.ts --hours 48 --top-n 15 --lang zh --output ./AI-博客每日精选-$(date +%Y-%m-%d).md

# Git提交并推送
git add AI-博客每日精选-*.md
git commit -m "AI Daily Digest $(date +%Y-%m-%d)"
git push origin main

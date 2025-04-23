#!/bin/bash

# リポジトリ名と説明
REPO_NAME="accumulation-notes"
REPO_DESC="A repository for accumulating daily technical learning notes and logs."

# ディレクトリ構成の作成
mkdir -p "$REPO_NAME"/{commands,languages,os,tools,docs}
cd "$REPO_NAME" || exit

# README.mdの作成
cat <<EOF > README.md
# accumulation-notes

日々の技術学習を積み重ねていくためのメモリポジトリです。

## ディレクトリ構成
- \`commands/\`: CLI操作など、便利なコマンドのメモ
- \`languages/\`: プログラミング言語に関する知識やスニペット
- \`os/\`: OS設定やトラブルシュートなど（主にLinux）
- \`tools/\`: 学習や開発で使うツール（gh, Docker等）
- \`docs/\`: 日付ベースの学習ログや振り返り
EOF

# 初回学習メモ作成
cat <<EOF > docs/2025-04-23-first-note.md
# [学習メモ] accumulation-notes 初期構成 & 初コミット！

## 日付  
2025-04-23

## 今日やったこと  
- 技術メモ用リポジトリ \`accumulation-notes\` を新規作成  
- 目的に合わせたディレクトリ構成で整備  
- 初回メモとREADMEを記載して初コミット
- Cursorでコマンドメモを作成してみた

## 学び  
- 構造設計は最初が肝心。後から追加しやすく、使い回しやすい構成を意識した  
- CLI操作で初期化まで自動化できると爆速で始められる
- 分からないことはAIの補助を素直に受け入れるが、同時に意味を理解するために質問も行う

## コマンドメモ
\`\`\`bash
gh repo create $REPO_NAME --private --description "$REPO_DESC" --source=. --remote=origin --push
\`\`\`
EOF

# Git初期化
git init
git add .
git commit -m "🚀 初期構成 & 初メモ追加"

# GitHubリポジトリ作成（CLI使用）
gh repo create "$REPO_NAME" --private --description "$REPO_DESC" --source=. --remote=origin --push

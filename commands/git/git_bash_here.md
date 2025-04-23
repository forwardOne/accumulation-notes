# [学習メモ] Windows上でgit bashを実行する方法

## 日付  
2025-04-23

## やりたいこと
- スクリプトの実行権限を付与、実行

## 当然出来ない
- PowerShellにそのまま流すのはNG
- `cat <<EOF > filename` などの記法は PowerShell ではサポートされていない
- 変数の扱い（`$REPO_NAME` など）も異なる
- PowerShell に対応したいなら、専用に書き換える必要がある

## 方法
- Git for Windows をインストール
- 対象のbashが存在するフォルダ内で右クリック→`Git Bash Here`
- (見当たらないならその他オプション的なところに隠れているかも)
- 任意のbashファイルに実行権限を付与&実行

## コマンドメモ
実行権限付与
```bash
chmod +x 任意のファイル名.sh
```
実行
```bash
./任意のファイル名.sh
```
# 機械学習コンペテンプレート

## プロジェクト概要

このプロジェクトは、機械学習やデータ分析のための環境をDockerで構築しています。\
Jupyter Notebookを用いたデータ分析やPythonスクリプトの実行を効率的に行うことができます。\
またDockerでの実行のため、第三者に依存環境を簡単に共有してmodelを作成できます

## ディレクトリ構成

```
プロジェクトルート/
├── data/                             # データ保存用フォルダ
│   ├── processed/                    # 処理後のデータ保存用
│   └── raw/                          # 生データ保存用
├── eda/                              # Exploratory Data Analysis (EDA) のノートブックフォルダ
│   ├── eda-template1/
│   └── eda-template2/
├── feature-engineerings/             # 特徴量エンジニアリングのノートブックフォルダ
│   ├── feature-engineering-template1/
│   └── feature-engineering-template2/
├── models/                           # モデル関連フォルダ
│   ├── model-template1/
│   └── model-template2/
├── Dockerfile.jupyter                # Jupyter Notebook用のDockerfile
├── Dockerfile.script                 # Pythonスクリプト実行用のDockerfile
├── docker-compose.yml                # Docker Compose設定ファイル
├── Makefile                          # 環境構築と実行用のMakefile
└── requirements.txt                  # Pythonパッケージの依存関係
```

## Makefileの使い方

### 1. Dockerイメージのビルド

プロジェクトのDockerイメージをビルドします。

```bash
make build
```

### 2. コンテナの起動

以下のコマンドで、すべてのコンテナをフォアグラウンドで起動します。

```bash
make start
```

### 3. Pythonスクリプトの実行

`models`や`feature-engineerings`フォルダ内のPythonスクリプト（`main.py`）を実行することができます。

- `TYPE`にはディレクトリ名（`models`や`feature-engineerings`）を指定し、`VER`にはテンプレート名（例：`model-template1`）を指定します。

```bash
make run TYPE=models VER=model-template1
```

### 4. Jupyter Notebookの起動

以下のコマンドでJupyter Notebookをバックグラウンドで起動します。起動後、ブラウザで`http://localhost:8888`にアクセスして使用できます。

```bash
make notebook
```

### 5. コンテナの停止と削除

すべてのコンテナを停止し、削除するには、以下のコマンドを実行します。

```bash
make down
```

## 依存関係の追加

新しいPythonパッケージを追加する場合は、`requirements.txt`に追記してから、再度以下のコマンドでビルドしてください。

```bash
make build
```

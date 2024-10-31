# Dockerイメージのビルド
build:
	docker-compose build

start:
	docker-compose up

# `script`コンテナでPythonスクリプトを実行
run:
	docker-compose run --rm script python3 $(TYPE)/$(VER)/main.py --type=$(TYPE) --ver=$(VER)

# `jupyter`コンテナをバックグラウンドで起動
notebook:
	docker-compose up -d jupyter

# すべてのコンテナを停止し、削除
down:
	docker-compose down

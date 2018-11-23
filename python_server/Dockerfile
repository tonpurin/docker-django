# イメージの指定
FROM python:3.6

# コンテナにディレクトリ作成
RUN mkdir /server
# 作業ディレクトリの指定
WORKDIR /server
# ホストからコンテナへのファイルのコピー
COPY requirements.txt /server/requirements.txt

# コマンドの実行 (pythonモジュールのインストール)
RUN pip install -r requirements.txt
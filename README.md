# Docker × DjangoのWEBアプリインフラ

### 使用する技術

- Docker
	- 各アプリケーション・ミドルウェアをコンテナ化し、Docker composeで管理する
- Django
	- PythonのWEBアプリケーションフレームワーク
- Nginx
	- WEBサーバ構築用のミドルウェア
- WSGI (Web Server Gateway Interface)
	- Pythonで記述されたWEBアプリケーションとWEBサーバをつなぐためのインターフェース
	- ※ DjangoだけでもWEBサーバとして機能する(httpリクエストをさばける)が、ApatcheやNginx上で動かす方が速度面等で良いらしい 
	- httpリクエスト → nginx → wsgi → django → wsgi → nginx → httpレスポンス
- MySQL
	- データベース 

-----

### 構成




----

### 実行方法

- 開発環境(ローカル)で実行する場合

	- Docker compose インストール

	- コンテナ生成・起動

	```
		$ docker-compose -f docker-compose.yml -f docker-compose.dev.yml build  
		$ docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
	```
	
	- アクセス (localhost:8000) 
	

- 本番環境(EC2)で実行する場合

	- ネットワーク設定 (EC2のport:80を空ける)
	
	- Docker compose インストール

	- コンテナ生成・起動

	```
		$ docker-compose -f docker-compose.yml -f docker-compose.product.yml build  
		$ docker-compose -f docker-compose.yml -f docker-compose.product.yml up
	```
	
	- アクセス (ec2のIP)


---

### TODO

- Django
	- DBの確認
		- Amazon RDSとかと疎通出来るか
	- 静的ファイルの確認

---

### 参照

- 全体
	- [docker+nginx+uwsgi+djangoでwebアプリ作成](https://qiita.com/hayatetabata/items/7b51acedeb3d4e84dd12) 

- Docker
	- [Docker Composeでコンテナに入る方法](https://qiita.com/setouchi/items/ebfeefb7d5b129002177) 
	- [Docker Composeでビルドしたイメージ名について](https://amaya382.hatenablog.jp/entry/2017/04/03/034002)
	- [開発環境と本番環境でdocker-composeを分ける方法](https://qiita.com/urouro_n/items/6a026eb635cc7d0e034f)
	
- WSGI
	- [WSGIとDjangoの関係](http://d.hatena.ne.jp/hirokiky/20121001/1349098637) 
	- [uwsgi.iniの記述について](https://qiita.com/hogemax/items/a3b04f0e848f52ff888e)

- Django
	- [EC2でDjangoを動かす](https://qiita.com/kur/items/fb75354ee53671c79614) 
	- [開発環境と本番環境でsettingを分ける方法](https://qiita.com/okoppe8/items/e60d35f55188c0ab9ecc)
# ECS × Docker × DjangoでWEBアプリ作成

### 使用する技術

- AWS
	- ECS (EC2 Container Service)でEC2上で動くコンテナ管理する
- Docker
	- 各アプリケーション・ミドルウェアをコンテナ化し、Docker composeで管理する
- Django
	- PythonでWEBアプリを作成
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
 





---

### 参照

- 全体
	- [docker+nginx+uwsgi+djangoでwebアプリ作成](https://qiita.com/hayatetabata/items/7b51acedeb3d4e84dd12) 
	
- AWS
	- [EC2×dockerでWEBサーバ作成](https://qiita.com/y-do/items/e127211b32296d65803a)
	- [EKSとECSの違いについて](https://logmi.jp/tech/articles/305690)

- Docker
	- [Docker Composeでコンテナに入る方法](https://qiita.com/setouchi/items/ebfeefb7d5b129002177) 
	- [Docker Composeでビルドしたイメージ名について](https://amaya382.hatenablog.jp/entry/2017/04/03/034002)
	
- WSGI
	- [WSGIとDjangoの関係](http://d.hatena.ne.jp/hirokiky/20121001/1349098637) 
	- [uwsgi.iniの記述について](https://qiita.com/hogemax/items/a3b04f0e848f52ff888e)
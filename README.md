# docker-react-django-mysql-nginx

# frontend

react hot reload 機能実装済み。

# backend

rest_framework 可動済み。URL ルーティング・APIView 実装済み。

# nginx

backend のソースコードをコピー。<br>
frontend, backend それぞれの静的ファイルを nginx に配置し、サーバーを起動する。

# mysql

## tips

root ユーザーにログインできない時は、下記のコマンドを実施して、ボリュームを削除し、再度ビルドしてみる。

```terminal
docker componse down -v
```

```terminal
docker compose up -d
```

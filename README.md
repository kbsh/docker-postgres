## 概要

MySQL をローカルにダウンロードせずに、docker で MySQL 立ち上げる。
`initdb/`配下に配置した SQL を読み込み初期データを投入できる。

## 前提

- [Docker Desktop](https://docs.docker.com/docker-for-mac/install/) などを利用していること

## 環境に合わせた変更

- PostgreSQL バージョン
  - `./docker-compose.yml`の`image`のバージョンを変更する
- 接続情報
  - `.env`に環境変数を配置する
- 初期投入データ
  - `./initdb`配下に sql,zip などファイルを配置する

.env サンプル

```
POSTGRES_USER=test
POSTGRES_PASSWORD=test
POSTGRES_DB=test
```

.env がない場合のデフォルト値

```
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_DB=test
```

## コマンドヘルプ

ビルド＆起動

```
$ docker-compose up -d --build
```

初期投入データの変更時

```
$ docker-compose down  --rmi all -v
$ docker-compose up -d --build
```

## DB 接続

#### CUI での接続

```
$ docker exec -it db-container bash
root@f1706d333800:/# psql -U postgres
```

#### GUI クライアントでの接続

- host: 127.0.0.1
- port: 5432
- user: postgres
- password: postgres

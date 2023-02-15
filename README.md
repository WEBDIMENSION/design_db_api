# Design DB, API

## Overview

DB設計・操作, API設計の習得を目標とする

### ツール

- Docker, Docker-comose
    - OpenApi
    - Swagger-ui + api
    - Prism
    - phpmig
    - MySQL8
    - Postgres14
    - Schemaspy + Nginx
        - for MySQL
        - for Postgres

### 振る舞い

- phpmig
    - DDL を記述 `phpmig/migrationns/mysql` `phpmig/migrationns/postgres`
    - seeder,fakerでダミーデータ生成
- schemaspy
    - `docker-compose up -d` で起動、`depends_on:` でDBの起動依存
    - DB構造、リレーションなどを確認
- openapi
    - api設計を`yml`で記述。記述に変更があれば随時 `openapi.json` を再生性
- swagger-ui + react
    - `openapi` が アウトプットした `openapi.json` を読み込みブラウザで確認 (reactで読み込んでるためhot reload)
- prism
    - mockサーバー `openapi.json` を読み込み `json` を返す

## Usage

***portは.envで変更可***

### コンテナ起動

すべてのサービス起動

```bash
docker-compose up -d
```

 ---

### schemaspy

- `docker-compose up -d` 時に起動(解析)する。
- `depends_on:` でDB起動に依存。
- DBに変更があった場合は `docker-compose up -d` or `docker-compose run --rm schemaspy_[mysql | postgres]`

#### MySQL

- [schemaspy : http://localhost:8003/](http://localhost:8003/)

#### Postgres

- [schemaspy : http://localhost:8004/](http://localhost:8004/)

---

### swagger-u
- `docker-compose exec yarn start` 時に起動(解析)する。
- [swagger-ui : http://localhost:8002/](http://localhost:8002/)

---

### prism

- [swagger-ui : http://localhost:8001/user](http://localhost:8001/user)

*parameter is see suwagger-ui

---

## Theme

ECサイトのDBを想定

### Tables

| 用途     | Table名             | migration_prefix_number |
|--------|--------------------|-------------------------|
| 商品カテゴリ | product_categories | 008xxx                  |
| ログイン履歴 | login_history      | 007xxx                  |
| 受注商品   | orders_detail      | 014xxx                  |
| 受注明細   | orders_total       | 015xxx                  |
| 受注     | orders             | 013xxx                  |
| 支払い方法  | payment            | 004xxx                  |
| 商品レビュー | product_reviews    | 012xxx                  |
| 商品マスター | products           | 011xxx                  |
| 配送方法   | deliveries         | 003xxx                  |
| スタッフ権限 | staff_roles        | 001xxx                  |
| スタッフ   | staffs             | 002xxx                  |
| 顧客マスター | users              | 006xxx                  |
| 顧客権限   | users_ranks        | 005xxx                  |
| 商品ブランド | brands             | 010xxx                  |

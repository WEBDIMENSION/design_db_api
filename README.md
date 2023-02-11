# OpenAPI generater & Prism & Swagger-UI & schemaspy & DB操作 の習得を目標とする

## Usage

### コンテナ起動

```bash
docker-compose up -d
```

---

### schemaspy

#### MySQL
- [schemaspy : http://localhost:8003/](http://localhost:8003/)
 
#### Postgres
- [schemaspy : http://localhost:8004/](http://localhost:8004/)


```bash
# genarate
docker-compose up -d schemaspy
```

---

### swagger-u

- [swagger-ui : http://localhost:8002/](http://localhost:8002/)

---

### prism

- [swagger-ui : http://localhost:8001/user](http://localhost:8001/user)

*parameter is see suwagger-ui

---

## Overview

1. openapi (./openapi/) ソースから`openapi.json` を生成
    - 分割ファイル(yaml)を結合して`openapijson`を生成
    - Prism, Swagger-UI でこの `openapi.json` を読み込に表示

   ```bash
   docker-compose up -d openapi
   # generated/openapi/openapi.json が生成される
   ```

   **package,json**  
   src/ 配下のymlを監視
   ```bash
   "watch": "chokidar 'src/root.yml' 'src/**/*.yml' -c 'npm run schema_json' --initial --polling"
   ```
2. Prism, Swagger-UI 起動
   ```bash
   docker-compose up -d
   ```

## Swagger-UI on REACT

### Swaggeer-UI を REACT上で動かす理由

- Intellij IDEA のプレビューはリロードしない。（手動で更新）
- Visual Studio Code のプレビューは ルートの yml にはホットリロードするが分割ファイルには追従しない。
- Swagger-UI オリジナルではリロードしない。 （手動で更新）

### 取り急ぎの処理

REACT上でホットリロードを実現させたかったがとりあえずは 'src/' 配下の変更を検知してリロード。

## Theme

ECサイトのDBを想定

### Tables

| 用途     | Table名             |
|--------|--------------------|
| ログイン履歴 | login_history      |
| 受注商品   | orders_products    |
| 受注明細   | orders_detail      |
| 受注     | orders             |
| 支払い方法  | payment            |
| 配送方法   | shipping           |
| スタッフ   | staff              |
| スタッフ権限 | staff_roles        |
| 商品マスター | products           |
| 商品ブランド | brands             |
| 顧客マスター | customers          |
| 商品カテゴリ | product_categories |
| 商品レビュー | product_reviews    |

See! Document/Tables

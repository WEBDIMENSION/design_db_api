# OpenAPI generater & Prism & Swagger-UI

## USAGE

1. ソースから`openapi.json` を生成
   - 分割ファイル(yaml)を結合して`openapijson`を生成
   - Prism, Swagger-UI でこの `openapi.json` を読み込む
   ```bash
   docker-compose up -d openapi
   # generated/openapi/openapi.json が生成される
   ```
   
   **package,json**  
   src/ 配下のymlを監視
   ```json
   "watch": "chokidar 'src/root.yml' 'src/**/*.yml' -c 'npm run schema_json' --initial --polling"
   ```
2. Prism, Swagger-UI 起動
   ```bash
   docker-compose up -d
   ```
   
## Swagger-UI on REACT
### Swaggeer-UI を REACT上で動かす理由

- Intellij IDEA のプレビューはリロードしない。（手動で更新）
- Visual Studio Code  のプレビューは ルートの yml にはホットリロードするが分割ファイルには追従しない。
- Swagger-UI オリジナルではリロードしない。 （手動で更新）

### 取り急ぎの処理
REACT上でホットリロードを実現させたかったがとりあえずは 'src/' 配下の変更を検知してリロード。
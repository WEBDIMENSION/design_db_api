# Http_Request


## General

```http request
Method Request-URI HTTP-Version
Header-field: Header-value

Request-Body
```

## Environment

### Regular

for common variables such as host or query parameters.
---------------------------------------------
ホストやクエリパラメータなどの一般的な変数用

Regularな環境変数ファイルを作成するとプロジェクトルートにhttp-client.env.jsonというファイルが作成されます。上記に引用したようにホスト名やクエリパラメータなど一般的な変数を記述します。

下記は一例ですが、"dev"や"prod"が環境名でその1階層下に定義されているのが環境毎の環境変数です。

```json
{
"dev": {
"baseUrl": "localhost:8080/memo"
},
"prod": {
"baseUrl": "www.example.com/memo"
}
}
```

### Private

for sensitive data such as passwords or tokens.
---------------------------------------------
パスワードやトークンなどの機密データ用

Privateな環境変数ファイルを作成するとプロジェクトルートにhttp-client.private.env.jsonというファイルが作成されます。上記に引用したようにパスワードやトークンなどを記述します。
なお、こちらのファイルをバージョン管理したくない場合、例えばGitだと.gitignoreファイルに記述する必要があります。

```json
{
"dev": {
"api-token": "jgl6H%&S0"
},
"prod": {
"api-token": "Hem3k%:Q0"
}
}
```

```http request
GET http://{{baseUrl}}/1
```

### 動的な変数

| name       | 	description                  |
|------------|-------------------------------|
| $uuid	     | UUID v4で一意な値を生成します            |
| $timestamp | 	現在のUNIX timestampを生成します      |
| $randomInt | 	0から1000の間でランダムなintegerを生成します |

```http request
GET http://localhost:8080/memo/{{$randomInt}}
```

### Response handler scripts

```http request
# JavaScript ECMAScript 5.1で記述する必要があるのでconstやletといったキーワードは使用できません。
GET http://localhost:8080/memo/1
Accept: application/json

> {%
// Response Handler Script
...
%}
```

### HTTP Response Handler library

スクリプトではclientとresponseという2つのライブラリが利用できます。

レスポンスの検証

レスポンスの検証にはclient.testおよびclient.assertを利用します。

```http request
client.test("Request executed successfully", function() {
client.assert(response.status === 201, "Response status is not 201");
});
assertが失敗するとTestsウィンドウにメッセージが出力されます。
```

###  レスポンスデータ

レスポンスデータはresponse.bodyでアクセスできます。
content-typeがapplication/jsonの場合、response.bodyにはJSONオブジェクトが格納されています。

例えば、下記のようなjsonがレスポンスされたときresponse.body.idやresponse.body.titleのようにアクセスできます。

```json
{
"id": 15,
"title": "new Memo Title",
"description": "new Memo Description",
"done": false,
"createAt": "2020-07-13T12:34:13.1830192",
"updateAt": null
}
```

# レスポンスからグローバル変数をセットする

client.globalというグローバル変数を保存できるストレージがあります。グローバル変数に保存した値はHTTPリクエストの中で{{varialble_name}}というプレースフォルダで利用できます。

例えば、次のような使い方ができます。

1) 新しいデータをPOSTし、そのレスポンスデータのIDをグルーバル変数に保存

このHTTPリクエストで実行するスクリプトで、レスポンスデータのIDをグローバル変数newIdにセットします。
ここでセットしたグローバル変数は、以降のHTTPリクエスト中で利用できます。（IntellIJ IDEAを終了するまで保存されます。）

```http request
POST http://localhost:8080/memo
Content-Type: application/json

{
"title": "new Memo Title",
"description": "new Memo Description",
"done": false
}

> {%
var newId = response.body.id;
client.global.set("newId", newId);
%}
```

2) 次のHTTPリクエストでグローバル変数を利用

1)でセットしたグローバル変数newIdを、このHTTPリクエストで利用します。

```http request
GET http://localhost:8080/memo/{{newId}}
Content-Type: application/json
```




## Usage

### Get
```http request
GET http://localhost:8080/uer/1
Accept: application/json
```

### Cookie

受信したCookieはプロジェクトの.idea/httpRequests/http-client.cookies


```http request
#Header-field
Cookie: key1=cookie-value-1
Cookie: key2=cookie-value-2
```



### Post json data

```http request
POST http://localhost:8080/memo
Content-Type: application/json

{
  "title": "new memo title",
  "description": "new memo description",
  "done": false
}
```

### Post json file

```http request
POST http://localhost:8080/memo
Content-Type: application/json

// specify json file
< ./json/new_memo.json
```

### Post image

```http request
POST localhost:8080/upload
Content-Type: multipart/form-data; boundary=WebAppBoundary

--WebAppBoundary
Content-Disposition: form-data; name="file"; filename="demo.jpg"

< ./images/demo.jpg
--WebAppBoundary--
```

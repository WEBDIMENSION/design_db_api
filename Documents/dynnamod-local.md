# Dynamod-local

Port: 8000 (default)

cakephp3

AWS CREDENTIAL
```injectablephp
# config/app.php
export AWS_ACCESS_KEY_ID=webdevelop
export AWS_SECRET_ACCESS_KEY=webdevelop
export AWS_DEFAULT_REGION=ap-northeast-1
```


Dynamod インスタンス 設定

```injectablephp
use Cake\Core\Configure;
use Aws\Sdk;


...
...
...

        $sdk = new Sdk(
            Configure::read('AWS.dynamodb')
        );

        $dynamodb = $sdk->createDynamoDb();
        $sdk = new Sdk(
            Configure::read('AWS.dynamodb')
        );

        $dynamodb = $sdk->createDynamoDb();
```

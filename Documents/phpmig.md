# phpmig

## コマンド

```bash
#  migrationファイル作成
vendor/bin/phpmig generate
docker-compose exec phpmig vendor/bin/phpmig generate
# status
vendor/bin/phpmig status
docker-compose exec phpmig vendor/bin/phpmig status
# Migrate
vendor/bin/phpmig migrate
docker-compose exec phpmig vendor/bin/phpmig migrate
# Rollback
## 1つ戻す 
vendor/bin/phpmig rollback
docker-compose exec phpmig vendor/bin/phpmig rollback
## 指定したところまで戻す 
vendor/bin/phpmig rollback -t 20111101000144
docker-compose exec phpmig vendor/bin/phpmig rollback -t 20111101000144
### 全て戻す
vendor/bin/phpmig rollback -t 0
docker-compose exec phpmig vendor/bin/phpmig rollback -t 0
###指定したところを戻す
vendor/bin/phpmig phpmig down 20111101000144
docker-compose exec phpmig vendor/bin/phpmig down 20111101000144
```

## Example Create Table

```php
<?php
use Phpmig\Migration\Migration;

class createStaffRoles extends Migration
{
    /**
     * Do the migration
     */
    public function up()
    {
        $sql = "
        CREATE TABLE " . TABLE_STAFF_ROLES . " (
            `id` integer(11) NOT NULL AUTO_INCREMENT,
            `name` varchar(50) NOT NULL,
            `memo` varchar(255) NOT NULL,
            `delete_flg` boolean NOT NULL DEFAULT false,
            `created_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            PRIMARY KEY (`id`)
            ) ENGINE=InnoDB;
            ";
        $container = $this->getContainer();
        $container['db']->query($sql);
    }

    /**
     * Undo the migration
     */
    public function down()
    {
        $sql = "
        DROP TABLE " . TABLE_STAFF_ROLES . "
        ";
        $container = $this->getContainer();
        $container['db']->query($sql);
    }
}
```

**Example Insert Data**

```php
<?php

use Phpmig\Migration\Migration;

class insertStaffRoles extends Migration
{
    /**
     * Do the migration
     */
    public function up()
    {
        $faker = Faker\Factory::create(FAKER_LOCATE);
        $container = $this->getContainer();
        $staff_roles_array = STAFF_ROLES_ARRAY;

        for ($i = 0; $i < sizeof($staff_roles_array); $i++) {
            $stmt = $container['db']->prepare(
                "insert into " . TABLE_STAFF_ROLES . "
               (
                   name,
                   memo
               ) values (
                '" . $staff_roles_array[$i] . "',
                '" . $faker->realText(50) . "'
                );"
            );
            $stmt->execute([]);
        }
    }

    /**
     * Undo the migration
     */
    public function down()
    {
        $sql = "
        TRUNCATE TABLE " . TABLE_STAFF_ROLES . "
        ";
        $container = $this->getContainer();
        $container['db']->query($sql);
    }
}
```

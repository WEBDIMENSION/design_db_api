# Laravel

## Tinker

```bash
php artisan tinker
```

```bash
# Example
DB::table('users')->all();
DB::table('users')->find(1);
```

## Controller

### Create Controller

```bash
# Rule: UpperCamel
# Example
php artisan make:controller <ControllerName>
php artisan make:controller api/v1/users
```

## Migrate

```bash
php artisan migrate
php artisan migrate:reset
```

## Seeder

### Make class

```bash
php artisan make:model StaffRole
php artisan make:factory StaffRoleFactory
php artisan make:seeder StaffRoleTableSeeder

php artisan make:model OrderStatus
php artisan make:factory OrderStatusFactory
php artisan make:seeder OrderStatusTableSeeder
```

### Exec seeder

```bash
# All
php artisan db:seed
php artisan migrate:fresh
php artisan migrate:refresh
php artisan migrate:refresh --seed

# Only Class
php artisan db:seed --class=UserRankTableSeeder
php artisan db:seed --class=OrderStatusTableSeeder
php artisan db:seed --class=OrderTableSeeder
```

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

<?php

use Phpmig\Migration\Migration;

class CreateOrderDetails extends Migration
{
    /**
     * Do the migration
     */
    public function up()
    {
        $sql = "
        CREATE TABLE " . TABLE_ORDER_DETAILS . " (
            `id` integer(11) NOT NULL AUTO_INCREMENT,
            `orders_id` varchar(50) NOT NULL,
            `products_id` integer(11) NOT NULL,
            `product_code` varchar(50) NOT NULL,
            `shop_product_code` varchar(50) NOT NULL,
            `name` varchar(50) NOT NULL,
            `price` integer NOT NULL,
            `quantity` integer NOT NULL,
            `jan_code` varchar(50) NOT NULL,
            `delete_flg` boolean NOT NULL DEFAULT false,
            `created_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            PRIMARY KEY (`id`),
            INDEX idx(`orders_id`), 
            FOREIGN KEY (`orders_id`) REFERENCES " . TABLE_ORDERS . "(`orders_id`)
             ON DELETE CASCADE
             ON UPDATE CASCADE,
            FOREIGN KEY (`products_id`) REFERENCES " . TABLE_PRODUCTS . "(`id`)
             ON DELETE CASCADE
             ON UPDATE CASCADE

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
        DROP TABLE " . TABLE_ORDER_DETAILS . "
        ";
        $container = $this->getContainer();
        $container['db']->query($sql);
    }
}

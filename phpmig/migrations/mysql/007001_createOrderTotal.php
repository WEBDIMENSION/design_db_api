<?php

use Phpmig\Migration\Migration;

class CreateOrderTotal extends Migration
{
    /**
     * Do the migration
     */
    public function up()
    {
        $sql = "
        CREATE TABLE " . TABLE_ORDER_TOTAL . " (
            `id` integer(11) NOT NULL AUTO_INCREMENT,
            `orders_id` varchar(50) NOT NULL,
            `sub_total` integer(10) NOT NULL,
            `shipping_id` integer(11) NOT NULL,
            `shipping_name` varchar(50) NOT NULL,
            `shipping_cost` integer(11) NOT NULL,
            `payment_id` integer(11) NOT NULL,
            `payment_name` varchar(50) NOT NULL,
            `payment_cost` integer(11) NOT NULL,
            `total` integer(10) NOT NULL,
            `delete_flg` boolean NOT NULL DEFAULT false,
            `created_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP(),
            PRIMARY KEY (`id`),
            FOREIGN KEY (`orders_id`) REFERENCES " . TABLE_ORDER_DETAILS . "(`orders_id`)
             ON DELETE CASCADE
             ON UPDATE CASCADE,
            FOREIGN KEY (`shipping_id`) REFERENCES " . TABLE_SHIPPING . "(`id`),
            FOREIGN KEY (`payment_id`) REFERENCES " . TABLE_PAYMENT . "(`id`)
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
        DROP TABLE " . TABLE_ORDER_TOTAL . "
        ";
        $container = $this->getContainer();
        $container['db']->query($sql);
    }
}

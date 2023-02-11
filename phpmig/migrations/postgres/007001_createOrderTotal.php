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
            id SERIAL NOT NULL,
            orders_id varchar(50) NOT NULL,
            sub_total integer NOT NULL,
            shipping_id integer NOT NULL,
            shipping_name varchar(50) NOT NULL,
            shipping_cost numeric(10) NOT NULL,
            payment_id integer NOT NULL,
            payment_name varchar(50) NOT NULL,
            payment_cost numeric(10) NOT NULL,
            total numeric(10) NOT NULL,
            delete_flg boolean NOT NULL DEFAULT false,
            created_at TIMESTAMP(0) DEFAULT CURRENT_TIMESTAMP,
            updated_at TIMESTAMP(0) DEFAULT CURRENT_TIMESTAMP,
            PRIMARY KEY (id),
            FOREIGN KEY (orders_id) REFERENCES " . TABLE_ORDERS . "(orders_id)
             ON DELETE CASCADE
             ON UPDATE CASCADE,
            FOREIGN KEY (shipping_id) REFERENCES " . TABLE_SHIPPING . "(id),
            FOREIGN KEY (payment_id) REFERENCES " . TABLE_PAYMENT . "(id)
            );
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

<?php

use Phpmig\Migration\Migration;

class CreateOrders extends Migration
{
    /**
     * Do the migration
     */
    public function up()
    {
        $sql = "CREATE TABLE " . TABLE_ORDERS . " (
            id SERIAL NOT NULL,
            orders_id varchar(50) NOT NULL,
            users_id integer NOT NULL,
            firstname varchar(190) NOT NULL,
            lastname varchar(190) NOT NULL,
            firstname_kana varchar(255) NOT NULL,
            lastname_kana varchar(255) NOT NULL,
            email varchar(255) NOT NULL,
            phone_number varchar(15) NOT NULL,
            postcode numeric(7) NOT NULL,
            prefecture varchar(10) NOT NULL,
            address1 varchar(100) NOT NULL,
            address2 varchar(100) NOT NULL,
            user_ranks_id integer NOT NULL,
            staffs_id integer NOT NULL,
            delete_flg boolean NOT NULL DEFAULT false,
            created_at TIMESTAMP(0) DEFAULT CURRENT_TIMESTAMP,
            updated_at TIMESTAMP(0) DEFAULT CURRENT_TIMESTAMP,
            PRIMARY KEY (id),
            FOREIGN KEY (users_id) REFERENCES " . TABLE_USERS . "(id) 
             ON DELETE CASCADE
             ON UPDATE CASCADE,
            FOREIGN KEY (staffs_id) REFERENCES " . TABLE_STAFFS . "(id) 
             ON DELETE CASCADE
             ON UPDATE CASCADE
            );
            ";
        $container = $this->getContainer();
        $container['db']->query($sql);

        $sql = "CREATE UNIQUE INDEX idx_orders_orders_id_orders ON " . TABLE_ORDERS . "  (orders_id);";
        $container['db']->query($sql);



    }

    /**
     * Undo the migration
     */
    public function down()
    {
        $sql = "
        DROP TABLE " . TABLE_ORDERS . "
        ";
        $container = $this->getContainer();
        $container['db']->query($sql);
    }
}

<?php

use Phpmig\Migration\Migration;

class insertOrderTotal extends Migration
{
    /**
     * Do the migration
     */
    public function up()
    {
        $faker = Faker\Factory::create(FAKER_LOCATE);
        $container = $this->getContainer();

        $stmt = $container['db']->query("
        select o.orders_id, count(od.orders_id), sum(od.price * od.quantity) as sub_total, o.created_at, o.updated_at
        from
             orders o left join order_details od
            on o.orders_id = od.orders_id
        group by o.orders_id, od.orders_id, o.created_at, o.updated_at
            ");
        $order_details_array = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $stmt = $container['db']->query("SELECT * FROM " . TABLE_SHIPPING);
        $shipping_array = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt = $container['db']->query("SELECT * FROM " . TABLE_PAYMENT);
        $payment_array = $stmt->fetchAll(PDO::FETCH_ASSOC);


        for ($i = 0; $i < count($order_details_array); $i++) {
            $order_id = $order_details_array[$i]['orders_id'];
            $sub_total = $order_details_array[$i]['sub_total'];

            $total_value = 0;
            $total_value += $order_details_array[$i]['sub_total'];

            $shipping = $faker->randomElement($shipping_array);
            $shippingId = $shipping['id'];
            $shippingName = $shipping['name'];
            $shippingCost = $shipping['cost'];
            $total_value += $shipping['cost'];

            $payment = $faker->randomElement($payment_array);
            $paymentId = $payment['id'];
            $paymentName = $payment['name'];
            $paymentCost = $payment['cost'];
            $total_value += $payment['cost'];

            $created_at = $order_details_array[$i]['created_at'];
            $updated_at = $order_details_array[$i]['updated_at'];


            $stmt = $container['db']->prepare(
                "insert into " . TABLE_ORDER_TOTAL . "
                        (
                            orders_id,
                            sub_total,
                            shipping_id,
                            shipping_name,
                            shipping_cost,
                            payment_id,
                            payment_name,
                            payment_cost,
                            total,
                            created_at,
                            updated_at
                        ) values (
                         '" . $order_id . "',
                         '" . $sub_total . "',
                         '" . $shippingId . "',
                         '" . $shippingName . "',
                         '" . $shippingCost . "',
                         '" . $paymentId . "',
                         '" . $paymentName . "',
                         '" . $paymentCost . "',
                         '" . $total_value . "',
                         '" . $created_at . "',
                         '" . $updated_at . "'
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
        TRUNCATE TABLE " . TABLE_ORDER_TOTAL . "
        ";
        $container = $this->getContainer();
        $container['db']->query($sql);
    }
}

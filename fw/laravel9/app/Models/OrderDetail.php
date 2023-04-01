<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    use HasFactory;

    public function OrderTotal()
    {
        return $this->belongsTo(OrderTotal::class, 'order_id', 'order_id');
    }

}

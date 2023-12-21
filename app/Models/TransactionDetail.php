<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TransactionDetail extends Model
{
    use SoftDeletes;
    protected $table = 'transactions_details';


    protected $fillable =[
        'transactions_id','username','nationality','is_visa','doe_passport'
    ];

    protected $hidden =[

    ];

    public function transaction(){
        return $this->belongsTo(Transaction::class, 'transactions_id','id');
    }

}

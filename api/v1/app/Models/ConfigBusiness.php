<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ConfigBusiness extends Model
{
    use HasFactory;

    public $timestamps = false; 

    protected $fillable = [
            'seccion',
            'grupo',
            'subgrupo',
            'parametro',
            'valor'

        ];
    //
    protected $table = 'config_business';
}

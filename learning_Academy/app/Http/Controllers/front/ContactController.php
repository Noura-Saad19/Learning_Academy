<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Setting;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index(){

        $data['set']=Setting::first();
        $data['Category'] = Category::select('id', 'name')
            ->get();
        return view('front.contact.index')->with($data);
    }
}

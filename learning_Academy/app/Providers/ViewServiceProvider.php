<?php

namespace App\Providers;

use App\Models\Category;
use Illuminate\Support\ServiceProvider;

class ViewServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //to get all categories without repeating in every controller
//        view()->composer('front.inc.header',
//            function ($view){
//            $view->with('Categories',
//                Category::select('id','name')->get());
//        });
//        return view('front.inc.header',[
//            'Categories' =>  Category::select('id','name')->get()
//        ]);
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}

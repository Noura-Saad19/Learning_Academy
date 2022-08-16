<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Trainer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class TrainerController extends Controller
{
    public function index()
    {
        $data['trainers'] = Trainer::select('id', 'name', 'phone', 'speciality', 'img')
            ->orderBy('id', 'DESC')->get();
        return view('admin.trainers.index')->with($data);
    }

    public function create()
    {
        return view('admin.trainers.create');
    }

    public function store(Request $request)
    {
       $data = $request->validate([
            'name' => 'required|string|max:50',
            'phone' => 'nullable|string|max:20',
            'speciality' => 'required|string|max:50',
            'img' => 'required|image|mimes:jpg,jpeg,png',
        ]);

        if($request->hasfile('img'))
        {
            $file = $request->file('img');
            $extension = $file->getClientOriginalExtension();
            $filename = time().'.'.$extension;
            $file->move('uploads/trainers/', $filename);
            $data['img'] = $filename;
        }

        Trainer::create($data);
        return redirect(route('admin.trainers.index'));
    }

    public function edit($id)
    {

        $data['trainers'] = Trainer::findOrFail($id);
        return view('admin.trainers.edit')->with($data);

    }

    public function update(Request $request)
    {

        $data = $request->validate([
            'name' => 'required|string|max:50',
            'phone' => 'nullable|string|max:20',
            'speciality' => 'required|string|max:50',
            'img' => 'nullable|image|mimes:jpg,jpeg,png',

        ]);

        $old_Name = Trainer::findOrFail($request->id)->img;
        if ($request->hasFile('img')) {
            $destination = 'uploads/trainers/'.$data['img'];
            if(File::exists($destination))
            {
                File::delete($destination);
            }
            $file = $request->file('img');
            $extension = $file->getClientOriginalExtension();
            $filename = time().'.'.$extension;
            $file->move('uploads/trainers/', $filename);
            $data['img'] = $filename;

        } else {
            $data['img'] = $old_Name;
        }


        Trainer::findOrFail($request->id)->update($data);

        return  redirect(route('admin.trainers.index'));
    }

    public function delete($id)
    {
        $old_Name = Trainer::findOrFail($id)->img;
        $destination = 'uploads/trainers/'.$old_Name;
        if(File::exists($destination))
        {
            File::delete($destination);
        }
        Trainer::findOrFail($id)->delete();
        return back();
    }
}

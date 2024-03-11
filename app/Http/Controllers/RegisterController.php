<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
class RegisterController extends Controller
{

    public function index()
    {
        return view('register.index', [
            'title' => 'Register',
            'active' => 'register'
        ]);
    }

    public function store(Request $request) 
    {
       $validatedData = $request->validate([
            'name' => 'required|max:255',
            'username' => 'required|min:3|max:255|unique:users',
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:5|max:255'
        ]);

        // hassing password cara pertama
        // $validatedData['password'] = bcrypt($validatedData['password']);

        //cara kedua 
        $validatedData['password'] = Hash::make($validatedData['password']);

        User::create($validatedData);

        session()->flash('success' , 'Registration SuccessFull Please Login !!');

        // jika ingin lebih ringkas tinggal di titipkan saja ke return 
        // return redurect('/login')->with('success' , 'Registration SuccessFull Please Login !!');
    
        return redirect('/login');
    }
}

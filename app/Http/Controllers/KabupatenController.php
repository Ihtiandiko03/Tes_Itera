<?php

namespace App\Http\Controllers;

use App\Models\tb_kabupaten;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class KabupatenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return view('dashboard.admin.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function create()
    {
        return view('dashboard.admin.create', [
            'kabupaten' => tb_kabupaten::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        tb_kabupaten::create([
            'nama_kab'        => $request['nama_kab'],
        ]);

        return redirect('/dashboard/admin/index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\user  $user
     * @return \Illuminate\Http\Response
     */
    public function show($username)
    {
        return view('dashboard.admin.showDetailKurir', [
            'showKabupaten' => tb_kabupaten::all()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\user  $user
     * @return \Illuminate\Http\Response
     */
    public function edit($id_kab)
    {
        return view('dashboard.admin.edit', [
            'editKabupaten' => tb_kabupaten::where('id_kab', $id_kab)->get()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\user  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_kab)
    {

        $rules = [
            'nama_kab' => 'min:3|max:255',
        ];

        $validated = $request->validate($rules);

        tb_kabupaten::where('id_kab', '=', $id_kab)->update($validated);

        return redirect('/dashboard/admin/index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\user  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(tb_kabupaten $user, $id_kab)
    {
        $deleted = tb_kabupaten::where('id_kab', '=', $id_kab)->delete();

        return redirect('/dashboard/admin/index');
    }
}

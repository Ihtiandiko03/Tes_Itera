@extends('dashboard.layouts.main')
@section('container')

    <div class="row justify-content-center">
    <div class="col-md-8">
        <main class="form-registration">
            <h1 class="h3 my-3 fw-normal text-center">Form Tambah Kabupaten</h1>
        <form action="/dashboard/admin" method="post">
            @csrf
            

            <div class="form-floating">
                <input type="text" name="nama_kab" class="form-control rounded-top @error('nama_kab') is-invalid @enderror" id="nama_kab" placeholder="nama_kab" required value="{{ old('nama_kab') }}">
                <label for="nama_kab">Nama Kabupaten</label>
                @error('nama_kab')
                <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
            

            <button type="submit" class="btn btn-primary">Tambah Kabupaten</button>
        </form>
        </main>
    </div>
</div>
@endsection
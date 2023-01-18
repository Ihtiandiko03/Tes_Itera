@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit Kabupaten</h1>
    </div>

        @foreach ($editKabupaten as $kabupaten)
            
        
    <div class="col-lg-8">
    <form method="post" action="/dashboard/admin/{{$kabupaten->id_kab}}" class="mb-5">
        @method('put')
        @csrf

      <div class="mb-3">
        <label for="nama_kab" class="form-label">nama_kab Kabupaten</label>
        <input type="text" class="form-control @error('nama_kab') is-invalid @enderror" id="nama_kab" name="nama_kab" autofocus value="{{ old('nama_kab', $kabupaten->nama_kab) }}">
        @error('nama_kab')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
        @enderror
      </div>
      <button type="submit" class="btn btn-primary">Update Data Kabupaten</button>
    </form>
</div>
@endforeach
@endsection
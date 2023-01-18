@extends('dashboard.layouts.main')
@section('container')
    <div class="table-responsive col-lg-8 mt-4">
    @foreach ($showKabupaten as $kabupaten)
        
        <tr>
            <th scope="col">Nama Kabupaten</th>
            <td>{{ $kabupaten->nama_kab }}</td>
        </tr>
          </tbody>
        </table>

        @endforeach
      </div>

      <a href="/dashboard/admin/create">Tambah Data</a>

        <a href="/dashboard/admin/index">Kembali</a>
@endsection
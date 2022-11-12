@extends('layouts.app')
@section('title','Laporan Mahasiswa')
@section('content')
    <body>
        <style>
            body{
                padding: 15px;
            }
            h5{
                margin-top: -15px;
            }
            table, th, td{
                border: 1px solid;
            }
        </style>
        <br>
        <br>
        <a target="_blank" 
        href="/laporan/mahasiswa/pdf" 
        class="btn btn-primary">Cetak PDF</a>
        <h1>
            UNIVERSITAS PASTI JAYA <br>
            FAKULTAS ILMU KOMPUTER
        </h1>
        <h5>Jalan Diponegoro No. 56 <br>
            Telp. 061.42558733
        </h5>
        <hr>
        <center><h3>Laporan Mahasiswa</h3></center>
        <table>
            <tr>
                <th>StudentID</th>
                <th>Nama</th>
                <th>Jurusan</th>
                <th>Tahun Masuk</th>
            </tr>
            @foreach ($mahasiswa as $mhs)
                <tr> 
                    <td>{{$mhs->studentId}}</td>
                    <td>{{$mhs->nama}}</td>
                    <td>{{$mhs->jurusan}}</td>
                    <td>{{$mhs->tahunMasuk}}</td>

                </tr>
            @endforeach
@endsection

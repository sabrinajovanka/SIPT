<?php
    use App\Models\Mahasiswa;
    use App\Models\vjlhmhskrs;
?>
@extends('layouts.app')

@section('title','Mahasiswa')

@section('content')
    <h1>Index Mahasiswa</h1>
    <style>
        table tr{
            padding: 10px;
        }
    </style>
    <table style="padding: 10px;">
        <tr>
            <th>Student ID</th>
            <th>Nama</th>
            <th>Jumlah KRS</th>
        </tr>
        <?php
        // $mahasiswas = mahasiswa::get();
        // foreach ($mahasiswas as $mahasiswa) {
        //     echo "<tr>";
        //     echo "<td>".$mahasiswa->studentId."</td>";
        //     echo "<td>".$mahasiswa->nama."</td>";
        //     echo "<td>".$mahasiswa->jurusan."</td>";
        //     echo "<td>".$mahasiswa->tahunMasuk."</td>";
        //     echo "</tr>";
        // }
        $rows = \DB::select('select studentid, nama, jlhkrs from vjlhkrsmhs');
 
        foreach ($rows as $row) {
            echo "<tr>";
            echo "<td>".$row->studentid."</td>";
            echo "<td>".$row->nama."</td>";
            echo "<td>".$row->jlhkrs."</td>";
            echo "</tr>";
        }
        ?>
    </table>
@endsection

{{-- <?php 
    use App\Models\Mahasiswa;
?>
<html>
    <head>
        <title>Index Mahasiswa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    </head>
    <body class="antialiased">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
            <div class="container">
              <a class="navbar-brand" href="/">Database Mahasiswa</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/mahasiswa/new">Add</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        <h1>Index Mahasiswa</h1>
        <br/>
        <table border = "2">
            <tr>
                <th>Student ID</th>
                <th>Nama</th>
                <th>Jurusan</th>
                <th>Tahun</th>
            </tr>
            <?php
            $mahasiswas = Mahasiswa::get();
             
            foreach ($mahasiswas as $Mahasiswa) {
                echo "<tr>";
                echo "<td>".$Mahasiswa->studentID."</td>";
                echo "<td>".$Mahasiswa->nama."</td>";
                echo "<td>".$Mahasiswa->jurusan."</td>";
                echo "<td>".$Mahasiswa->tahunMasuk."</td>";
                echo "</tr>";
            }
            ?>
        </table>
        <br/>
        <a href="/mahasiswa/new"><button type = "button">Add</button></a>
    </body>
</html> --}}
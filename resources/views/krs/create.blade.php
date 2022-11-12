<!DOCTYPE html>
<html>
    <head>
    <title>Data Mahasiswa</title>
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
        <h3>Data Mahasiswa</h3>
        <br/>
        
        <form action="/mahasiswa/store" method="post">
        {{ csrf_field() }}
        ID <input type="text" name="id" required="required"> <br/>
        Student ID <input type="text" name="studentID" required="required"> <br/>
        Nama <input type="text" name="nama" required="required"> <br/>
        Jurusan <input type="text" name="jurusan" required="required"> <br/>
        Tahun <input name="tahunMasuk" required="required"></input> <br/>
        <br>
        <input type="submit" value="Simpan Data"><a href="/"><button type = "button">Kembali</button></a>
        </form>
        
    </body>
</html>
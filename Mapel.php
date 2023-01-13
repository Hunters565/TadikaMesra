<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/main.min.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="styles.css?v=<?php echo time(); ?>">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light border-bottom-3 bg-primary sticky-md-top">
        <div class="container-fluid">
            <a class="navbar-brand ms-5" href="./dasbor.php">
                <img src="https://www.kemdikbud.go.id/main/addons/shared_addons/themes/november_theme/img/kemdikbud_64x64.png"
                    alt="" width="60" height="60" class="d-inline-block ">
                TK Tadika Mesra | Monitoring System
            </a>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-2 bg-secondary flex-column nav-side d-flex justify-content-between">
                <div class="d-flex flex-column">
                    <a href="./dasbor.php" class="dasbor nav-side-item  mt-5 ms-3" style="display: block;">
                        <img src="images/dasbor.png" alt="" width="30px" , height="30px">
                        Dasbor
                    </a>
                    <a href="./Mapel.php" class="mapel nav-side-item  mt-2 ms-3" style="display: block;">
                        <img src="images/courses.png" alt="" width="30px" height="30px">
                        Courses
                    </a>
                    <a href="./Transaksi.php" class="transaksi nav-side-item  mt-2 ms-3" style="display: block;">
                        <img src="images/transaction.png" alt="" width="30px" height="30px">
                        Transaction
                    </a>
                </div>
                <a href="./login.php" class=" nav-side-item mt-2 ms-3 mb-5 pb-5" style="display: block;">
                    <img src="images/logout.png" alt="" width="30px" height="30px">
                    Logout
                </a>
            </nav>
            <!-- CONTENT START -->
            <div class="col-10 main-content">
                <div class="mt-5 mx-3">
                    <div class="h2">Mapel Siswa</div>
                    <hr class="border border-dark border-3 bg-dark">
                    <div class="d-flex flex-row justify-content-between mx-3">
                        <div class="h3">Kelas</div>
                        <div class="h3 ml-auto">Wali Kelas: Bu Astuti</div>
                    </div>
                    <hr>
                    <div class="cont my-4">
                        <div class="row my-3">
                            <div class="col mx-3 py-3 border border-2 rounded bg-light">
                                <h2 class="mt-1">Membaca</h2>
                                <hr>
                                Pelajaran dimana para siswa diajarkan untuk membaca
                                <div class="progress mt-3" role="progressbar" aria-label="Basic example"
                                    aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                                    <div class="progress-bar w-75"></div>
                                </div>
                            </div>
                            <div class="col mx-3 py-3 border border-2 rounded bg-light">
                                <h2 class="mt-1">Membaca</h2>
                                <hr>
                                Pelajaran dimana para siswa diajarkan untuk membaca
                                <div class="progress mt-3" role="progressbar" aria-label="Basic example"
                                    aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                                    <div class="progress-bar w-75"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row my-4">
                            <div class="col mx-3 py-3 border border-2 rounded bg-light">
                                <h2 class="mt-1">Membaca</h2>
                                <hr>
                                Pelajaran dimana para siswa diajarkan untuk membaca
                                <div class="progress mt-3" role="progressbar" aria-label="Basic example"
                                    aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                                    <div class="progress-bar w-75"></div>
                                </div>
                            </div>
                            <div class="col mx-3 py-3 border border-2 rounded bg-light">
                                <h2 class="mt-1">Membaca</h2>
                                <hr>
                                Pelajaran dimana para siswa diajarkan untuk membaca
                                <div class="progress mt-3" role="progressbar" aria-label="Basic example"
                                    aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                                    <div class="progress-bar w-75"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA?3yGxIOqMEjwtxJY7qPCqsdltbNJuaOe923Mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>

</html>
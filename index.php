<?php
  session_start();
  include "koneksi.php";
?>

<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Pacitan</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        
        <style>
            .dropdown-menu {
                background-color: #fff; /* Warna latar belakang dropdown */
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); /* Efek bayangan */
            }

            .dropdown-item {
                color: #000; /* Warna teks item dropdown */
            }

            .dropdown-item:hover {
                background-color: #f1f1f1; /* Warna latar belakang saat hover */
            }
        </style>

    </head>
    
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top" style="color: white;">Welcome!</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#tentang">Tentang</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Wisata
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#wisata_alam">Wisata Alam</a></li>
                                <li><a class="dropdown-item" href="#wisata_budaya">Wisata Budaya</a></li>
                                <li><a class="dropdown-item" href="#wisata_religi">Wisata Religi</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#kuliner">Kuliner</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#penginapan">Penginapan</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                <div class="d-flex justify-content-center">
                    <div class="text-center">
                        <h1 class="mx-auto my-0 text-uppercase mx-auto mt-2 mb-5">PACITAN</h1>
                        <a class="btn btn-primary" href="https://www.google.co.id/maps/@-8.1985536,111.1038251,15z?entry=ttu">Go to Maps</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- Tentang -->
        <section class="projects-section bg-light" id="tentang">
            <div class="container px-4 px-lg-1">
                <!-- Featured Project Row-->
                <div class="row gx-0 mb-4 mb-lg-5 align-items-center">
                    <?php
                        $tampil = mysqli_query($conn, "select * from about");
                        $id_about = 1;
                        while($hasil = mysqli_fetch_array($tampil)){
                    ?>
                    <div class="col-xl-8 col-lg-7">
                        <img class="img-fluid mb-3 mb-lg-0" src="../Website Pacitan Admin/gambar/<?php echo $hasil['image']; ?>" width="3000" height: auto;>
                    </div>
                    <div class="col-xl-4 col-lg-5">
                        <style>
                            .text-justify {
                              text-align: justify;
                            }
                          </style>
                        <div class="featured-text text-center text-lg-left">
                            <h4>Tentang Pacitan</h4>
                            <br>
                            <p class="text-black-50 mb-0 text-justify"><?php echo $hasil['text']; ?></p>
                        </div>
                    </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
        </section>
        <!-- Wisata Alam-->
        <section class="projects-section bg-light" id="wisata_alam">
            <div class="container px-4 px-lg-1">
            <h2 class="text-black-100 mx-auto mt-2 mb-5 text-center">Wisata Alam</h2>
                <!-- Project One Row-->                
                <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                    <?php
                    $tampil = mysqli_query($conn, "select * from wisata_alam");
                    $id_about = 1;
                    $counter = 0;
                    while($hasil = mysqli_fetch_array($tampil)){
                        $counter++;
                        // Determine whether to display image on left or right based on counter
                        $image_left = ($counter % 2 == 1); // True if counter is odd

                        // Output based on image position
                        if ($image_left) {
                            // Gambar kiri, teks kanan
                            ?>
                            <div class="col-lg-6">
                                <img class="img-fluid" src="../Website Pacitan Admin/gambar/<?php echo $hasil['gambar']; ?>" width="600" height="auto"/>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-black text-center h-100 project">                        
                                    <div class="d-flex h-100">
                                        <div class="project-text w-100 my-auto text-center text-lg-left">
                                            <h4 class="mb-2 text-white"><?php echo $hasil['nama_wisata']; ?></h4>
                                            <p class="mb-0 text-white-50"><?php echo $hasil['deskripsi']; ?></p>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <a href="<?php echo $hasil['alamat']; ?>" class="btn btn-primary mt-5" style="padding: 0.25rem 1rem; font-size: 0.75rem; width: 150px; height: 30px;">
                                                    Go to Maps
                                                </a>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <?php
                        } else {
                            // Teks kiri, gambar kanan
                            ?>
                            <div class="col-lg-6">
                                <div class="bg-black text-center h-100 project">                        
                                    <div class="d-flex h-100">
                                        <div class="project-text w-100 my-auto text-center text-lg-left">
                                            <h4 class="mb-2 text-white"><?php echo $hasil['nama_wisata']; ?></h4>
                                            <p class="mb-0 text-white-50"><?php echo $hasil['deskripsi']; ?></p>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <a href="<?php echo $hasil['alamat']; ?>" class="btn btn-primary mt-5" style="padding: 0.25rem 1rem; font-size: 0.75rem; width: 150px; height: 30px;">
                                                    Go to Maps
                                                </a>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <img class="img-fluid" src="../Website Pacitan Admin/gambar/<?php echo $hasil['gambar']; ?>" width="600" height="auto"/>
                            </div>
                            <?php
                        }
                    }
                    ?>
                </div>
            </div>
        </section>
        <!-- Wisata Budaya-->
        <section class="projects-section bg-light" id="wisata_budaya">
            <div class="container px-4 px-lg-1">
            <h2 class="text-black-100 mx-auto mt-2 mb-5 text-center">Wisata Budaya</h2>
                <!-- Project One Row-->                
                <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                    <?php
                    $tampil = mysqli_query($conn, "select * from wisata_budaya");
                    $id_about = 1;
                    $counter = 0;
                    while($hasil = mysqli_fetch_array($tampil)){
                        $counter++;
                        // Determine whether to display image on left or right based on counter
                        $image_left = ($counter % 2 == 1); // True if counter is odd

                        // Output based on image position
                        if ($image_left) {
                            // Gambar kiri, teks kanan
                            ?>
                            <div class="col-lg-6">
                                <img class="img-fluid" src="../Website Pacitan Admin/gambar/<?php echo $hasil['gambar']; ?>" width="600" height="auto"/>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-black text-center h-100 project">                        
                                    <div class="d-flex h-100">
                                        <div class="project-text w-100 my-auto text-center text-lg-left">
                                            <h4 class="mb-2 text-white"><?php echo $hasil['nama_wisata']; ?></h4>
                                            <p class="mb-0 text-white-50"><?php echo $hasil['deskripsi']; ?></p>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <?php
                        } else {
                            // Teks kiri, gambar kanan
                            ?>
                            <div class="col-lg-6">
                                <div class="bg-black text-center h-100 project">                        
                                    <div class="d-flex h-100">
                                        <div class="project-text w-100 my-auto text-center text-lg-left">
                                            <h4 class="mb-2 text-white"><?php echo $hasil['nama_wisata']; ?></h4>
                                            <p class="mb-0 text-white-50"><?php echo $hasil['deskripsi']; ?></p>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <img class="img-fluid" src="../Website Pacitan Admin/gambar/<?php echo $hasil['gambar']; ?>" width="600" height="auto"/>
                            </div>
                            <?php
                        }
                    }
                    ?>
                </div>
            </div>
        </section>
        <!-- Wisata Religi -->
        <section class="projects-section bg-light" id="wisata_religi">
            <div class="container px-4 px-lg-1">
            <h2 class="text-black-100 mx-auto mt-2 mb-5 text-center">Wisata Religi</h2>
                <!-- Project One Row-->                
                <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                    <?php
                    $tampil = mysqli_query($conn, "select * from wisata_religi");
                    $id_about = 1;
                    $counter = 0;
                    while($hasil = mysqli_fetch_array($tampil)){
                        $counter++;
                        // Determine whether to display image on left or right based on counter
                        $image_left = ($counter % 2 == 1); // True if counter is odd

                        // Output based on image position
                        if ($image_left) {
                            // Gambar kiri, teks kanan
                            ?>
                            <div class="col-lg-6">
                                <img class="img-fluid" src="../Website Pacitan Admin/gambar/<?php echo $hasil['gambar']; ?>" width="600" height="auto"/>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-black text-center h-100 project">                        
                                    <div class="d-flex h-100">
                                        <div class="project-text w-100 my-auto text-center text-lg-left">
                                            <h4 class="mb-2 text-white"><?php echo $hasil['nama_wisata']; ?></h4>
                                            <p class="mb-0 text-white-50"><?php echo $hasil['deskripsi']; ?></p>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <a href="<?php echo $hasil['alamat']; ?>" class="btn btn-primary mt-5" style="padding: 0.25rem 1rem; font-size: 0.75rem; width: 150px; height: 30px;">
                                                    Go to Maps
                                                </a>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <?php
                        } else {
                            // Teks kiri, gambar kanan
                            ?>
                            <div class="col-lg-6">
                                <div class="bg-black text-center h-100 project">                        
                                    <div class="d-flex h-100">
                                        <div class="project-text w-100 my-auto text-center text-lg-left">
                                            <h4 class="mb-2 text-white"><?php echo $hasil['nama_wisata']; ?></h4>
                                            <p class="mb-0 text-white-50"><?php echo $hasil['deskripsi']; ?></p>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <a href="<?php echo $hasil['alamat']; ?>" class="btn btn-primary mt-5" style="padding: 0.25rem 1rem; font-size: 0.75rem; width: 150px; height: 30px;">
                                                    Go to Maps
                                                </a>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <img class="img-fluid" src="../Website Pacitan Admin/gambar/<?php echo $hasil['gambar']; ?>" width="600" height="auto"/>
                            </div>
                            <?php
                        }
                    }
                    ?>
                </div>
            </div>
        </section>
        <!-- Kuliner -->
        <section class="projects-section bg-light" id="kuliner">
            <div class="container px-4 px-lg-1">
            <h2 class="text-black-100 mx-auto mt-2 mb-5 text-center">Kuliner</h2>
                <!-- Project One Row-->                
                <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                    <?php
                    $tampil = mysqli_query($conn, "select * from kuliner");
                    $id_about = 1;
                    $counter = 0;
                    while($hasil = mysqli_fetch_array($tampil)){
                        $counter++;
                        // Determine whether to display image on left or right based on counter
                        $image_left = ($counter % 2 == 1); // True if counter is odd

                        // Output based on image position
                        if ($image_left) {
                            // Gambar kiri, teks kanan
                            ?>
                            <div class="col-lg-6">
                                <img class="img-fluid" src="../Website Pacitan Admin/gambar/<?php echo $hasil['gambar']; ?>" width="600" height="auto"/>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-black text-center h-100 project">                        
                                    <div class="d-flex h-100">
                                        <div class="project-text w-100 my-auto text-center text-lg-left">
                                            <h4 class="mb-2 text-white"><?php echo $hasil['nama_kuliner']; ?></h4>
                                            <p class="mb-0 text-white-50"><?php echo $hasil['deskripsi']; ?></p>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <a href="<?php echo $hasil['alamat']; ?>" class="btn btn-primary mt-5" style="padding: 0.25rem 1rem; font-size: 0.75rem; width: 150px; height: 30px;">
                                                    Go to Maps
                                                </a>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <?php
                        } else {
                            // Teks kiri, gambar kanan
                            ?>
                            <div class="col-lg-6">
                                <div class="bg-black text-center h-100 project">                        
                                    <div class="d-flex h-100">
                                        <div class="project-text w-100 my-auto text-center text-lg-left">
                                            <h4 class="mb-2 text-white"><?php echo $hasil['nama_kuliner']; ?></h4>
                                            <p class="mb-0 text-white-50"><?php echo $hasil['deskripsi']; ?></p>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <a href="<?php echo $hasil['alamat']; ?>" class="btn btn-primary mt-5" style="padding: 0.25rem 1rem; font-size: 0.75rem; width: 150px; height: 30px;">
                                                    Go to Maps
                                                </a>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <img class="img-fluid" src="../Website Pacitan Admin/gambar/<?php echo $hasil['gambar']; ?>" width="600" height="auto"/>
                            </div>
                            <?php
                        }
                    }
                    ?>
                </div>
            </div>
        </section>
        <!-- Penginapan -->
        <section class="projects-section bg-light" id="penginapan">
            <div class="container px-4 px-lg-1">
            <h2 class="text-black-100 mx-auto mt-2 mb-5 text-center">Penginapan</h2>
                <!-- Project One Row-->                
                <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                    <?php
                    $tampil = mysqli_query($conn, "select * from penginapan");
                    $id_about = 1;
                    $counter = 0;
                    while($hasil = mysqli_fetch_array($tampil)){
                        $counter++;
                        // Determine whether to display image on left or right based on counter
                        $image_left = ($counter % 2 == 1); // True if counter is odd

                        // Output based on image position
                        if ($image_left) {
                            // Gambar kiri, teks kanan
                            ?>
                            <div class="col-lg-6">
                                <img class="img-fluid" src="../Website Pacitan Admin/gambar/<?php echo $hasil['gambar']; ?>" width="600" height="auto"/>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-black text-center h-100 project">                        
                                    <div class="d-flex h-100">
                                        <div class="project-text w-100 my-auto text-center text-lg-left">
                                            <h4 class="mb-2 text-white"><?php echo $hasil['nama_penginapan']; ?></h4>
                                            <p class="mb-0 text-white-50"><?php echo $hasil['deskripsi']; ?></p>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <a href="<?php echo $hasil['alamat']; ?>" class="btn btn-primary mt-5" style="padding: 0.25rem 1rem; font-size: 0.75rem; width: 170px; height: 30px;">
                                                    Booking Now
                                                </a>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <?php
                        } else {
                            // Teks kiri, gambar kanan
                            ?>
                            <div class="col-lg-6">
                                <div class="bg-black text-center h-100 project">                        
                                    <div class="d-flex h-100">
                                        <div class="project-text w-100 my-auto text-center text-lg-left">
                                            <h4 class="mb-2 text-white"><?php echo $hasil['nama_penginapan']; ?></h4>
                                            <p class="mb-0 text-white-50"><?php echo $hasil['deskripsi']; ?></p>
                                            <div style="display: flex; justify-content: center; align-items: center;">
                                                <a href="<?php echo $hasil['alamat']; ?>" class="btn btn-primary mt-5" style="padding: 0.25rem 1rem; font-size: 0.75rem; width: 170px; height: 30px;">
                                                    Booking Now
                                                </a>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <img class="img-fluid" src="../Website Pacitan Admin/gambar/<?php echo $hasil['gambar']; ?>" width="600" height="auto"/>
                            </div>
                            <?php
                        }
                    }
                    ?>
                </div>
            </div>
        </section>
        <!-- Footer-->

        <footer class="footer bg-black small text-center text-white-50"><div class="container px-4 px-lg-5">Kabupaten Pacitan</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
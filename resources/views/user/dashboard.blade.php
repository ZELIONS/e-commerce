<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
  <title>
    ZELSTORE
  </title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <link href="{{ asset('css/bootstrap.css') }}" rel="stylesheet">
  <link href="{{ asset('css/style.css') }}" rel="stylesheet">
  <link href="{{ asset('css/responsive.css') }}" rel="stylesheet">
</head>

<body>
  <div class="hero_area">
    <header class="header_section">
      <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="index.html">
          <span>
            ZELSTORE
          </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class=""></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav  ">
            <li class="nav-item active">
              <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('cart.index') }}">Keranjang Belanja</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                Why Us
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact Us</a>
            </li>
          </ul>
        </div>
      </nav>
    </header>

    <section class="slider_section">
      <div class="slider_container">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-7">
                    <div class="detail-box">
                      <h1>
                        Welcome To Our <br>
                        Gift Shop
                      </h1>
                      <p>
                        Sequi perspiciatis nulla reiciendis, rem, tenetur impedit, eveniet non necessitatibus error distinctio mollitia suscipit. Nostrum fugit doloribus consequatur distinctio esse, possimus maiores aliquid repellat beatae cum, perspiciatis enim, accusantium perferendis.
                      </p>
                      <a href="">
                        Contact Us
                      </a>
                    </div>
                  </div>
                  <div class="col-md-5 ">
                    <div class="img-box">
                      <img src="https://www.mercedes-benz.co.id/passengercars/the-brand/press-release/Press-Release-2022/new-dealer-opening-in-medan/_jcr_content/par/productinfotextimage/media2/slides/videoimageslide/image.MQ6.12.20230105102124.jpeg" alt="" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-7">
                    <div class="detail-box">
                      <h1>
                        Welcome To Our <br>
                        Gift Shop
                      </h1>
                      <p>
                        Sequi perspiciatis nulla reiciendis, rem, tenetur impedit, eveniet non necessitatibus error distinctio mollitia suscipit. Nostrum fugit doloribus consequatur distinctio esse, possimus maiores aliquid repellat beatae cum, perspiciatis enim, accusantium perferendis.
                      </p>
                      <a href="">
                        Contact Us
                      </a>
                    </div>
                  </div>
                  <div class="col-md-5 ">
                    <div class="img-box">
                      <img src="images/slider-img.png" alt="" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-7">
                    <div class="detail-box">
                      <h1>
                        Welcome To Our <br>
                        Online Shop
                      </h1>
                      <p>
                        Sequi perspiciatis nulla reiciendis, rem, tenetur impedit, eveniet non necessitatibus error distinctio mollitia suscipit. Nostrum fugit doloribus consequatur distinctio esse, possimus maiores aliquid repellat beatae cum, perspiciatis enim, accusantium perferendis.
                      </p>
                      <a href="">
                        Contact Us
                      </a>
                    </div>
                  </div>
                  <div class="col-md-5 ">
                    <div class="img-box">
                      <img src="images/slider-img.png" alt="" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- shop section -->
  <section class="shop_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Latest Products
        </h2>
      </div>
      <div class="row">        
        @foreach($barangs as $barang)
        <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="box">
                <a href="{{ route('barang.deskripsi', ['id' => $barang->id]) }}">
                    <div class="img-box">
                        <img src="{{ $barang->gambar }}" alt="{{ $barang->nama_barang }}">
                    </div>
                    <div class="detail-box">
                        <h6>{{ $barang->nama_barang }}</h6>
                        <h6>
                            Price
                            <span>
                                ${{ $barang->harga }}
                            </span>
                        </h6>
                    </div>
                    @if($barang->is_new) <!-- Jika ada kolom is_new sebagai penanda barang baru -->
                        <div class="new">
                            <span>New</span>
                        </div>
                    @endif
                </a>
            </div>
        </div>
    @endforeach
    
    
      </div>
      <div class="btn-box">
        <a href="">
          View All Products
        </a>
      </div>
    </div>
  </section>

  <!-- end shop section -->

 <section class="saving_section ">
    <div class="box">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6">
            <div class="img-box">
              <img src="data:image/jpeg;base64,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" alt="">
            </div>
          </div>
          <div class="col-lg-6">
            <div class="detail-box">
              <div class="heading_container">
                <h2>
                  Best Savings on <br>
                  new arrivals
                </h2>
              </div>
              <p>
                Qui ex dolore at repellat, quia neque doloribus omnis adipisci, ipsum eos odio fugit ut eveniet blanditiis praesentium totam non nostrum dignissimos nihil eius facere et eaque. Qui, animi obcaecati.
              </p>
              <div class="btn-box">
                <a href="#" class="btn1">
                  Buy Now
                </a>
                <a href="#" class="btn2">
                  See More
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <script src="js/custom.js"></script>
</body>
</html>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <div class="container">
      <a class="navbar-brand" href="/">MyBlog</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link {{ ($active === "home" ? 'active' : '') }}"  href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active === "about" ? 'active' : '') }}" href="/about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active === "posts" ? 'active' : '') }}" href="/posts">Blog</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($active === "categories" ? 'active' : '') }}" href="/categories">Categories</a>
          </li>
        </ul>



        {{-- jika belum login maka tampilkan --}}
        <ul class="navbar-nav ms-auto">
          @auth
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              welcome back, {{ auth()->user()->username }}
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-grid-1x2-fill"></i>  My Dashboard</a></li>
              <li class="dropdown-divider"></li>
              <form action="/logout" method="post">
                @csrf
                <button class="dropdown-item " ><i class="bi bi-box-arrow-right"></i> Logout</button>
              </form>
            </li>
            </ul>
          @else
          {{-- jika sudah login maka tampilkan --}}
          <li class="nav-item">
            <a class="nav-link {{ ($active === "login" ? 'active' : '') }}" href="/login"><i class="bi bi-box-arrow-in-right"></i> Login</a>
          </li>
          @endauth
        </ul>

        
      </div>
    </div>
  </nav>
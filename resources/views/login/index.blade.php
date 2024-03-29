@extends('layouts.main')

@section('container')

<div class="row justify-content-center mt-5">
    <div class="col-lg-4">

      @if(session()->has('success'))
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('success') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      @endif
      
      @if(session()->has('loginError'))
      <div class="alert alert-danger alert-dismissible fade show" role="alert">
        {{ session('loginError') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      @endif

        <form action="/login" method="post">
          @csrf
            {{-- <img class="mb-4" src="../assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> --}}
            <h1 class="h3 mb-3 fw-normal text-center">Please Login</h1>
        
            <div class="form-floating mb-3">
              <input type="email" name="email" class="form-control @error('email') is-invalid @enderror " id="email" placeholder="name@example.com" autofocus required value="{{ old('email') }}">
              <label for="email">Email address</label>
              @error('email')
              <div class="invalid-feedback">
                {{ $message }}
              </div>
              @enderror
            </div>
            
            <div class="form-floating mb-3">
              <input type="password" name="password" class="form-control " id="password" placeholder="Password">
              <label for="password" required >Password</label>
            </div>
        
            {{-- <div class="form-check text-start my-3">
              <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
              <label class="form-check-label" for="flexCheckDefault">
                Remember me
              </label>
            </div> --}}
            <button class="btn btn-danger w-100 py-2" type="submit">Login</button>
            
          </form>
          <small class="d-block text-center mt-3">
            Not Registeres ? <a href="/register">Register Now ! </a>
          </small>
          {{-- <p class="mt-5 mb-3 text-body-secondary">&copy; M Ridwan </p>   --}}
        </main>
    </div>
</div>

<main class="form-signin w-100 m-auto">

    
@endsection
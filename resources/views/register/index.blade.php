@extends('layouts.main')

@section('container')

    <div class="col-lg-5">
      <main class="form-register w-100 m-auto">
        <form action="/register" method="post">
          @csrf
            {{-- <img class="mb-4" src="../assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> --}}
            <h1 class="h3 mb-3 fw-normal text-center">Register Form</h1>
        
            <div class="form-floating mb-3">
              <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" id="name" placeholder="Name" required value="{{ old('name') }}">
              <label for="name">Name</label>
              @error('name')
              <div class="invalid-feedback">{{ $message }}</div>
              @enderror
            </div>

            <div class="form-floating mb-3">
              <input type="text" name="username" class="form-control @error('username') is-invalid @enderror" id="username" placeholder="User Name" required value="{{ old('username') }}">
              <label for="username">username</label>
              @error('username')
              <div class="invalid-feedback">{{ $message }}</div>
              @enderror
            </div>

            <div class="form-floating mb-3">
              <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" required value="{{ old('email') }}">
              <label for="email">Email address</label>
              @error('email')
              <div class="invalid-feedback">{{ $message }}</div>
              @enderror
            </div>
            
            <div class="form-floating mb-3">
              <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" id="floatingPassword" placeholder="Password" required>
              <label for="Password">Password</label>
              @error('password')
              <div class="invalid-feedback">{{ $message }}</div>
              @enderror
            </div>
        
            {{-- <div class="form-check text-start my-3">
              <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
              <label class="form-check-label" for="flexCheckDefault">
                Remember me
              </label>
            </div> --}}
            <button class="btn btn-danger w-100 py-2" type="submit">Register</button>
            
          </form>
          <small class="d-block text-center mt-3">
            I Have register <a href="/login">Go to login </a>
          </small>
          {{-- <p class="mt-5 mb-3 text-body-secondary">&copy; M Ridwan </p> --}}
        </main>
    </div>




    
@endsection
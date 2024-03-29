@extends('layouts.main')

@section('container')

<h1 class="mb-3 text-center">{{ $title }}</h1>

<div class="row  justify-content-center">
  <div class="col-md-6 mb-3">
    <form action="/posts" method="GET">
      @if(request('category'))
      <input type="hidden" name="category" value="{{ request('category') }}">
      @elseif(request('author'))
      <input type="hidden" name="author" value="{{ request('author') }}">
      @endif

      <div class="input-group mb-3">
        <input type="text" class="form-control" placeholder="Search.." name="search" value="{{ request('search') }}">
        <button class="btn btn-dark text-center" type="submit">Search</button>
      </div>
      
    </form>
  </div>
</div>

@if ($posts->count())

<div class="card mb-3">

  @if($posts[0]->image)
  <div style="max-height: 350px; overflow: hidden;">
    <img src="{{ asset('storage/' . $posts[0]->image) }}" alt="{{ $posts[0]->category->name }}" class="card-img-top">
</div>
  @else
    <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->name }}" alt="{{ $posts[0]->category->name }}" class="img-fluid">
  @endif  
  

    <div class="card-body text-center">
      <h5 class="card-title"><a class="text-decoration-none text-dark" href="/posts/{{ $posts[0]->slug }}">{{ $posts[0]->title }}</a></h5>
      <p>
      <small class="text-body-secondary">
      By.<a class="text-decoration-none" href="/posts?author={{ $posts[0]->author->username }}"> {{ $posts[0]->author->name }}</a> in <a class="text-decoration-none" href="/posts?category={{ $posts[0]->category->slug }}">{{ $posts[0]->category->name }} </a> {{ $posts[0]->created_at->diffForHumans() }}
      </small>
    </p>

      <p class="card-text">{{ $posts[0]->excerpt }}</p>
      <a class="text-decoration-none btn btn-primary" href="/posts/{{ $posts[0]->slug }}">Read more</a>
      
    </div>
  </div>
  

<div class="container">
    <div class="row">
        @foreach ($posts->skip(1) as $post)
        <div class="col-md-4 mb-4">
        <div class="card" >
        <div class="position-absolute px-3 py-2" style=" background-color:rgba(0, 0, 0, 0.6)"> <a class="text-white text-decoration-none" href="/posts?category={{ $post->category->slug }}">{{ $post->category->name }}</a></div>
                
         @if($post->image)
         <div style="max-height: 200px; overflow: hidden;" >
           <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
         </div>
           @else
            <img src="https://source.unsplash.com/1200x500?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid ">
            @endif

                  <div class="card-body">
                  <h5 class="card-title">{{ $post->title }}</h5>
                  <p>
                    <small class="text-body-secondary">
                    By.<a class="text-decoration-none" href="/posts?author={{ $post->author->username }}"> {{ $post->author->name }}</a> {{ $post->created_at->diffForHumans() }}
                    </small>
                  </p>
                  <p class="card-text">{{ $post->excerpt }}</p>

                  <a href="/posts/{{ $post->slug }}" class="btn btn-primary">Read More</a>
                </div>
              </div>
        </div>
        @endforeach
    </div>
</div>
      
@else 
<p class="text-center fs-4">No post found</p>
@endif

{{ $posts->links() }}

@endsection

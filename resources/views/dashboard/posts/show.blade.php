@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title }}</h1 class="mb-3">
            {{-- <h5>{{ $post[""] }}</h5> --}}

            <a href="/dashboard/posts/" class="btn btn-success"><i data-feather="chevrons-left"></i> Back to All Posts</a>
            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><i data-feather="edit"></i> edit</a>
            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn bg-danger text-white" onclick="return confirm('are you sure ? ')" ><i data-feather="x-circle"></i> Delete</button>
              </form>

              @if($post->image)
              <div style="max-height: 350px; overflow: hidden;">
                  <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
              </div>
                @else
            <img src="https://source.unsplash.com/1200x400?={{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
                @endif

            <article class="my-3 fs-5" >
                {!! $post->body !!} 
            </article>


                   
            <a class="text-decoration-none d-block mt-3" href="/posts">Back to Posts</a>
        </div>
    </div>
</div>

@endsection
@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">my posts</h1>
</div>  

@if(session()->has('success'))
<div class="col-lg-8">
  <div class="alert alert-success" role="alert">
    {{ session('success') }}
  </div>
</div>
@endif

<div class="table-responsive small col-lg-8">
  <a class="btn btn-info" href="/dashboard/posts/create"><i data-feather="plus-square"></i> Create New Post</a>
  <table class="table table-striped table-sm">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Title</th>
        <th scope="col">Catogory</th>
        <th scope="col">Action</th>
        
      </tr>
    </thead>
    <tbody>
      @foreach ($posts as $post)        
      <tr>
        <td>{{ $loop->iteration }}</td>
        <td>{{ $post->title }}</td>
        <td>{{ $post->category->name }}</td>
        <td>
          <a href="/dashboard/posts/{{ $post->slug }}" class="badge bg-info"><i data-feather="eye"></i></a> 
          <a href="/dashboard/posts/{{ $post->slug }}/edit" class="badge bg-warning"><i data-feather="edit"></i></a> 

          <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
          @method('delete')
          @csrf
          <button class="badge bg-danger border-0" onclick="return confirm('are you sure ? ')" ><i data-feather="x-circle"></i></button>
        </form>

        </td>
      </tr>
      @endforeach
      
    </tbody>
  </table>
</div>

@endsection
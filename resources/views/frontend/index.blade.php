@extends('layouts.app')

@section('title')
{{ $web->title }}
@endsection

@section('head')
<style>
    [v-cloak]>* {
        display: none;
    }

    [v-cloak]::before {
        content: "loading...";
    }
</style>
@endsection

@section('content')

<div id="app" v-cloak>

    <div class="row">

        <div class="col-xl-12">
            <div id="carousel-example" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img src="/files/slider/{{ $web->slide_1}}" class="d-block rounded" width="100%" height="450px" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img src="/files/slider/{{ $web->slide_2}}" class="d-block rounded" width="100%" height="450px" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img src="/files/slider/{{ $web->slide_3}}" class="d-block rounded" width="100%" height="450px" alt="Third slide">
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example" role="button" data-slide="prev">
                    <span class="icon-prev" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example" role="button" data-slide="next">
                    <span class="icon-next" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>


    <br>
    @if($setting->status == 1)
    <div class="col-xl-12">
        <div class="card box-shadow-0 border-info">
            <div class="card-header card-head-inverse bg-secondary">
                <h3 class="card-title text-center">SILAHKAN CEK KELULUSAN ANDA</h3>



            </div>
            <div class="card-content collpase show">
                <br>


                <div class="card-body card-dashboard text-center">
                    <p class="card-text">MASUKAN NO UJIAN DAN KLIK TOMBOL CEK</p>
                    <br>
                    <form @submit.prevent="submitSearch">

                        <div class="form-group text-center">
                            <input type="text" v-model="search" class="form-control" id="maxlength-position-inside" placeholder="NO .UJIAN" maxlength="10" />
                        </div>
                        <br>
                        <button type="submit" class="btn btn-success">CEK</button>
                    </form>
                    <br>
                    <br>
                    @if($req_search != null)
                    <div v-for="st in student" v-if="search == st.no_exam ">
                        <div class="bs-callout-success callout-border-left mt-1 p-1" v-if="st.status == 1">
                            <strong>Selamat! @{{ st.name }}</strong>
                            <p>@{{ st.message }}</p>
                            <br>
                            <div class="text-left">
                                <h5 class="text-dark"><b>NAMA</b>&nbsp; &nbsp; &nbsp; &nbsp; : @{{ st.name }}</h5>
                                <br>
                                <h5 class="text-dark"><b>KELAS</b>&nbsp; &nbsp; &nbsp; &nbsp; : @{{ st.class }}</h5>
                                <br>
                                <h5 class="text-dark"><b>STATUS</b>&nbsp; &nbsp; &nbsp; : <span class="badge badge-success"> LULUS</span></h5>
                            </div>


                        </div>

                        <div class="bs-callout-pink callout-border-left mt-1 p-1" v-if="st.status == 2">
                            <strong>Mohon Maaf @{{ st.name }}</strong>
                            <p>@{{ st.message }}</p>
                            <br>
                            <div class="text-left">
                                <h5 class="text-dark"><b>NAMA</b>&nbsp; &nbsp; &nbsp; &nbsp; : @{{ st.name }}</h5>
                                <br>
                                <h5 class="text-dark"><b>KELAS</b>&nbsp; &nbsp; &nbsp; &nbsp; : @{{ st.class }}</h5>
                                <br>
                                <h5 class="text-dark"><b>STATUS</b>&nbsp; &nbsp; &nbsp; : <span class="badge badge-danger"> DITUNDA</span></h5>
                            </div>


                        </div>



                    </div>

                    @else
                    -
                    @endif



                </div>
            </div>
        </div>
    </div>
    @else
    <div id="kick-start" class="card text-center bg-warning">
        <div class="card-header">
            <h4 class="card-title text-white">PENGUMUMAN KELULUSAN BELUM DI BUKA</h4>
            <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>

        </div>
    </div>
    @endif


</div>


@endsection







@section('pagescript')
<script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>

<script>
    new Vue({
        el: '#app',
        data: {
            web: JSON.parse(String.raw `{!! json_encode($web) !!}`),
            student: JSON.parse(String.raw `{!! json_encode($student) !!}`),
            setting: JSON.parse(String.raw `{!! json_encode($setting) !!}`),
            search: '{{ $req_search }}',
        },
        methods: {
            submitSearch: function() {
                // console.log(this.sort_by)
                window.location.href = `/?search=${this.search}`
            },



        }
    })
</script>



@endsection
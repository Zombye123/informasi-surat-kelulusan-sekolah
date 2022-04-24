@extends('layouts.admin.app')

@section('title')
Admin
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
        <div class="col-12">
            <div class="card box-shadow-0 border-info">
                <div class="card-header card-head-inverse bg-secondary">
                    <h3 class="card-title text-center">LIST SISWA</h3>


                </div>
                <div class="card-content collpase show">
                    <br>
                    <a href="/student/upload" class="btn btn-social btn-min-width mr-1 mb-1 btn-secondary pull-right" class="float-sm-left">
                        <span class="fa fa-plus"></span> Upload Siswa &nbsp; </a>
                    <br>
                    <br>
                    <br>


                    <div class="card-body card-dashboard">


                        <table id="example" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr class="bg-success text-white" style="font-size: 14px;">
                                    <th>Nama</th>
                                    <th>Kelas</th>
                                    <th>Nisn</th>
                                    <th>No Ujian</th>
                                    <th>status </th>
                                    <th>Pesan</th>
                                </tr>
                            </thead>
                            <tbody>


                                <tr style="font-size: 14px;" v-for="st in student">

                                    <td>@{{ st.name }}</td>
                                    <td>@{{ st.class }}</td>
                                    <td>@{{ st.nisn }}</td>
                                    <td>@{{ st.no_exam }}</td>
                                    <td v-if="st.status == 1">
                                        <span class="badge bg-success">
                                            LULUS
                                        </span>
                                    </td>

                                    <td v-if="st.status == 2">
                                        <span class="badge bg-danger">
                                            DI TUNDA
                                        </span>
                                    </td>

                                    <td>@{{ st.message }}</td>

                                </tr>


                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
            student: JSON.parse(String.raw `{!! json_encode($student) !!}`),
        },
        methods: {


        }
    })
</script>



@endsection
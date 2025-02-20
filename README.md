



## Tentang CEK-LULUS

Merupakan web untuk mengetahui kelulusan Siswa/i (SD/SMP/SMA) dengan cara memasukan NISN atau NO.UJIAN. Website ini dibuat dengan laravel 10, vuejs 2 cdn, Axios cdn, dengan template STACK ADMIN 3 (Dashboard admin). CEK-LULUS memiliki fitur sebagai berikut:

-   Terdapat Fitur upload siswa Excel dengan format template yang sudah disediakan tanpa ribet harus input 1 per 1 siswa
-   Terdapat juga Fitur Edit web seperti setting logo, nama web, title web, deskripsi web, dan footer
-   Terdapat juga Fitur Cetak dan setting surat keterangan lulus (skl)

<br>
<br>

## CARA INSTALL

Untuk Menginstall Secara Lokal Pastikan PHP anda diatas > 7.3

-   Clone Repository ini Diterminal kesayangan anda `git clone https://github.com/zifaucode/cek-lulus.git`
-   Ketikan `composer install`
-   Rename .env-lokal menjadi .env dan edit sesuai konfigurasi database anda
-   Buat database pada dbms anda (ex: phpmyadmin) dengan nama sesuai konfigurasi DB_DATABASE pada .env
-   Migrate databasenya : `php artisan migrate`
-   Jalankan Seeder database : `php artisan db:seed`

Jalankan Diterminal

-   `php artisan optimize:clear` dan `php artisan serve`

<br>
<br>

opsi selain jika tidak ingin menjalankan migrate database dan seeder:

-   File SQL terletak pada foldel DBNYA-INI , import ke dalam db mysql yang sudah anda buat pada dbms anda


## USER PASSWORD

-    U: admin
-    P: 123456789

<br>
<br>

## UPDATE

-   Seeder User, Web, Setting
-   Tampilan Frontend
-   Bug Fix Cek no ujian

<br>
<br>

## TRAKTIR KOPI

Traktir kopi agar melek terus saat ngoding : <a href="https://trakteer.id/zifau"><img src="https://img.shields.io/static/v1?label=Trakteer&message=zifaucode&color=C02433"></a>

<br>
<br>

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

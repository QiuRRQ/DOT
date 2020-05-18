# dot_test

aplikasi test untuk DOT malang

# jawaban test

1. Sudah berapa lama anda mulai menggunakan Flutter? 
	=> kurang lebih selama 3 bulan selama magang dan freelance di PT. SISI
2. Apa saja library Flutter yang sering atau biasa anda pakai? Jelaskan kegunaannya bagi anda.
	=> imagepicker (buat mengambil gambar dari directory sekaligus camera)
	=> firebase ml vision (buat face detection pas ngerjain research aplikasi face recognition di PT. SISI)
	=> http (buat request ke REST API post/get/update/delete)
	=> flutter email sender (buat kirim email lewat aplikasi)
	=> shared preference (buat pakai fitur shared preference nya android native di flutter)
	=> flutter local auth (buat authentikasi biometrics yang disimpen di lokal, ini tak pakai pas research face recognition juga. yang fingerprint bisa di platform android dan ios. tapi yang face id cuman bisa di ios)
3. Apakah tantangan terbesar yang pernah anda temui dalam mengerjakan aplikasi Flutter dan bagaimana 
    anda menyelesaikannya dari sisi engineering? Misal dari sisi Android dan iOS.
	=> tantangan terbesar ya pas saya research soal face recognition itu di PT.SISI karena VP minta pakai flutter tapi flutter gk nyediain library buat nangani face recognition.
		nyoba nyoba ke native juga sampai pakai opencv, eh akhirnya diskusi lagi sama pak VP, barulah disepakati pakai face recognition miliknya microsoft azure.
		pas pakai azure baru bisa pakai flutter karena tinggal request request aja.
4. Jelaskan teknik-teknik apa saja yang dapat meningkatkan performance dan keamanan sebuah aplikasi Flutter.
	=> yang ini selama ini, yang saya tahu kalau melakukan request ke REST API ya sesuaikan kalau post ke API ya pakai method post biar paramnya gk keliatan di url, kalau get pakai method get, terus harus pastikan yang buat REST API nya
		itu pakai ngecek authentikasi token user dulu.


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

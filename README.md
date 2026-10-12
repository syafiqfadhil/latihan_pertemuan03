#belajar flutter pertemuan ke 3

Topik
Penggabungan Widget, Spasi, Dekorasi Teks, dan Text Alignment

Hari ini saya lanjut belajar layout teks di Flutter. Kalau sebelumnya cuma nampilin satu teks atau widget aja, sekarang saya coba menggabungkan beberapa custom widget sekaligus ke dalam satu halaman utama (main.dart). Saya juga belajar cara ngasih jarak antar widget biar tampilannya nggak numpuk.

Contoh yang saya buat
Saya membuat dan menggabungkan tiga class widget, yaitu FontTextWidget, DecorationTextWidget, dan AlignmentTextWidget. Semuanya saya susun dari atas ke bawah menggunakan Column.

Contoh kode utama yang saya ubah di main.dart:

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // untk menghilangkan label debug
      title: "Belajar Layout",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar - Font Text"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FontTextWidget(),
              
              SizedBox(height: 40,), // untu pembatas

              DecorationTextWidget(),
              
              SizedBox(height: 20,), // ngasih jarak biar ga nempel

              AlignmentTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

Yang saya pahami

1. Menghilangkan Tulisan DEBUG
debugShowCheckedModeBanner: false,
Ternyata untuk ngilangin pita merah tulisan "DEBUG" di pojok kanan atas emulator cuma tinggal tambahin satu baris ini di dalam MaterialApp.

2. Mengatur Jarak antar Widget (SizedBox)
Awalnya widget saya nempel semua dari atas ke bawah. Biar ada jarak atau spasi pembatas, saya pakai SizedBox(height: ...).
Contoh: SizedBox(height: 40,). Ini fungsinya murni cuma buat ngasih ruang kosong secara vertikal antar tulisan.

3. Dekorasi Teks dan Background
Di class DecorationTextWidget, saya nyobain beberapa TextDecoration:
- TextDecoration.underline buat bikin teks ada garis bawahnya.
- TextDecoration.lineThrough buat ngasih efek coret di tengah teks.
- backgroundColor: Colors.blue buat ngasih warna latar belakang persis di belakang tulisannya (bukan sewarna layar).

4. Bikin Efek Bayangan (Shadow)
shadows: [
  Shadow(
    offset: Offset(3,3),
    blurRadius: 5,
  ),
],
Teks bisa dibikin ada bayangannya pakai shadows. Nilai Offset(3,3) itu buat ngatur seberapa jauh bayangannya geser ke kanan dan ke bawah. Terus blurRadius itu buat ngatur seberapa ngeblur atau halus bayangannya.

5. Bikin Bingkai pakai Container
decoration: BoxDecoration(
  border: Border.all(),
),
Waktu bikin AlignmentTextWidget, teksnya saya bungkus pakai Container. Terus containernya saya kasih BoxDecoration dan border: Border.all() biar muncul garis kotak. Ini ngebantu banget buat ngeliat batas pinggir area paragraf teksnya.

6. Mengatur Posisi Paragraf (TextAlign)
Di dalam kotak container tadi, saya nyobain mengatur posisi teks:
- TextAlign.left (rata kiri)
- TextAlign.center (tengah)
- TextAlign.right (rata kanan)
- TextAlign.justify (rata kiri kanan, kelihatan jelas kalau teksnya panjang)

Hasil yang saya dapatkan
Aplikasi sudah berjalan lancar di emulator tanpa ada pita debug. Tampilannya memanjang ke bawah berisi teks biasa, teks dengan garis bawah/coretan, teks dengan efek bayangan, dan kotak berisi teks dengan berbagai posisi perataan. Semuanya sudah dikasih jarak yang rapi pakai SizedBox.
```eof

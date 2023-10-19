import 'package:flutter/material.dart';

class Apotek {
  final String gambar, nama, jamOperasional, deskripsi;
  final Color color;

  Apotek({
    required this.gambar,
    required this.nama,
    required this.jamOperasional,
    required this.deskripsi,
    required this.color,
  });
}
List<Apotek> apoteks = [
  Apotek(
    nama: "Apotek K24 Sumbersari",
    jamOperasional: "Buka 24 Jam",
    gambar: "assets/image/apotek1.jpg",
    deskripsi: "Apotek K24 Sumbersari adalah pilihan terbaik untuk mendapatkan obat dan perawatan kesehatan 24 jam sehari. Kami selalu siap melayani Anda dengan penuh dedikasi.",
    color: Color(0xFF3D82AE),
  ),
  Apotek(
    nama: "Apotek Sehat Sentosa",
    jamOperasional: "Buka 12 Jam",
    gambar: "assets/image/apotek2.jpg",
    deskripsi: "Apotek Sehat Sentosa menawarkan obat-obatan berkualitas tinggi dan layanan yang ramah. Kami siap membantu Anda merasa lebih baik.",
    color: Color(0xFFD3A984),
  ),
  Apotek(
    nama: "Apotek Bersama Sehat",
    jamOperasional: "Buka 18 Jam",
    gambar: "assets/image/apotek3.jpg",
    deskripsi: "Apotek Bersama Sehat adalah tempat yang nyaman untuk memenuhi kebutuhan obat dan perawatan kesehatan Anda. Kami berkomitmen untuk memberikan pelayanan terbaik kepada pelanggan kami.",
    color: Color(0xFF989493),
  ),
  Apotek(
    nama: "Apotek Cepat Sembuh",
    jamOperasional: "Buka 16 Jam",
    gambar: "assets/image/apotek4.jpg",
    deskripsi: "Apotek Cepat Sembuh adalah mitra terpercaya dalam perawatan kesehatan Anda. Dengan layanan yang cepat dan berkualitas, kami selalu siap membantu Anda merasa sehat kembali.",
    color: Color(0xFFE6B398),
  ),
  Apotek(
    nama: "Apotek Sehat Bahagia",
    jamOperasional: "Buka 20 Jam",
    gambar: "assets/image/apotek5.jpg",
    deskripsi: "Apotek Sehat Bahagia adalah tempat yang menyediakan obat-obatan dan perawatan kesehatan untuk menjaga kesejahteraan Anda. Kunjungi kami dan temukan kebahagiaan dalam kesehatan Anda.",
    color: Color(0xFFFB7883),
  ),
  Apotek(
    nama: "Apotek Sejahtera",
    jamOperasional: "Buka 10 Jam",
    gambar: "assets/image/apotek6.jpg",
    deskripsi: "Apotek Sejahtera adalah pilihan terbaik untuk mendapatkan obat dan konsultasi kesehatan. Layanan kami didukung oleh tenaga profesional yang siap membantu Anda.",
    color: Color(0xFFAEAEAE),
  ),
];

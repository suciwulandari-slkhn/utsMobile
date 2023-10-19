import 'package:projek/pages/models/kategoriObat.dart';

class ObatDetail {
  String namaObat;
  String imageObat;
  CategoryObat kategoriObat;
  String deskripsi;
  double hargaObat; // Harga obat
  // String aturanPakai; // Aturan pakai obat
  // String dosis; // Dosis obat
  String komposisi; // Komposisi obat

  ObatDetail({
    required this.namaObat,
    required this.imageObat,
    required this.kategoriObat,
    required this.deskripsi,
    required this.hargaObat,
    // required this.aturanPakai,
    // required this.dosis,
    required this.komposisi,
  });
}

var obat = [
  ObatDetail(
      namaObat: "ACETYLCYSTEINE",
      imageObat: "assets/image/Acentylcysteine.jpeg",
      kategoriObat: CategoryObat.all()[0],
      deskripsi:
          "ACETYLCYSTEINE 200 MG KAPSUL adalah obat generik yang digunakan sebagai mukolitik (pengencer dahak) dan antidot pada pasien yang overdosis Paracetamol. Fungsi mukolitik dari Acetylcysteine bekerja dengan cara melalui gugus sulfhidril bebasnya yang membuka ikatan disulfida dalam mukoprotein, sehingga menurunkan viskositas lendir/ mukus (dahak) yang membuat mukus tersebut encer sehingga mukus lebih mudah dikeluarkan. Dalam penggunaan obat ini HARUS SESUAI DENGAN PETUNJUK DOKTER. ",
      hargaObat: 5.300, // Harga obat
      komposisi: "Acetylcysteine 200 mg"),
  ObatDetail(
      namaObat: "SANADRYL DMP",
      imageObat: "assets/image/Sanadryl.jpg",
      kategoriObat: CategoryObat.all()[0],
      deskripsi:
          " SANADRYL DMP SIRUP 120 ML mengandung zat aktif Dextromethorphan HBr, Difenhidramin HCl, Ammonium Klorida, Natrium Sitrat dan menthol. Obat ini digunakan untuk mengatasi batuk tidak berdahak yang disebabkan karena alergi. Dalam penggunaan obat ini HARUS SESUAI DENGAN PETUNJUK DOKTER..",
      hargaObat: 5.300, // Harga obat
      komposisi:
          " Per 5 ml: Dextromethorphan HBr 10 mg, Diphenhydramine HCl 12.5 mg, Ammonium Cl 100 mg, Na citrate 50 mg, Menthol 1 mg. "),
  ObatDetail(
      namaObat: "PARACETAMOL",
      imageObat: "assets/image/paracetamol.jpg",
      kategoriObat: CategoryObat.all()[2],
      deskripsi:
          " PARACETAMOL TABLET merupakan obat yang dapat digunakan untuk meringankan rasa sakit pada sakit kepala, sakit gigi, dan menurunkan demam. Paracetamol bekerja pada pusat pengatur suhu di hipotalamus untuk menurunkan suhu tubuh (antipiretik) serta menghambat sintesis prostaglandin sehingga dapat mengurangi nyeri ringan sampai sedang (analgesik).",
      hargaObat: 5.300, // Harga obat
      komposisi: " Setiap tablet mengandung Paracetamol 500 mg "),
  ObatDetail(
      namaObat: "SANMOL SIRUP",
      imageObat: "assets/image/sanmol.jpeg",
      kategoriObat: CategoryObat.all()[2],
      deskripsi:
          " SANMOL SIRUP merupakan obat dengan kandungan Paracetamol. Obat ini digunakan untuk meringankan rasa sakit pada keadaan sakit kepala, sakit gigi dan menurunkan demam. Sanmol bekerja pada pusat pengatur suhu di hipotalamus untuk menurunkan suhu tubuh (antipiretik) serta menghambat sintesis prostaglandin sehingga dapat mengurangi nyeri ringan sampai sedang (analgetik).",
      hargaObat: 17.300,
      komposisi: " Tiap 5 ml mengandung : Paracetamol 120 mg "),
  ObatDetail(
      namaObat: "IBUPROFEN",
      imageObat: "assets/image/ibuprofin.jpg",
      kategoriObat: CategoryObat.all()[2],
      deskripsi:
          "IBUPROFEN obat golongan anti inflamasi non steroid yang mempunyai efek anti inflamasi, analgesik dan antipiretik, yang digunakan untuk rasa nyeri dan inflamasi sebagai gejala utama. Obat ini digunakan sebagai Nyeri ringan sampai sedang antara lain nyeri pada penyakit gigi atau pencabutan gigi, nyeri pasca bedah, sakit kepala, gejala artritis reumatoid, gejala osteoartritis, gejala juvenile artritis reumatoid, menurunkan demam pada anak. Dalam penggunaan obat ini harus SESUAI DENGAN PETUNJUK DOKTER.",
      hargaObat: 7.900, // Harga obat
      komposisi: "Ibuprofen 400 mg"),
];

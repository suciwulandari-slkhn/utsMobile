import 'package:flutter/material.dart';

@override
class ItemCategori extends StatelessWidget {
  const ItemCategori({
    Key? key,
    required this.tittle,
    required this.gambar,
    this.radius = 10.0, // Radius default
  }) : super(key: key);

  final String tittle;
  final String gambar;
  final double radius; // Menambahkan parameter radius

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(radius), // Menggunakan radius yang diatur
            // color: Colors.grey, // Warna latar belakang kotak
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Image.asset(
              gambar,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          tittle,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}

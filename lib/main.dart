import 'package:flutter/material.dart';
import 'package:projek/pages/apotek/popular_apotek_detail.dart';
import 'package:projek/pages/home/mainArticlePage.dart';
import 'package:get/get.dart';
import 'package:projek/pages/obat/rekomendasi_obat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

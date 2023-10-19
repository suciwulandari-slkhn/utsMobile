import 'package:flutter/material.dart';
import 'package:projek/pages/models/data_obat.dart';
import 'package:projek/pages/models/kategoriObat.dart';
import 'package:projek/pages/obat/rekomendasi_obat.dart';
import 'package:projek/widget/big_text.dart';
import 'package:projek/widget/dimensions.dart';

class ObatListPage extends StatelessWidget {
  final CategoryObat category;

  ObatListPage({required this.category});

  @override
  Widget build(BuildContext context) {
    // Filter data obat berdasarkan kategori yang dipilih
    final List<ObatDetail> filteredObat = obat.where((obat) {
      return obat.kategoriObat.name.contains(category.name);
    }).toList();
    print(filteredObat);
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Obat - ${category.name}'),
      ),
      body: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: filteredObat.length,
        itemBuilder: (context, index) {
          ObatDetail obat = filteredObat[index];
          return GestureDetector(
            onTap: () {
              // Navigasi ke halaman detail dengan membawa data obat yang diklik
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RekomendasiObatDetail(obat: obat),
              ));
            },
            child: Container(
              margin: EdgeInsets.only(
                top: Dimensions.height10,
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height10,
              ),
              child: Row(
                children: [
                  // Gambar
                  Container(
                    width: Dimensions.ListViewImgSize,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(obat.imageObat),
                      ),
                    ),
                  ),
                  // Keterangan
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          bottomRight: Radius.circular(Dimensions.radius20),
                        ),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: Dimensions.width10,
                          right: Dimensions.width10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(
                              text: obat.namaObat,
                              size: Dimensions.font20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

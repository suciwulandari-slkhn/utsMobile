//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui'; // Import dart:ui untuk menggunakan Matrix4
import 'package:dots_indicator/dots_indicator.dart';
import 'package:projek/widget/app_column.dart';
import 'package:projek/pages/apotek/popular_apotek_detail.dart';
import 'package:projek/pages/home/list_obat.dart';
import 'package:projek/pages/models/kategori_apotek.dart';
import 'package:projek/widget/big_text.dart';
import 'package:projek/widget/color.dart';
import 'package:projek/widget/dimensions.dart';
import 'package:projek/widget/icon_and_text_widget.dart';
import 'package:projek/widget/small_text.dart';
//import 'package:projek/pages/home/list_obat.dart'; // Sesuaikan dengan path sebenarnya ke file ObatListPage.dart
import '../models/kategoriObat.dart';

class ArticlePageBody extends StatefulWidget {
  const ArticlePageBody({Key? key}) : super(key: key);

  @override
  _ArticlePageBodyState createState() => _ArticlePageBodyState();
}

class _ArticlePageBodyState extends State<ArticlePageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        //print("current value is" + _currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider
        Container(
          //color: Colors.orange,
          height: 300,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        //dots
        Container(
          child: new DotsIndicator(
            dotsCount: 5, // Ganti dengan jumlah halaman yang sesuai
            position: _currPageValue,
            decorator: DotsDecorator(
              color: Colors.white, // Warna titik non-aktif
              activeColor: Colors.lightBlueAccent, // Warna titik aktif
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        //Popular
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(
                text: "Kategori Penyakit",
              ),
            ],
          ),
        ),

        //Letakkan GridView Disini
        GridView.builder(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
          ),
          itemCount: CategoryObat.all().length,
          itemBuilder: (BuildContext context, int index) {
            CategoryObat category = CategoryObat.all()[index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ObatListPage(
                    category: category,
                  ),
                ));
              },
              child: Container(
                //color: Colors.white,
                width: 100,
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(category.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      category.name,
                    ),
                  ],
                ),
              ),
            );
          },
        ),

        // SizedBox(
        //   height: Dimensions.height10,
        // ),
        Container(
          padding: const EdgeInsets.all(5),
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(
                text: "Popular",
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(top: 4),
                child: SmallText(
                  text: "Apotek",
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),

        ListView.builder(
          padding: EdgeInsets.only(top: 15),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: apoteks.length,
          itemBuilder: (context, index) {
            Apotek apotek = apoteks[index];

            return GestureDetector(
              onTap: () {
                // Arahkan ke halaman detail apotek dengan membawa data apotek yang dipilih
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailApotek(apotek: apotek),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height10,
                ),
                child: Row(
                  children: [
                    // Gambar
                    Container(
                      width: Dimensions.ListViewImgSize,
                      height: Dimensions.ListViewImgSize,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(apotek.gambar),
                        ),
                      ),
                    ),
                    // Keterangan
                    Expanded(
                      child: Container(
                        height: Dimensions.ListViewTextContSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
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
                              BigText(text: apotek.nama),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              Row(
                                children: [
                                  IconAndTextWidget(
                                    icon: Icons.access_time_filled_rounded,
                                    text: apotek.jamOperasional,
                                    iconColor: apotek.color,
                                  ),
                                ],
                              )
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
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/image2.jpg"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageTextContainer,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                  ]),
              child: Container(
                  //color: Colors.red,
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  alignment: Alignment.center,
                  child: AppColumn(
                    text: "Tips Gizi Cukup Untuk Anak",
                  )),
            ),
          )
        ],
      ),
    );
  }
}

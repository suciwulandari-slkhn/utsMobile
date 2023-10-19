import 'package:flutter/material.dart';
import 'package:projek/widget/color.dart';
import 'package:projek/widget/app_column.dart';
import 'package:projek/main.dart';
import 'package:projek/widget/big_text.dart';
import 'package:flutter/widgets.dart';
import 'package:projek/widget/dimensions.dart';
import 'package:projek/widget/small_text.dart';
import 'articlePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Column(
        children: [
          //header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Hai Suci!!",
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SmallText(
                        size: Dimensions.font16,
                        text: "Semoga kamu dalam keadaan Baik!",
                        color: Colors.black54,
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search,
                          color: Colors.blue[400], size: Dimensions.iconSize24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //body

          Expanded(
              child: SingleChildScrollView(
            child: ArticlePageBody(),
          ))
        ],
      ),
    );
  }
}

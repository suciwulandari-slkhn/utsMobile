import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek/widget/big_text.dart';
import 'package:projek/widget/color.dart';
import 'package:projek/widget/dimensions.dart';
import 'package:projek/widget/icon_and_text_widget.dart';
import 'package:projek/widget/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font20,
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      )),
            ),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "5.0"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "2201"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Anak",
                iconColor: AppColors.iconColor1)
          ],
        )
      ],
    );
  }
}

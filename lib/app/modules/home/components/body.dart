import 'package:flutter/material.dart';
import 'package:plant_app/app/modules/home/components/title_with_more_btn.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;

    // It enable scrollling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            press: () {},
            title: "Recommended",
          ),
          // it will cover 40% of our total width
          Container(
            width: size.width * .4,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/image_1.png",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

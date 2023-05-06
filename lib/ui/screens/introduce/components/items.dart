import 'package:flutter/material.dart';

import '../../../constants.dart';

class IntroduceModel {
  final String? title1;
  final String? title2;
  final String? body;
  final String? image;

  IntroduceModel({this.title1, this.title2, this.body,this.image});
}

final List<IntroduceModel> titleList = [
  IntroduceModel(
    title1: "MEA Smart Life",
    title2: "พร้อมมอบสิ่งที่ดีที่สุด",
    body: "สะดวกสบายกับหลากหลายช่องทางการชำระเงิน",
    image: "assets/images/IntroduceImage-1.png",
  ),
  IntroduceModel(
    title1: "ติ๊ด",
    title2: "จ่ายง่ายๆ",
    body: "ที่ 7-Elevenและเคาน์เตอร์เซอร์วิสด้วยประเทศ",
    image: "assets/images/IntroduceImage-2.png",
  ),
  IntroduceModel(
    title1: "ค้นหาสาขา",
    title2: "ข้อมูลได้ง่ายดาย",
    body: "สะดวกในการติดต่อ หาข้อมูลได้รวดเร็ว",
    image: "assets/images/IntroduceImage-3.png",
  ),
];

final List contents = [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Image(
          image: AssetImage("assets/images/IntroduceTitle-1.png"),
        ),
        SizedBox(height: defaultPadding * 3),
        Image(
          image: AssetImage("assets/images/IntroduceImage-1.png"),
        ),
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Image(
          image: AssetImage("assets/images/IntroduceTitle-2.png"),
        ),
        SizedBox(height: defaultPadding * 3),
        Image(
          image: AssetImage("assets/images/IntroduceImage-2.png"),
        ),
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Image(
          image: AssetImage("assets/images/IntroduceTitle-3.png"),
        ),
        SizedBox(height: (247.0 - 169.0)),
        // SizedBox(height: defaultPadding * 3),
        Image(
          image: AssetImage("assets/images/IntroduceImage-3.png"),
        ),
      ],
    ),
  ),
];

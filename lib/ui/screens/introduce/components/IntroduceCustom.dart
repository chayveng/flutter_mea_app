import 'package:flutter/material.dart';
import 'package:flutter_mea_app/ui/screens/introduce/components/IndicatorCustom.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'items.dart';

class IntroduceCustom extends StatelessWidget {
  final IntroduceModel title;
  final int index;
  final int pageActive;

  const IntroduceCustom({
    Key? key,
    required this.title,
    required this.index,
    required this.pageActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildTitle(context),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title.body.toString(),
                    style: TextStyle(
                      fontSize: sized(context).width * 0.061,
                      // fontSize: 24.0,
                      color: Color(0xFF313131),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: sized(context).width,
            height: sized(context).width,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image(
                image: AssetImage("${title.image}"),
              ),
            ),
          ),
          // IndicatorCustom(pageActive: pageActive)
        ],
      ),
    );
  }

  Widget buildTitle(BuildContext context) {
    return index == 1
        ? Container(
            padding: const EdgeInsets.only(top: 40),
            width: double.infinity,
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: "${title.title1}",
                    style: TextStyle(
                      fontSize: sized(context).width * 0.13,
                      color: orangeColor,
                    ),
                  ),
                  TextSpan(
                    text: "${title.title2}",
                    style: TextStyle(
                      fontSize: sized(context).width * 0.13,
                      color: Color(0xFF313131),
                    ),
                  ),
                ],
              ),
            ),
          )
        : SizedBox(
            height: (sized(context).width * 0.13) * 2,
            width: double.infinity,
            child: Stack(
              children: [
                Text(
                  title.title1.toString(),
                  style: TextStyle(
                    fontSize: sized(context).width * 0.13,
                    color: orangeColor,
                  ),
                ),
                Positioned(
                  top: sized(context).width * 0.12,
                  // top: 45,
                  child: Text(
                    title.title2.toString(),
                    style: TextStyle(
                      fontSize: sized(context).width * 0.13,
                      color: Color(0xFF313131),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

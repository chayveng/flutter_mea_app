import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mea_app/ui/screens/introduce/components/IndicatorCustom.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'components/Buttons.dart';
import 'components/IntroduceCustom.dart';
import 'components/items.dart';

class IntroduceScreen extends StatefulWidget {
  const IntroduceScreen({Key? key}) : super(key: key);

  @override
  State<IntroduceScreen> createState() => _IntroduceScreenState();
}

class _IntroduceScreenState extends State<IntroduceScreen> {
  PageController pageController = PageController(initialPage: 1);
  int pageActive = 0;

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.only(top: defaultPadding * 2),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: sized(context).width + 150,
                    child: PageView.builder(
                      itemCount: 3,
                      onPageChanged: (index) =>
                          setState(() => pageActive = index),
                      itemBuilder: (context, index) => IntroduceCustom(
                        title: titleList[index],
                        index: index,
                        pageActive: pageActive,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: IndicatorCustom(pageActive: pageActive),
                  ),
                ],
              ),
              // const SizedBox(height: 16),
              const Buttons(),
            ],
          ),
        ),
      ),
    );
  }
}

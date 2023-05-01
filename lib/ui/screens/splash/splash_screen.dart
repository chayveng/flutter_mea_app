import 'package:flutter/material.dart';
import 'package:flutter_mea_app/ui/screens/routes.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    autoNavigator();
    super.initState();
  }

  Future autoNavigator() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, AppRoute.introduce);
    print("go to introduce screen");
  }

  // SvgPicture.asset("assets/images/Ellipse_2.svg"),

  @override
  Widget build(BuildContext context) {
    Size sized = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: orange2Color,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  heigt: 85,
                  padding: EdgeInsets.only(left: sized.width * 0.1),
                  child: const Image(image: AssetImage("assets/images/LOGO.png")),
                ),
              ],
            ),
            SizedBox(
              // width: sized.width,
              width: 500,
              child: SvgPicture.asset("assets/images/LOGOMEASMARTLIFE.svg"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mea_app/ui/screens/routes.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/splash-obj-bg-1.png"),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 85,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image(image: AssetImage("assets/images/LOGO.png")),
                    ),
                  ),
                  SizedBox(
                    width: 500,
                    child: Image(
                      image: AssetImage("assets/images/LOGOMEASMARTLIFE.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

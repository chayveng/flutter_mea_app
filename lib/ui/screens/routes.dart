import 'package:flutter/material.dart';
import 'package:flutter_mea_app/ui/screens/introduce/introduce_screen.dart';
import 'package:flutter_mea_app/ui/screens/splash/splash_screen.dart';

import 'home/home_screen.dart';

class AppRoute {
  static const home = 'home';
  static const splash = 'splash';
  static const introduce = 'introduce';

  static get all => <String, WidgetBuilder>{
    home: (context) => const HomeScreen(),
    splash: (context) => const SplashScreen(),
    introduce: (context) => const IntroduceScreen(),
  };

}

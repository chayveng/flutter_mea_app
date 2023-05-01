import 'package:flutter/material.dart';
import 'package:flutter_mea_app/ui/screens/home/home_screen.dart';
import 'package:flutter_mea_app/ui/screens/routes.dart';
import 'package:flutter_mea_app/ui/screens/splash/splash_screen.dart';

class App extends StatelessWidget {
  const  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MEA App",
      theme: ThemeData.dark(),
      routes: AppRoute.all,
      home: const SplashScreen(),
    );
  }
}

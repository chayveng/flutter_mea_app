import 'package:flutter/material.dart';
import 'package:flutter_mea_app/ui/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  // runApp(const SplashTest());
  runApp(const App());
}

// class SplashTest extends StatefulWidget {
//   const SplashTest({Key? key}) : super(key: key);
//
//   @override
//   State<SplashTest> createState() => _SplashTestState();
// }

// class _SplashTestState extends State<SplashTest> {
//   @override
//   void initState() {
//     super.initState();
//     initialization();
//   }
//
//   void initialization() async {
//     print('ready in 3...');
//     await Future.delayed(const Duration(seconds: 1));
//     print('ready in 2...');
//     await Future.delayed(const Duration(seconds: 1));
//     print('ready in 1...');
//     await Future.delayed(const Duration(seconds: 1));
//     print('go!');
//     FlutterNativeSplash.remove();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text("Splash Test"),
//         ),
//       ),
//     );
//   }
// }

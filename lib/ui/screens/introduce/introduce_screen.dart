import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';

class IntroduceScreen extends StatefulWidget {
  const IntroduceScreen({Key? key}) : super(key: key);

  @override
  State<IntroduceScreen> createState() => _IntroduceScreenState();
}

class _IntroduceScreenState extends State<IntroduceScreen> {

  // @override
  // void initState() {
  //   // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //     statusBarColor: Colors.transparent,
  //   ));
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   SystemChrome.setEnabledSystemUIOverlays(
  //       [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Row(
                //   children: [
                //     ListView.builder(
                //       scrollDirection: Axis.horizontal,
                //       itemCount: _contents.length,
                //       itemBuilder: (context, index) => _contents[index],
                //     ),
                //   ],
                // ),
                // _contents[0],
                const Image(
                  image: AssetImage("assets/images/IntroduceTitle-1.png"),
                ),
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/IntroduceImage-1.png"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          3,
                          (index) => GestureDetector(
                            onTap: () => {print(index)},
                            child: Container(
                              width: 7,
                              height: 7,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 2.5,
                              ),
                              decoration: const BoxDecoration(
                                color: orangeColor,
                                // color: index == 1 ? orangeColor : Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50.0,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => {print("เข้าสู่ระบบ")},
                        style: ElevatedButton.styleFrom(
                          primary: orangeColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                              // Radius.circular(defaultBorderRadius),
                            ),
                          ),
                        ),
                        child: const Text(
                          "เข้าสู่ระบบ",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 50.0,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => {print("ข้าม")},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.white,
                          side: const BorderSide(
                            width: 1,
                            color: orangeColor,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                              // Radius.circular(defaultBorderRadius),
                            ),
                          ),
                        ),
                        child: const Text(
                          "ข้าม",
                          style: TextStyle(fontSize: 20, color: orangeColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List _contents = [
    Column(
      children: const [
        Image(
          image: AssetImage("assets/images/IntroduceTitle-1.png"),
        ),
        Image(
          image: AssetImage("assets/images/IntroduceImage-1.png"),
        ),
      ],
    ),
    Column(
      children: const [
        Image(
          image: AssetImage("assets/images/IntroduceTitle-2.png"),
        ),
        Image(
          image: AssetImage("assets/images/IntroduceImage-2.png"),
        ),
      ],
    ),
    Column(
      children: const [
        Image(
          image: AssetImage("assets/images/IntroduceTitle-3.png"),
        ),
        Image(
          image: AssetImage("assets/images/IntroduceImage-3.png"),
        ),
      ],
    ),
  ];
}

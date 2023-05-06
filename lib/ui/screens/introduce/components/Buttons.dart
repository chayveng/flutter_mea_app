import 'package:flutter/material.dart';

import '../../../constants.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      margin: const EdgeInsets.only(bottom: 24),
      // margin: const EdgeInsets.only(bottom: defaultPadding * 1.5),
      child: Column(
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
    );
  }
}

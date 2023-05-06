import 'package:flutter/material.dart';

import '../../../constants.dart';

class IndicatorCustom extends StatelessWidget {
  final int pageActive;

  const IndicatorCustom({
    Key? key,
    required this.pageActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        aIndicator(
            color: pageActive == 0 ? orangeColor : const Color(0xFFD9D9D9)),
        aIndicator(
            color: pageActive == 1 ? orangeColor : const Color(0xFFD9D9D9)),
        aIndicator(
            color: pageActive == 2 ? orangeColor : const Color(0xFFD9D9D9)),
      ],
    );
  }

  Widget aIndicator({required Color color}) {
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}

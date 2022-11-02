import 'package:flutter/material.dart';

import '../constants/text_styles.dart';
import 'circle_button.dart';

class NumberPickerControl extends StatelessWidget {
  final int value;
  final String title;
  final Function()? onDecrease;
  final Function()? onIncrease;

  const NumberPickerControl({
    required this.value,
    required this.title,
    this.onDecrease,
    this.onIncrease,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: kCardTitleTextStyle,
        ),
        Text(
          '$value',
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleButton(
              icon: Icons.remove,
              onPress: onDecrease,
            ),
            const SizedBox(width: 10),
            CircleButton(
              icon: Icons.add,
              onPress: onIncrease,
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Function()? onPress;
  final IconData icon;

  const CircleButton({this.onPress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: floatingButtonColor,
      child: Icon(
        icon,
        color: Colors.white,
        size: 34.0,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LayoutCard extends StatelessWidget {
  final Widget? child;
  final Color backgroundColor;
  final bool hasShadow;
  final bool isSelected;
  final Function()? onPressed;

  LayoutCard({
    this.child,
    this.onPressed,
    this.isSelected = true,
    this.backgroundColor = contentBackground,
    this.hasShadow = true,
  });

  LayoutCard.withSelection({
    required this.child,
    required this.onPressed,
    required this.isSelected,
  })  : hasShadow = isSelected,
        backgroundColor =
            isSelected ? contentBackground : inactiveContentBackground;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: backgroundColor,
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: const Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: child,
      ),
    );
  }
}

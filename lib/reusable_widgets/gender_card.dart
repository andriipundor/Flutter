import 'package:flutter/material.dart';

import '../constants/text_styles.dart';

class GenderCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const GenderCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 120.0,
        ),
        Text(
          title,
          style: kCardTitleTextStyle,
        ),
      ],
    );
  }
}

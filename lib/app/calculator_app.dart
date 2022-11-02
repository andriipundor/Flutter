import 'package:bmi_calculator/screens/parameters_input_screen.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: darkBackground,
          scaffoldBackgroundColor: darkBackground,
          appBarTheme: const AppBarTheme(backgroundColor: darkBackground)),
      home: ParametersInputScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => ParametersInputScreen(),
      //   '/results': (context) => const ResultsPage(
      //         bmiResult: 'Best',
      //         bmiValue: '18.4',
      //         description: 'Sample description',
      //       ),
      // },
    );
  }
}

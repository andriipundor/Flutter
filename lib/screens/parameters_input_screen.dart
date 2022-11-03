import 'package:bmi_calculator/constants/text_styles.dart';
import 'package:bmi_calculator/model/bmi_calculator.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../reusable_widgets/gender_card.dart';
import '../reusable_widgets/layout_card.dart';
import '../reusable_widgets/number_picker_control.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals

enum Gender { male, female }

class ParametersInputScreen extends StatefulWidget {
  @override
  State<ParametersInputScreen> createState() => _ParametersInputScreenState();
}

class _ParametersInputScreenState extends State<ParametersInputScreen> {
  final BMICalculator _calculator = BMICalculator();

  void _selectGender(Gender gender) {
    setState(() {
      _calculator.setGender(gender);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildGenderSelectionSection(),
          _buildHeightSection(),
          _buildBottomRow(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultsPage(
                  bmiResult: _calculator.getBMIString,
                  bmiValue: _calculator.getResult(),
                  description: _calculator.getInterpretation(),
                );
              }));

              // Named Routes API
              // Navigator.pushNamed(context, '/results');
            },
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
              color: activeElementColor,
              height: 80.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGenderSelectionSection() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: LayoutCard.withSelection(
              isSelected: _calculator.gender == Gender.male,
              onPressed: () => _selectGender(Gender.male),
              child: GenderCard(
                title: 'MALE',
                icon: Icons.male,
              ),
            ),
          ),
          Expanded(
            child: LayoutCard.withSelection(
              isSelected: _calculator.gender == Gender.female,
              onPressed: () => _selectGender(Gender.female),
              child: GenderCard(
                title: 'FEMALE',
                icon: Icons.female,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeightSection() {
    return Expanded(
      child: LayoutCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HEIGHT',
              style: kCardTitleTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '${_calculator.height}',
                  style: kNumberTextStyle,
                ),
                Text(
                  'cm',
                  style: kCardTitleTextStyle,
                )
              ],
            ),
            Slider(
              value: _calculator.height.toDouble(),
              min: 70,
              max: 230,
              activeColor: activeElementColor,
              inactiveColor: inactionElementColor,
              onChanged: (newValue) {
                setState(() {
                  _calculator.setHeight(newValue);
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomRow() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: LayoutCard(
              child: NumberPickerControl(
                title: 'WEIGHT',
                value: _calculator.weight,
                onDecrease: () {
                  setState(() {
                      _calculator.decrementWeight();
                  });
                },
                onIncrease: () {
                  setState(() {
                    _calculator.incrementWeight();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: LayoutCard(
              child: NumberPickerControl(
                title: 'AGE',
                value: _calculator.age,
                onDecrease: () {
                  setState(() {
                    _calculator.decrementAge();
                  });
                },
                onIncrease: () {
                  setState(() {
                    _calculator.incrementAge();
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

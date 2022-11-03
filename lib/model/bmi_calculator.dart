import 'dart:math';

import '../screens/parameters_input_screen.dart';

class BMICalculator {
  Gender _selectedGender = Gender.male;
  int _selectedHeight = 140;
  int _selectedWeight = 68;
  int _selectedAge = 18;

  get gender => _selectedGender;
  get height => _selectedHeight;
  get weight => _selectedWeight;
  get age => _selectedAge;

  void setGender(Gender gender) {
    _selectedGender = gender;
  }

  void setHeight(double height) {
    _selectedHeight = height.toInt();
  }

  void incrementWeight() {
    if(weight < 400) {
      _selectedWeight++;
    }
  }

  void decrementWeight() {
    if(weight > 1) {
      _selectedWeight--;
    }
  }

  void incrementAge() {
    if(weight < 116) {
      _selectedAge++;
    }
  }

  void decrementAge() {
    if(weight > 1) {
      _selectedAge--;
    }
  }

  // Logic

  double _calculateBMI() {
    var bmi = _selectedWeight / pow(_selectedHeight / 100, 2);
    return bmi;
  }

  get getBMIString => _calculateBMI().toStringAsFixed(1);

  String getResult() {
    var bmi = _calculateBMI();
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    var bmi = _calculateBMI();
    if (bmi >= 25) {
      return 'You have a highter than a normal body weight. Try to exercise more';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have lower than normal body weight. You can eat a bit more';
    }
  }
}

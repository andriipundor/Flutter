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
    if(age < 116) {
      _selectedAge++;
    }
  }

  void decrementAge() {
    if(age > 1) {
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
    switch(age) {
      case 1:
        {
          if (bmi >= 25) {
            return 'You have a higher than a normal body weight. Try to exercise more';
          } else if (bmi > 18.5 && height > 78 && weight > 12) {
            return 'Your BMI coefficient is normal. But your weight and height are too much for your age. You should eat Rastishka less !)';
          } else if (bmi > 18.5 && height < 70 && weight < 8) {
            return 'Your BMI coefficient is normal. But your weight and height are too small for your age You should eat Rastishka more !)';
          } else if (bmi > 18.5) {
            return 'You have a normal body weight. Good job!';
          } else {
            return 'You have lower than normal body weight. You can eat a bit more';
          }
        }

      case 2:{
        if (bmi >= 25) {
          return 'You have a higher than a normal body weight. Try to exercise more';
        } else if (bmi > 18.5 && height > 94 && weight > 16) {
          return 'Your BMI coefficient is normal. But your weight and height are too much for your age. You should eat Rastishka less !)';
        } else if (bmi > 18.5 && height < 82 && weight < 10) {
          return 'Your BMI coefficient is normal. But your weight and height are too small for your age You should eat Rastishka more !)';
        } else if (bmi > 18.5) {
          return 'You have a normal body weight. Good job!';
        } else {
          return 'You have lower than normal body weight. You can eat a bit more';
        }
      }

      case 3:{
        if (bmi >= 25) {
          return 'You have a higher than a normal body weight. Try to exercise more';
        } else if (bmi > 18.5 && height > 103 && weight > 18) {
          return 'Your BMI coefficient is normal. But your weight and height are too much for your age. You should eat Rastishka less !)';
        } else if (bmi > 18.5 && height < 89 && weight < 12) {
          return 'Your BMI coefficient is normal. But your weight and height are too small for your age You should eat Rastishka more !)';
        } else if (bmi > 18.5) {
          return 'You have a normal body weight. Good job!';
        } else {
          return 'You have lower than normal body weight. You can eat a bit more';
        }
      }

      case 4:{
        if (bmi >= 25) {
          return 'You have a higher than a normal body weight. Try to exercise more';
        } else if (bmi > 18.5 && height > 107 && weight > 21) {
          return 'Your BMI coefficient is normal. But your weight and height are too much for your age. You should eat Rastishka less !)';
        } else if (bmi > 18.5 && height < 95 && weight < 13) {
          return 'Your BMI coefficient is normal. But your weight and height are too small for your age You should eat Rastishka more !)';
        } else if (bmi > 18.5) {
          return 'You have a normal body weight. Good job!';
        } else {
          return 'You have lower than normal body weight. You can eat a bit more';
        }
      }

      case 5:{
        if (bmi >= 25) {
          return 'You have a higher than a normal body weight. Try to exercise more';
        } else if (bmi > 18.5 && height > 119 && weight > 24) {
          return 'Your BMI coefficient is normal. But your weight and height are too much for your age. You should eat Rastishka less !)';
        } else if (bmi > 18.5 && height < 101 && weight < 14) {
          return 'Your BMI coefficient is normal. But your weight and height are too small for your age You should eat Rastishka more !)';
        } else if (bmi > 18.5) {
          return 'You have a normal body weight. Good job!';
        } else {
          return 'You have lower than normal body weight. You can eat a bit more';
        }
      }

      case 6:{
        if (bmi >= 25) {
          return 'You have a higher than a normal body weight. Try to exercise more';
        } else if (bmi > 18.5 && height > 125 && weight > 27) {
          return 'Your BMI coefficient is normal. But your weight and height are too much for your age. You should eat Rastishka less !)';
        } else if (bmi > 18.5 && height < 107 && weight < 16) {
          return 'Your BMI coefficient is normal. But your weight and height are too small for your age You should eat Rastishka more !)';
        } else if (bmi > 18.5) {
          return 'You have a normal body weight. Good job!';
        } else {
          return 'You have lower than normal body weight. You can eat a bit more';
        }
      }

      case 7:{
        if (bmi >= 25) {
          return 'You have a higher than a normal body weight. Try to exercise more';
        } else if (bmi > 18.5 && height > 132 && weight > 30) {
          return 'Your BMI coefficient is normal. But your weight and height are too much for your age. You should eat Rastishka less !)';
        } else if (bmi > 18.5 && height < 112 && weight < 18) {
          return 'Your BMI coefficient is normal. But your weight and height are too small for your age You should eat Rastishka more !)';
        } else if (bmi > 18.5) {
          return 'You have a normal body weight. Good job!';
        } else {
          return 'You have lower than normal body weight. You can eat a bit more';
        }
      }

      case 8:{
        if (bmi >= 25) {
          return 'You have a higher than a normal body weight. Try to exercise more';
        } else if (bmi > 18.5 && height > 138 && weight > 34) {
          return 'Your BMI coefficient is normal. But your weight and height are too much for your age. You should eat Rastishka less !)';
        } else if (bmi > 18.5 && height < 117 && weight < 20) {
          return 'Your BMI coefficient is normal. But your weight and height are too small for your age You should eat Rastishka more !)';
        } else if (bmi > 18.5) {
          return 'You have a normal body weight. Good job!';
        } else {
          return 'You have lower than normal body weight. You can eat a bit more';
        }
      }

      case 9:{
        if (bmi >= 25) {
          return 'You have a higher than a normal body weight. Try to exercise more';
        } else if (bmi > 18.5 && height > 144 && weight > 39) {
          return 'Your BMI coefficient is normal. But your weight and height are too much for your age. You should eat Rastishka less !)';
        } else if (bmi > 18.5 && height < 121 && weight < 22) {
          return 'Your BMI coefficient is normal. But your weight and height are too small for your age You should eat Rastishka more !)';
        } else if (bmi > 18.5) {
          return 'You have a normal body weight. Good job!';
        } else {
          return 'You have lower than normal body weight. You can eat a bit more';
        }
      }

      case 10:{
        if (bmi >= 25) {
          return 'You have a higher than a normal body weight. Try to exercise more';
        } else if (bmi > 18.5 && height > 150 && weight > 44) {
          return 'Your BMI coefficient is normal. But your weight and height are too much for your age. You should eat Rastishka less !)';
        } else if (bmi > 18.5 && height < 125 && weight < 24) {
          return 'Your BMI coefficient is normal. But your weight and height are too small for your age You should eat Rastishka more !)';
        } else if (bmi > 18.5) {
          return 'You have a normal body weight. Good job!';
        } else {
          return 'You have lower than normal body weight. You can eat a bit more';
        }
      }

      default :
        {
          if (bmi >= 25) {
            return 'You have a higher than a normal body weight. Try to exercise more';
          } else if (bmi > 18.5) {
            return 'You have a normal body weight. Good job!';
          } else {
            return 'You have lower than normal body weight. You can eat a bit more';
          }
        }

  }
  }
}

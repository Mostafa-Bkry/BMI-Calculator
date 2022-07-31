import 'dart:math';

import 'package:bmi_app/bmi_result_screen.dart';
import 'package:bmi_app/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BMICubit extends Cubit<BMIStates> {
  bool isMale = true;
  String gender = 'Male';
  double height = 120;
  int weight = 60;
  int age = 22;
  double result = 55;

  BMICubit() : super(BMIInitialState());

  static BMICubit get(context) => BlocProvider.of(context);

  void maleOrFemale(String type) {
    if (type == 'm') {
      isMale = true;
      gender = 'Male';
      emit(MaleState());
    } else if (type == 'f') {
      isMale = false;
      gender = 'Female';
      emit(FemaleState());
    }
  }

  void sliderChange(double value) {
    height = value;
    emit(HeightState());
  }

  void weightUp() {
    weight++;
    emit(WeightIncrease());
  }

  void weightDown() {
    weight--;
    emit(WeightDecrease());
  }

  void ageUp() {
    age++;
    emit(AgeIncrease());
  }

  void ageDown() {
    age--;
    emit(AgeDecrease());
  }

  void bmiResult(BuildContext context) {
    result = weight / pow(height / 100, 2);
    emit(BMIResult());
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BMIResultScreen(
          gender: gender,
          result: result,
          age: age,
        ),
      ),
    );
  }
}

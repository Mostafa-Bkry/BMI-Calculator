import 'dart:math';

import 'package:bmi_app/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  double height = 120;
  int weight = 60;
  int age = 22;
  String gender = 'Male';
  double result = 55;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 196, 15, 2),
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                        gender = 'Male';
                      });
                    },
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      color: isMale ? Colors.blue[900] : Colors.black,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.male,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                        gender = 'Female';
                      });
                    },
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      color: !isMale ? Colors.blue[900] : Colors.black,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.female,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Card(
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                color: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 37,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 220,
                      min: 80,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                        //print(value.round());
                      },
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.all(10),
                    color: Colors.black,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '$weight',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              child: const Icon(
                                Icons.remove,
                                size: 30,
                              ),
                              onPressed: () => setState(() {
                                weight--;
                              }),
                              heroTag: 'weight--',
                              mini: true,
                              backgroundColor: Colors.white54,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            FloatingActionButton(
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                              onPressed: () => setState(() {
                                weight++;
                              }),
                              heroTag: 'weight++',
                              mini: true,
                              backgroundColor: Colors.white54,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.all(10),
                    color: Colors.black,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'AGE',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '$age',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              child: const Icon(
                                Icons.remove,
                                size: 30,
                              ),
                              onPressed: () => setState(() {
                                age--;
                              }),
                              heroTag: 'age--',
                              mini: true,
                              backgroundColor: Colors.white54,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            FloatingActionButton(
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                              onPressed: () => setState(() {
                                age++;
                              }),
                              heroTag: 'age++',
                              mini: true,
                              backgroundColor: Colors.white54,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 196, 15, 2),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    result = weight / pow(height / 100, 2);
                    //print(result.round());
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
                  });
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

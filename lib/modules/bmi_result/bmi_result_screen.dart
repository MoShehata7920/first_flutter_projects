import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result ;
  final bool isMAle ;
  final int age ;

  // ignore: use_key_in_widget_constructors
  const BMIResultScreen({
    required this.age,
    required this.isMAle,
    required this.result,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result',
        ) ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMAle ? 'Male' : 'Female' }',
              style: const TextStyle(
                fontSize: 25.0 ,
                fontWeight: FontWeight.bold ,
              ),
            ),
            Text(
              'Result : $result',
              style: const TextStyle(
                fontSize: 25.0 ,
                fontWeight: FontWeight.bold ,
              ),
            ),
            Text(
              'Age : $age',
              style: const TextStyle(
                fontSize: 25.0 ,
                fontWeight: FontWeight.bold ,
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}

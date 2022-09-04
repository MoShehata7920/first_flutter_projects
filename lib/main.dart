import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:projects/layout/home_layout.dart';
import 'package:projects/modules/bmi_result/bmi_result_screen.dart';
import 'package:projects/modules/bmi/bmi_screen.dart';
import 'package:projects/modules/counter/counter_screeen.dart';
import 'package:projects/modules/home/home_screen.dart';
import 'package:projects/modules/login/login_screen.dart';
import 'package:projects/modules/users/users_screen.dart';
import 'package:projects/shared/bloc_observer.dart';
import 'modules/messenger/messenger_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

//Stateless
//Stateful

//class MyPP

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //constructor
  //build

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}

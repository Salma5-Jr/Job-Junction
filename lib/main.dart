// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:junction/SignIn.dart';
import 'package:junction/SignUp.dart';
import 'package:junction/homepage.dart';
import 'secondpage.dart';

void main() {
  runApp(const Job());
}

class Job extends StatelessWidget {
  const Job({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:SecondPage(backgroundColor: Colors.white),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    );
  }
}


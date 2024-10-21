import 'package:flutter/material.dart';
import 'package:junction/navigation.dart';

class JobHomePage extends StatelessWidget {
  const JobHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JOB SEEKERS'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: Navigation(),

      body: Text('AVAILABLE WORKS'),
    );
  }
}
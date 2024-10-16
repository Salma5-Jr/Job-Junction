import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("EMPLOYERS/RECRUITERS"),
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
      ),
    );
  }
}

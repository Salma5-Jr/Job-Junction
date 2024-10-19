import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text("EMPLOYERS/RECRUITERS",  
          style:TextStyle(color: Colors.white,
           fontStyle: FontStyle.normal,
           fontWeight: FontWeight.bold),
        )
        ),
        width: 100,
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
class Division extends StatelessWidget {
  const Division({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

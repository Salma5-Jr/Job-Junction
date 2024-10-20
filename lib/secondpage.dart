
          import 'package:flutter/material.dart';
import 'package:junction/SignIn.dart';
import 'package:junction/seekersSignIn.dart'; 

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.backgroundColor});
  
  final Color backgroundColor; 

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  
  void _onButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInPage(backgroundColor: Colors.yellow)), 
    );
  }
  void _navigateToHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  JobSeekers()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JOB JUNCTION'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            // First Container (RECRUITERS)
            GestureDetector(
              onTap: _onButtonPressed, 
              child: Container(
                color: Colors.green,
                height: 150,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'RECRUITERS',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), 

            // Second Container (JOB SEEKERS)
            GestureDetector(
              onTap: _navigateToHomePage, 
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(),
                ),
                child: const Center(
                  child: Text(
                    'JOB SEEKERS',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

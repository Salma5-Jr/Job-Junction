import 'package:flutter/material.dart';
import 'package:junction/SignIn.dart';

class SignUpPageState extends StatefulWidget {
  const SignUpPageState({super.key});

  @override
  State<SignUpPageState> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPageState> {
  // TextEditingController for handling input text
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Button press action
  void _onButtonPressed() {
    // Implement the button press functionality
    String email = _emailController.text;
    String password = _passwordController.text;

  
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
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'SIGN UP',
              style: TextStyle(
                fontSize:20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            //firstname
            const TextField(
              keyboardType: TextInputType.text,
              decoration:InputDecoration(
                labelText: 'first name',
                border: OutlineInputBorder(),
              ) ,
            ),
            SizedBox(height: 5,),

             //middlename
            const TextField(
              keyboardType: TextInputType.text,
              decoration:InputDecoration(
                labelText: 'middle name',
                border: OutlineInputBorder(),
              ) ,
            ),
            SizedBox(height: 5,),

             //lastname
            const TextField(
              keyboardType: TextInputType.text,
              decoration:InputDecoration(
                labelText: 'last name',
                border: OutlineInputBorder(),
              ) ,
            ),
            SizedBox(height: 5,),

             //contact
            const TextField(
              keyboardType: TextInputType.number,
              decoration:InputDecoration(
                labelText: 'contact',
                border: OutlineInputBorder(),
              ) ,
            ),
            SizedBox(height: 5,),

            // Email field
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 5),

            // Password field
            TextField(
              controller: _passwordController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              obscureText: true, // Password is hidden by default
            ),
            const SizedBox(height: 5),

            //Sign Up button
            ElevatedButton(
              onPressed: _onButtonPressed,
              child: const Text('save'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(50, 50), // Button size
                textStyle: const TextStyle(fontSize: 18), // Text style
              ),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPageState()));
            }, child: Text('save'))
          ],
        ),
      ),
    );
  }
}

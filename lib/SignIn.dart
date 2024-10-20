
import 'package:flutter/material.dart';
import 'package:junction/SignUp.dart';
import 'package:junction/homepage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key, required Color backgroundColor}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // TextEditingController _usernameController= TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Always call super.dispose()
    // _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose(); // This line was missing
  }

  

  // Button press action
  void _onButtonPressed() {
    Navigator.push(context,
     MaterialPageRoute(builder: 
     (context)=>HomePage(backgroundColor: Colors.black,)));
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SIGN IN',
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal),
            ),

            // Email field
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

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
            const SizedBox(height: 15),

            // Sign In button
            ElevatedButton(
              onPressed: _onButtonPressed,
              child: const Text('Sign in'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50), // Button size
                textStyle: const TextStyle(fontSize: 18), // Text style
              ),
            
            ),
            const SizedBox(height: 15),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpPageState()));
            }, child: const Text('SignUp'))
          ],
        ),
      ),
    );
  }
}


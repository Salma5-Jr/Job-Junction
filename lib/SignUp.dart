import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const  SignUpPage({super.key, required Color backgroundColor});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
// TextEditingController _usernameController= TextEditingController();
TextEditingController _emailController= TextEditingController();
TextEditingController _passwordController= TextEditingController();


@override
void dispose(){
  // _usernameController.dispose();
  _emailController.dispose();
  _passwordController.dispose();
}

// button
void _onButtonPressed() {
    print('Button Pressed!');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JOB JUNCTION'),
        backgroundColor: Colors.blue,
      ),

     body:      
      Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
Text('SIGN IN', style: TextStyle(fontSize:32,fontWeight:FontWeight.bold, fontStyle:FontStyle.normal)),

            //email field
TextField(
controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),


//password field
TextField(
  controller: _passwordController,
  keyboardType: TextInputType.text,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: ('Password'),
  ),
 obscureText: true,
),
 
SizedBox(height: 15,),


ElevatedButton(onPressed: _onButtonPressed, 
child: Text('Sign in'),
style: ElevatedButton.styleFrom(
            minimumSize: Size(200, 50), // Button size
            textStyle: TextStyle(fontSize: 18),

),
// backgroundColor:Colors.blue,
)
          ],
        ),

       ),

     
    );
  }
}



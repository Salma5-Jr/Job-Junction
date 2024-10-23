import 'package:flutter/material.dart';

class JobSeekesSignUp extends StatelessWidget {
   JobSeekesSignUp({super.key});

TextEditingController _emailController =TextEditingController();
TextEditingController _passwordController =TextEditingController();

@override
void _onButtonPressed(){
  
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JOB JUNCTION'),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child:Column(
            children: [
        const Text('SIGN UP',style:TextStyle(fontSize:32,
        fontWeight: FontWeight.bold,color: Colors.black)),


//firstname
const TextField(
  keyboardType: TextInputType.text,
  decoration: InputDecoration(
    labelText: 'first name',
    border: OutlineInputBorder(),
  ),
),
const SizedBox(height: 15),

        const TextField(
         keyboardType: TextInputType.text,
         decoration: InputDecoration(
          labelText: 'middle name',
          border: OutlineInputBorder(),
         ),

        ),
           SizedBox(height:15),

             TextField(
         controller:_emailController,
         keyboardType: TextInputType.text,
         decoration: const InputDecoration(
          labelText: 'last name',
          border: OutlineInputBorder(),
         ),

        ),
           SizedBox(height:15),

             const TextField(
         keyboardType: TextInputType.number,
         decoration: InputDecoration(
          labelText: 'contact',
          border: OutlineInputBorder(),
         ),

        ),
           SizedBox(height:15),

             TextField(
         controller:_emailController,
         keyboardType: TextInputType.text,
         decoration: const InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(),
         ),

        ),
  const  SizedBox(height:15),

          
             TextField(
         controller:_passwordController,
         keyboardType: TextInputType.text,
         decoration: const InputDecoration(
          labelText: 'First name',
          border: OutlineInputBorder(),
         ),

        ),
           const SizedBox(height:15),

ElevatedButton(
              onPressed: _onButtonPressed,
              child: const Text('Sign up'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50), // Button size
                textStyle: const TextStyle(fontSize: 18), // Text style
              ),
            
            ),

            ],
          )
        
        
        
        ),
      )
       
 
      
    );
  }
}
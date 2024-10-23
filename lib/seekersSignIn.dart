// import 'package:flutter/material.dart';
// import 'package:junction/jobseekershome.dart';

// class JobSeekers extends StatefulWidget {
//   const JobSeekers({super.key});

//   @override
//   State<JobSeekers> createState() => _JobSeekersState();
// }

// class _JobSeekersState extends State<JobSeekers> {
//   TextEditingController _emailController =TextEditingController();
//   TextEditingController _passwordController =TextEditingController();
  
// @override
//   void dispose() {
//     // Always call super.dispose()
//     // _usernameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose(); // This line was missing
//   }


//    void _onButtonPressed() {
//     Navigator.push(context,
//      MaterialPageRoute(builder: 
//      (context)=>JobHomePage()));


//     }}
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign In'),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),

// body: Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: Center(
//     child: Column(
//       children: [
//         const Text('Sign In',style: TextStyle(color: Colors.black,
//         fontSize:32,
//         fontWeight: FontWeight.bold)),
        
//         TextField(
//           controller: _emailController,
//           keyboardType: TextInputType.emailAddress,
//           decoration: const InputDecoration(
//             labelText: 'email',
//             border: OutlineInputBorder(),
//           ),
          
//         ),
//         const SizedBox(height: 15),
    
//      TextField(
//           controller: _passwordController,
//           keyboardType: TextInputType.emailAddress,
//           decoration: const InputDecoration(
//             labelText: 'password',
//             border: OutlineInputBorder(),
//           ),
          
//         ),
//     SizedBox(height: 20,),
 

//      // Sign In button
//             ElevatedButton(
//               onPressed: _onButtonPressed,
//               child: const Text('Sign in'),
//               style: ElevatedButton.styleFrom(
//                 minimumSize: const Size(200, 50), // Button size
//                 textStyle: const TextStyle(fontSize: 18), // Text style
//               ),
            
//             ),
//       ],
//     ),
//   ),
// ),

      
//     );
//   }
// }






import 'package:flutter/material.dart';
import 'package:junction/jobseekershome.dart';

class JobSeekers extends StatefulWidget {
  const JobSeekers({super.key});

  @override
  State<JobSeekers> createState() => _JobSeekersState();
}

class _JobSeekersState extends State<JobSeekers> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onButtonPressed() {
    if (_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => JobHomePage()),
      );
    } else {
      // Optional: Show a message if fields are empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _passwordController,
                keyboardType: TextInputType.text,
                obscureText: true, // Hides password input
                decoration: const InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _onButtonPressed,
                child: const Text('Sign in'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50), // Button size
                  textStyle: const TextStyle(fontSize: 18), // Text style
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

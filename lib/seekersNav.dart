// import 'package:flutter/material.dart';
// import 'package:junction/jobseekershome.dart';

// class Navigation extends StatelessWidget {
//   const Navigation({super.key});

// @override
//   Widget build(BuildContext context) {
//     return Drawer(
//           child: Column(
//       children: [const SizedBox(height: 80,),
//           TextButton.icon(
//             onPressed: () {
//               Navigator.push(context,MaterialPageRoute(builder: (context)=>JobHomePage()) );   
//             },
//             icon: const Icon(Icons.note),
//             label: const Text("Company picture"),
//           ),

          
//       TextButton.icon(
//             onPressed: () {},
//             icon: const Icon(Icons.book),
//             label: const Text("personal details"),
//           ),TextButton.icon(
//             onPressed: () {},
//             icon: const Icon(Icons.book),
//             label: const Text("Academic Qualification"),
//           ),TextButton.icon(
//             onPressed: () {},
//             icon: const Icon(Icons.book),
//             label: const Text("CV"),
//           )],
//     ),
//         );
//   }
//    JobHomePage() {}
// }



import 'package:flutter/material.dart';
import 'package:junction/jobseekershome.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

@override
  Widget build(BuildContext context) {
    return Drawer(
          child: Column(
      children: [const SizedBox(height: 80,),
          TextButton.icon(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>JobHomePage()) );   
            },
            icon: const Icon(Icons.note),
            label: const Text("Company picture"),
          ),

          
      TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.circle),
            label: const Text("personal details"),
          ),TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.book),
            label: const Text("Academic Qualification"),
          ),TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.book),
            label: const Text("CV"),
          )],
    ),
        );
  }
   JobHomePage() {}
}
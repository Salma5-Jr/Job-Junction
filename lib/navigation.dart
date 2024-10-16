import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// class Navigation extends StatelessWidget {
//   const Navigation({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(color:const Color.fromRGBO(255, 0, 0, 0) ,width: 200,
//        child:Column(
//         children: [const SizedBox(height: 80,),
//         // TextButton.icon(onPressed: (){
//         //   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        
           
//         // },
//         // icon: const Icon(Icons.share),
//         //     label: const Text("share") ),
        
        
//         ]),
//       ),
     
        
//       )
//     ;
//   }
// }



class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(color: Color.fromARGB(255, 0, 0, 0),width: 200,
          child: Column(
      children: [const SizedBox(height: 80,),
          TextButton.icon(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()) );

                
            },
            icon: const Icon(Icons.note),
            label: const Text("About"),
          ),
      TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.delete),
            label: const Text("Trash"),
          ),TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.share),
            label: const Text("share"),
          ),TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            label: const Text("settings"),
          )],
    ),
        ));
  }
  
  HomePage() {}
}

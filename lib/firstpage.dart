import 'package:flutter/material.dart';
import 'package:junction/display.dart';
import 'package:junction/homepage.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('JOB JUNCTION'),),
  
        body:Display(),
            
            

            
          // TextButton.icon(onPressed: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()))},
          //     ),

                  
            ),
          
    );
   
}
  }


// class Display extends StatelessWidget {
//   const Display({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
// children: [
//   TextButton(onPressed: (){
//  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())))
//   },
//  ;
//   Container(
  
//  color:Colors.green,
//   height:300,
//   width:double.infinity,
//    child: Center(child: Text('RECRUITERS', style: TextStyle(color: Colors.white))),
//   ),
//  Container(
// color: Colors.black,
// height: 300,
// width: double.infinity,
// child: const Center(child: Text('JOB SEECKERS',style:TextStyle(color:Colors.white ),),),
//  )
// ],
//       ),
      
//       );
      
   
// }
// }
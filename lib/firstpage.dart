import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('JOB JUNCTION'),
        ),
        body: Display(),
        // body: Center(
        //   child: Container(
        //     child: Text('EMPLOYER'),
        //     style:TextStyle(
        //       color: Colors.black26,
        //       fontSize: 30,
        //       fontWeight: FontWeight.bold,
        //       fontStyle: FontStyle.normal,
        //     )
        //   ),
        // ),
      ),
    );
  }
}

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
children: [
  Container(
 color:Colors.green,
  height:300,
  width:double.infinity,
   child: Center(child: Text('RECRUITERS', style: TextStyle(color: Colors.white))),
  ),
 Container(
color: Colors.black,
height: 300,
width: double.infinity,
child: const Center(child: Text('JOB SEECKERS',style:TextStyle(color:Colors.white ),),),
 )
],
      ),
      
      );
      
   
}
}
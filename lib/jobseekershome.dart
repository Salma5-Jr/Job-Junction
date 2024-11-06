import 'package:flutter/material.dart';
import 'package:junction/navigation.dart';
import 'package:junction/profile.dart';

class JobHomePage extends StatefulWidget {
  const JobHomePage({super.key});

  @override
  State<JobHomePage> createState() => _JobHomePageState();
}

class _JobHomePageState extends State<JobHomePage> {
  int _currentIndex=0;

   final List<Widget> _pages = const [
    Center(child: Text('Home', style: TextStyle(fontSize: 10))),
    Center(child: Text('CV', style: TextStyle(fontSize: 10))),
    Center(child: Text('Edit', style: TextStyle(fontSize: 10))),
     Center(child: Text('Profile', style: TextStyle(fontSize: 10))),
      // Center(child: Text('Silver', style: TextStyle(fontSize: 10))),
  ];
void _onTabTapped(int index){
  setState(() {
    _currentIndex=index;


    if(index==3){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JOB SEEKERS'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: Navigation(),

    
 body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _currentIndex, // Currently selected index
        onTap: _onTabTapped,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.blue,
        backgroundColor: const Color.fromARGB(255, 49, 67, 128), // Handle tap on items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: 'CV',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
          label: "Edit"),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          label: "profile")
         
        ],
      ),

      
      
        
      );
    
  }
}
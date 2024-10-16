import 'package:flutter/material.dart';
import 'package:junction/navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required Color backgroundColor});

 @override
 _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  //List of widgets to display in each tab
  final List<Widget> _pages = const [
    Center(child: Text('Home', style: TextStyle(fontSize: 10))),
    Center(child: Text('Jobs', style: TextStyle(fontSize: 10))),
    Center(child: Text('Profile', style: TextStyle(fontSize: 10))),
     Center(child: Text('Gold', style: TextStyle(fontSize: 10))),
      Center(child: Text('Silver', style: TextStyle(fontSize: 10))),
  ];

 // Function to handle item taps in the BottomNavigationBar
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JOB JUNCTION'),
        actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
         backgroundColor: const Color.fromARGB(255, 60, 103, 143),
      ),
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
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
          label: "Gold"),
          BottomNavigationBarItem(
            icon: Icon(Icons.roundabout_left),
          label: "Silver")
          
        ],
      ),

      drawer: Navigation(),
      );
    
  }

}



































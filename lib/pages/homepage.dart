import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


final List<Widget> _children = [
  Center(child: Text('HOME')),
    Center(child: Text('SEARCH')),
  Center(child: Text('COLLAB')),
  Center(child: Text('JOURNALS')),
  Center(child: Text('MYPROFILE')),

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'collab'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Journals'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'MyProfile'),

        ],
      ),
    );
  }
}





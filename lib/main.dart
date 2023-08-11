import 'package:flutter/material.dart';

import 'ProfilePage.dart';
import 'SavedPage.dart';
import 'SearchPage.dart';


void main(){
  runApp(MaterialApp(
     home: MovieMainPage(),
    debugShowCheckedModeBanner: false,
  ));
}
class MovieMainPage extends StatefulWidget {
  @override
  State<MovieMainPage> createState() => _MovieMainPageState();
}

class _MovieMainPageState extends State<MovieMainPage> {
  List navigateToPages = [
    Center(
      child: Card(
        child: Text('Home Page under development'),
      ),
    ),
    SearchPage(),
    MovieAppSavedPage(),
    Center(
      child: Card(
        child: Text('Downloads Page under development'),
      ),
    ),
    MovieappProfilePage(),
  ];

  void _onTapedFunction(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigateToPages.elementAt(_selectedIndex),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF24223A),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onTapedFunction,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.save), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: 'Downloads'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}


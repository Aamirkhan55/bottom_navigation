import 'package:bottom_navigation/ui/screens/account.dart';
import 'package:bottom_navigation/ui/screens/home.dart';
import 'package:bottom_navigation/ui/screens/location.dart';
import 'package:bottom_navigation/ui/screens/services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        selectedIconTheme: const IconThemeData(color: Colors.teal),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        backgroundColor: Colors.amber[100],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service),
            label: 'Services'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile'
            ),      
        ],
        ),
        body: _switchOnIndex(),
    );
  }

_switchOnIndex(){
  switch(_currentIndex) {
    case 0 : {
      return const Home();
    }
    case 1 : {
      return const Services();
    }
    case 2 : {
      return const Location();
    }
    case 3 : {
      return const Account();
    }
  }
}

}


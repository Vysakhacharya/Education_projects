

import 'package:flutter/material.dart';

void main() {
  runApp(Bottomnavigationbarex2());
}

class Bottomnavigationbarex2 extends StatelessWidget {
  const Bottomnavigationbarex2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bottomnavigationbarex3(),
    );
  }
}

class Bottomnavigationbarex3 extends StatefulWidget {
  const Bottomnavigationbarex3({super.key});

  @override
  State<Bottomnavigationbarex3> createState() => _Bottomnavigationbarex3State();
}

class _Bottomnavigationbarex3State extends State<Bottomnavigationbarex3> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Widget UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget UI'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image1.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Text(
              'Stack Widget UI',
              style: TextStyle(fontSize:30, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
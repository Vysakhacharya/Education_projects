


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView with Stack'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            Stack(
              children: [
                Image.network('https://picsum.photos/200'),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text('Image 1'),
                ),
              ],
            ),
            Stack(
              children: [
                Image.network('https://picsum.photos/200'),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text('Image 2'),
                ),
              ],
            ),
            Stack(
              children: [
                Image.network('https://picsum.photos/200'),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text('Image 3'),
                ),
              ],
            ),
            Stack(
              children: [
                Image.network('https://picsum.photos/200'),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text('Image 4'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
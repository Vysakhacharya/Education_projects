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
          title: Text('Profile'),
        ),
        body: Stack(
          children: [
            // Profile picture
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
            // Profile information
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text('vysakh'),
                  Text('Software Engineer'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
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
          shadowColor: Colors.greenAccent,
          title: Text('GridView with Cards'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            Card(
                margin: EdgeInsets.all(20),
                color: Colors.red,
                child: Center(
                  child: Text('Card 1'),
                )),
            Card(
                margin: EdgeInsets.all(20),
                color: Colors.blueAccent,
                child: Center(
                  child: Text('Card 2'),
                )),
            Card(
                margin: EdgeInsets.all(20),
                color: Colors.green,
                child: Center(
                  child: Text('Card 3'),
                )),
            Card(
                margin: EdgeInsets.all(20),

                color: Colors.yellowAccent,
                child: Center(
                  child: Text('Card 4'),
                )),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KABADDI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class KABADDI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('KABBADDI TEAMS'),
      ),
      body: Card(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('list'),
              subtitle: Text('by winners'),
            ),
            Divider(),
            ExpansionTile(
              title: Text('lis of teams'),
              backgroundColor: Colors.red,
              children: <Widget>[
                ListTile(
                  title: Text('Team 1 : zombize kodungallur'),
                ),
                ListTile(
                  title: Text('Team 2  : tvm'),
                ),
                ListTile(
                  title: Text('Team 3 : maharaja'),
                ),
                ListTile(
                  title: Text('Team 4  : kaitharam Bothers'),
                ),
                ListTile(
                  title: Text('Team 5  : aluva machans'),
                ),
                ListTile(
                  title: Text('Team 6  : kozhikodean'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
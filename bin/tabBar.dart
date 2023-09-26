import 'package:flutter/material.dart';


class TabBarapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:Colors.greenAccent,
            title: Text('TabBar'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
                Tab(text: 'Tab 4'),
                Tab(text: 'Tab 5'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Tab 1 Content')),
              Center(child: Text('Tab 2 Content')),
              Center(child: Text('Tab 3 Content')),
              Center(child: Text('Tab 4 Content')),
              Center(child: Text('Tab 5 Content')),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(TabBarapp());
}
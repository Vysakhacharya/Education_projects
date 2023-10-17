import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _sharedPrefrencesTextValue = TextEditingController();
  String _savedData = "";

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(
      () {
        if (sharedPreferences.getString('data') != null &&
            sharedPreferences.getString('data').isNotEmpty) {
          _savedData = sharedPreferences.getString('data');
        } else {
          _savedData = "Empty";
        }
      },
    );
  }

  _saveData(String message) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("data", message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPreferences'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(13.4),
        alignment: Alignment.topCenter,
        child: ListTile(
          title: TextField(
            controller: _sharedPrefrencesTextValue,
            decoration: InputDecoration(labelText: 'Write Something'),
          ),
          subtitle: TextButton(
            onPressed: () {
              _saveData(_sharedPrefrencesTextValue.text);
            },
            child: Column(
              children: <Widget>[
                Text('Save Data'),
                Padding(padding: EdgeInsets.all(14.5)),
                Text(_savedData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Home(),
          
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// var to store
// onChanged callback
  String title;
  String text = "No Value Entered";

  void _setText() {
    setState(() {
      text = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(labelText: 'Title'),

              onChanged: (value) => title = value,

            ),
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: _setText,
            child: Text('Submit'),
            style: ElevatedButton.styleFrom(elevation: 8),
          ),
          SizedBox(
            height: 20,
          ),
          Text(text),
          // changes in text
          // are shown here
        ],
      ),
    );
  }
}

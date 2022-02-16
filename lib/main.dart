import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool _messageSelected = true;

  void appBarChange() {
    setState(() {
      _messageSelected = !_messageSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar()),
    );
  }
}

Widget _defaultBar(BuildContext context, Function changeAppBar) {
  return AppBar(
    titleSpacing: 0,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search, color: Theme.of(context).iconTheme.color),
        onPressed: () {
          changeAppBar();
        },
      ),
    ],
  );
}

Widget _editingBar(BuildContext context, Function changeAppBar) {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.comment),
      color: Theme.of(context).iconTheme.color,
      onPressed: () {
        changeAppBar();
      },
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.check),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.event),
      ),
    ],
  );
}

import 'package:flutter/material.dart';

import 'CryptoList.dart';

void main() => runApp(CCTrackerApp());

class CCTrackerApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Awesome Tracker",
      theme: ThemeData(primaryColor: Colors.blue),
      home: CryptoList()
    );
  }
}
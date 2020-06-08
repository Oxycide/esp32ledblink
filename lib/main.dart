
import 'package:flutter/material.dart';

import './mainPage.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainPage(),
    );
  }
}

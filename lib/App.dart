import 'package:flutter/material.dart';

import 'Home.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}
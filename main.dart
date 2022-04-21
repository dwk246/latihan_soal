import 'package:flutter/material.dart';

import 'view/homepage/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xFF31a892),
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

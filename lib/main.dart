import 'package:flutter/material.dart';
import 'package:ui_food_menu/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Food Menu"),
            backgroundColor: Colors.red,
          ),
          body: Menu(),
        ));
  }
}

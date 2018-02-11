import 'package:adm_meetup5/hello_stateful.dart';
import 'package:adm_meetup5/hello_stateless.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HelloStateful(),
    );
  }
}

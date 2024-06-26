import 'package:flutter/material.dart';
import 'package:flutter_toku/screens/login.dart';

void main(List<String> args) {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: LogIn());
  }
}

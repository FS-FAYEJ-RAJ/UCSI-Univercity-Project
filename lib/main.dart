import 'package:flutter/material.dart';
import 'package:nfcapplication/screen/admin_login_screen.dart';
import 'package:nfcapplication/screen/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blueGrey
      ),
      home: WellComeScreen(),
    );
  }
}


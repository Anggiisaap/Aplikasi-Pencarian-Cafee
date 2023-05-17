import 'package:flutter/material.dart';
import 'package:coba_utsa/post/home_page.dart';
import 'package:coba_utsa/post/login.dart';
import 'package:coba_utsa/detail/detaill.dart';
import 'package:coba_utsa/post/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginGooglePage(),
    );
  }
}

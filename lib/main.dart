
import 'package:e_commerce_app/Bottom%20Navbar/bottomNavbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  const BottomNavBar(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       // primarySwatch: Colors.white,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black
        )
      ),
    );
  }
}
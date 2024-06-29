import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Providers/cart_provider.dart';
import 'package:e_commerce_app/Providers/fav_provider.dart';
import 'package:e_commerce_app/Providers/theme_provider.dart';
import 'package:e_commerce_app/Screens/Signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => FavProvider()),
      ChangeNotifierProvider(create: (_) => CartProvider()),
      ChangeNotifierProvider(create: (_) => ThemeProvider())
    ],
    child: Builder(builder: (BuildContext context){
      final themeChanger = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: const SignUpScreen(),
      themeMode: themeChanger.themeMode ,
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.ThemeColor,
          centerTitle: true
        ),
        iconTheme: IconThemeData(
          color: Colors.blueGrey
        )
        
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      //  primarySwatch: Colors.orange,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.BlueGrey,
          centerTitle: true
        ),
        iconTheme: IconThemeData(
          color: Colors.blueGrey
        )
      ),
    );
    }) );
  }
}
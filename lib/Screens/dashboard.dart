import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Providers/theme_provider.dart';
import 'package:e_commerce_app/Widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeProvider>(context);
    return Scaffold(
     appBar: AppBar(
      title: Text('Dashboard Screen'),
     ),
     body:  Column(
        children: [
          RadioListTile(
            title: Text('Light Mode'),
            value:  ThemeMode.light, 
          groupValue:  themeChanger.themeMode ,
           onChanged:themeChanger.setTheme 
           ),

           RadioListTile(
            title: Text('Dark Mode'),
            value:  ThemeMode.dark, 
          groupValue:  themeChanger.themeMode ,
           onChanged:themeChanger.setTheme 
           ),

           RadioListTile(
            title: Text('System Mode'),
            value:  ThemeMode.system, 
          groupValue:  themeChanger.themeMode ,
           onChanged:themeChanger.setTheme 
           ),
        ],
      ),
      
    );
  }
}
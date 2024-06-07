import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;

  const CustomSearchBar({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: AppColor.ThemeColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
         /* BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),*/
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

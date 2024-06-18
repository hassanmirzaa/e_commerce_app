import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:flutter/material.dart';

class DiscountField extends StatelessWidget {
  final String hintText;
  const DiscountField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      height: Height * 0.06,
      width: Width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColor.ThemeColor,
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            suffixIcon: Padding(
              padding: const EdgeInsets.all( 10),
              child: InkWell(
                  child: Text(
                'Apply',
                style: TextStyle(color: AppColor.OrangeColor,fontWeight: FontWeight.bold,fontSize: 23),
              )),
            ),
          ),
        ),
      ),
    );
  }
}

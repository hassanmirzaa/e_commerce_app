import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColor.ThemeColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.grid_view_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColor.ThemeColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.notifications_on_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
  }
}
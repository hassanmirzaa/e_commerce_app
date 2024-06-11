import 'package:flutter/material.dart';

class HeadingSeeall extends StatelessWidget {
  const HeadingSeeall({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Special For You',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      )
                    ]);
  }
}
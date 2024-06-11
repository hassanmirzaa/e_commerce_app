import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Screens/Homepage/homepage.dart';
import 'package:flutter/material.dart';

class CatagoriesList extends StatelessWidget {
  const CatagoriesList({super.key});

  @override
  Widget build(BuildContext context) {
     // ignore: non_constant_identifier_names
     final Height = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    final Width = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        height: Height * 0.15,
                        width: Width*0.44,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: catagories.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: Height * 0.2,
                                width: Width * 0.1,
                                decoration: BoxDecoration(
                                  color: AppColor.ThemeColor,
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ignore: sort_child_properties_last
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                          catagories[index]['image'],
                                        ),
                                      ),
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    ),
                                    const SizedBox(
                                        height: 8), // Add some spacing between CircleAvatar and Text
                                    Text(catagories[index]['name']),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
  }
}
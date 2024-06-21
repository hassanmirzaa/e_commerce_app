import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Constants/product_list.dart';
import 'package:e_commerce_app/Screens/Homepage/homepage.dart';
import 'package:e_commerce_app/Screens/Homepage/product_description.dart';
import 'package:e_commerce_app/Screens/favScreen.dart';
import 'package:flutter/material.dart';

class GridViewProducts extends StatefulWidget {
  const GridViewProducts({super.key});

  @override
  State<GridViewProducts> createState() => _GridViewProductsState();
}

class _GridViewProductsState extends State<GridViewProducts> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final Height = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    final Width = MediaQuery.of(context).size.height;
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        childAspectRatio:
            0.8, // Adjust the aspect ratio of the grid cells if needed
        crossAxisSpacing: 15.0, // Spacing between columns
        mainAxisSpacing: 15.0, // Spacing between rows
      ),
      itemCount: info.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDescriptionScreen(
                    name: info[index]['name'],
                    picture: info[index]['picture'],
                    price: info[index]['price'],
                    text: info[index]['text'],
                    index: index,
                  ),
                ));
          },
          child: Container(
           // height: Height*0.2,
            // ignore: sort_child_properties_last
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: Height * 0.16,
                      width: Width,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image.asset(
                          info[index]['picture'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            info[index]['wishList'] = !info[index]['wishList'];
                            if (info[index]['wishList']) {
                              fav.add(info[index]);
                              ScaffoldMessenger.of(context).showSnackBar(
                                 SnackBar(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                   ),
                                   behavior: SnackBarBehavior.floating,
                                   elevation: 10,
                                   margin: const EdgeInsets.all(10),
                                  content: const Text('Successfully added to Favourites!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                  ),),
                                  backgroundColor: AppColor.OrangeColor,
                                  duration: const Duration(seconds: 2),
                                  )
                              );
                            } else {
                              fav.remove(info[index]);
                            }
                          });
                        },
                        child: Container(
                          height: Height * 0.05,
                          width: Width * 0.05,
                          decoration: BoxDecoration(
                            
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                topRight: Radius.circular(20)),
                            color: AppColor.OrangeColor,
                          ),
                          child: Icon(
                            info[index]['wishList']
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: Height * 0.09,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        info[index]['name'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        // ignore: prefer_adjacent_string_concatenation
                        '\$ ${info[index]['price']}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: AppColor.ThemeColor,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Colors.black12)
            ),
          ),
        );
      },
    );
  }
}

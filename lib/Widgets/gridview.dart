import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Providers/fav_provider.dart';
import 'package:e_commerce_app/Screens/Homepage/product_description.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridViewProducts extends StatefulWidget {
  const GridViewProducts({super.key});

  @override
  State<GridViewProducts> createState() => _GridViewProductsState();
}

class _GridViewProductsState extends State<GridViewProducts> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Consumer<FavProvider>(
      builder: (context, FavProviderValue, child) => GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          childAspectRatio:
              0.8, // Adjust the aspect ratio of the grid cells if needed
          crossAxisSpacing: 15.0, // Spacing between columns
          mainAxisSpacing: 15.0, // Spacing between rows
        ),
        itemCount: FavProviderValue.info.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDescriptionScreen(
                    name: FavProviderValue.info[index]['name'],
                    picture: FavProviderValue.info[index]['picture'],
                    price: FavProviderValue.info[index]['price'],
                    text: FavProviderValue.info[index]['text'],
                    index: index,
                  ),
                ),
              );
            },
            child: Container(
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
                            FavProviderValue.info[index]['picture'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: InkWell(
                          onTap: () {
                            FavProviderValue.onPress(index);
                          },
                          child: Container(
                            height: Height * 0.05,
                            width: Width * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                topRight: Radius.circular(20),
                              ),
                              color: AppColor.OrangeColor,
                            ),
                            child: Icon(
                              FavProviderValue.info[index]['wishList']
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
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          FavProviderValue.info[index]['name'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$ ${FavProviderValue.info[index]['price']}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: AppColor.ThemeColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black12),
              ),
            ),
          );
        },
      ),
    );
  }
}

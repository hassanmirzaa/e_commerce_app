import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Providers/fav_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Consumer<FavProvider>(
      builder: (context, FavProviderValue, child) => Scaffold(
         backgroundColor: AppColor.ThemeColor,
        appBar: AppBar(
          title: const Text('Favourite Page '),
        ),
        body: FavProviderValue.fav.isEmpty
            ? const Center(
                child: Text('No items Added!'),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: FavProviderValue.fav.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: Height * 0.18,
                            width: Width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.ThemeColor,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: Width * 0.03,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      FavProviderValue.fav[index]['picture'],
                                      fit: BoxFit.cover,
                                      height: Height * 0.18,
                                      width: Width * 0.3,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Width * 0.05,
                                ),
                                Container(
                                  width: Width * 0.4,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FavProviderValue.fav[index]['name'],
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        '\$ ${FavProviderValue.fav[index]['price']}',
                                        style: TextStyle(fontSize: 25),
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    FavProviderValue.removefavList(FavProviderValue
                                        .info
                                        .indexWhere((item) =>
                                            item['name'] ==
                                            FavProviderValue.fav[index]
                                                ['name']));
                                  },
                                  icon: const Icon(Icons.favorite, size: 32),
                                  color: AppColor.OrangeColor,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
      ),
    );
  }
}

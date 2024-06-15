import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Screens/Homepage/homepage.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Favourite Page '),
      ),
      body: fav.isEmpty
          ? const Center(
              child: Text('No items Added!'),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: fav.length,
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
                                    fav[index]['picture'],
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      fav[index]['name'],
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '\$ ${fav[index]['price']}',
                                      style: TextStyle(fontSize: 25),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    fav.remove(fav[index]);
                                  });
                                },
                                icon: const Icon(Icons.favorite,size: 32),
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
    );
  }
}

List<Map<String, dynamic>> fav = [];
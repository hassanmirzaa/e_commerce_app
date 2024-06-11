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
      appBar: AppBar(
        title: Text("Favorites"),
      ),
      body: fav.isEmpty
          ? const Center(
              child: Text(
                "No favorite items yet!",
                style: TextStyle(fontSize: 18),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: fav.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 12),
                        child: Container(
                          height: Height * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 2),
                                blurRadius: 3
                              )
                            ]
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    fav[index]['picture'],
                                    height: Height * 0.18,
                                    width: Width * 0.3,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Row(
                                children: [
                                  Container(
                                    width: Width*0.4,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          fav[index]['name'],
                                          style: const TextStyle(
                                              color: Colors.black, fontSize: 22),
                                        ),
                                        Text(
                                          "Rs " + "${fav[index]['price']}",
                                          style: const TextStyle(
                                              color: Colors.black, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        fav.remove(fav[index]);
                                      });
                                       
                                       
                                    },
                                    child: const CircleAvatar(
                                      
                                        child: Icon(
                                          
                                               Icons.favorite
                                              ),
                                      ),
                                  )
                              
                                  
                                ],
                              ),
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

List<Map<String, dynamic>> fav = [];
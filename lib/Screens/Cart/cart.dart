import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Cart Page '),
      ),
      body: cartList.isEmpty
          ? const Center(
              child: Text('Cart is Empty'),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartList.length,
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
                                    cartList[index]['picture'],
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
                                      cartList[index]['name'],
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '\$ ' +
                                          cartList[index]['price'].toString(),
                                      style: TextStyle(fontSize: 25),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    cartList.remove(cartList[index]);
                                  });
                                },
                                icon: Icon(Icons.delete),
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

List<Map<String, dynamic>> cartList = [];

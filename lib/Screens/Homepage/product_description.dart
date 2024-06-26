import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Providers/cart_provider.dart';
import 'package:e_commerce_app/Providers/fav_provider.dart';
import 'package:e_commerce_app/Screens/Cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDescriptionScreen extends StatefulWidget {
  final String name;
  final String picture;
  final int price;
  final String text;
  final int index;

  const ProductDescriptionScreen(
      {super.key,
      required this.name,
      required this.picture,
      required this.price,
      required this.text,
      required this.index});

  @override
  State<ProductDescriptionScreen> createState() =>
      _ProductDescriptionScreenState();
}

class _ProductDescriptionScreenState extends State<ProductDescriptionScreen> {
  int x = 1;

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Consumer<FavProvider>(
        builder: (context, FavProviderValue, child) =>  SafeArea(
          child: Stack(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  //picture
        
                  //SizedBox(height: Height*0.02,),
        
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: AppColor.ThemeColor),
                        height: Height * 0.5,
                        width: Width,
                        child: Image.asset(
                          widget.picture,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(20),
                                right: Radius.circular(20)),
                            color: AppColor.ThemeColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Name
                              Text(
                                FavProviderValue.info[widget.index]['name'],
                                style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
        
                              //Price
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // SizedBox(width: Width*0.02,),
                                  Text(
                                    '\$ ${FavProviderValue.info[widget.index]['price']}',
                                    style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Height * 0.02,
                              ),
        
                              //Description
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // SizedBox(width: Width*0.02,),
                                  Text(
                                    "Description",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
        
                              Text(
                                widget.text,
                                style: const TextStyle(
                                  fontSize: 15,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height: Height * 0.15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: Height * 0.02,
                        left: Width * 0.04,
                        right: Width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.5), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 7, // Blur radius
                                  offset: const Offset(0, 1), // Shadow position
                                ),
                              ],
                            ),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              child:
                                  Icon(Icons.arrow_back_ios, color: Colors.black),
                            ),
                          ),
                        ),
                        Wrap(
                          children: [
                            InkWell(
                              onTap: () {
                               
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.5), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 7, // Blur radius
                                      offset: const Offset(0, 1), // Shadow position
                                    ),
                                  ],
                                ),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.share, color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Width * 0.05,
                            ),
                            InkWell(
                onTap: () {
                  FavProviderValue.onPress(widget.index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                              FavProviderValue.info[widget.index]['wishList']
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: Colors.black,
                            ),
                  ),
                ),
              ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Height * 0.76,
                  ),
                  Container(
                      height: Height * 0.1,
                      width: Width * 0.87,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              color: Colors.black,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.black,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                color:Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Wrap(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          x--;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                      )),
                                  Text(
                                    x.toString(),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 30),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          x++;
                                        });
                                      },
                                      icon: const Icon(Icons.add, color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                          Consumer<CartProvider>(
                            builder: (context, CartProviderValue, child) =>  InkWell(
                              onTap: () {
                                
                                  
                                    FavProviderValue.info[widget.index]['cart'] += x;
                                    CartProviderValue.cartList.add(FavProviderValue.info[widget.index]);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        behavior: SnackBarBehavior.floating,
                                        elevation: 10,
                                        margin: const EdgeInsets.all(10),
                                        content: const Text(
                                          'Added to Cart!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        backgroundColor: AppColor.OrangeColor,
                                        duration: const Duration(seconds: 2),
                                      ),
                                    );
                                  /*else {
                                    info[widget.index]['cart'] = 0;
                                    cartList.remove(info[widget.index]);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        behavior: SnackBarBehavior.floating,
                                        elevation: 10,
                                        margin: const EdgeInsets.all(10),
                                        content: const Text(
                                          'Removed from Cart!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        backgroundColor: AppColor.OrangeColor,
                                        duration: const Duration(seconds: 2),
                                      ),
                                    );
                                  }*/                                                                                         
                                
                              },
                              child: Container(
                                height: Height * 0.06,
                                width: Width * 0.4,
                                decoration: BoxDecoration(
                                  color: AppColor.OrangeColor,
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(40)),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Add to Cart',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 20),
                                )),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

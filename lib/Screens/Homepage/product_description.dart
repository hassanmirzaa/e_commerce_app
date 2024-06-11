import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Screens/Homepage/homepage.dart';
import 'package:e_commerce_app/Screens/Cart/cart.dart';
import 'package:e_commerce_app/Screens/favScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: SafeArea(
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
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20),
                              right: Radius.circular(20)),
                          color: AppColor.ThemeColor),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Column(
                          children: [
                            //Name
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // SizedBox(width: Width*0.02,),
                                Text(
                                  widget.name,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),

                            //Price
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // SizedBox(width: Width*0.02,),
                                Text(
                                  widget.price.toString(),
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
                                offset: Offset(0, 1), // Shadow position
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            child:
                                Icon(Icons.arrow_back_ios, color: Colors.black),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      Wrap(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                info[widget.index]['wishList'] =
                                    !info[widget.index]['wishList'];
                                if (info[widget.index]['wishList']) {
                                  fav.add(info[widget.index]);
                                } else {
                                  fav.remove(info[widget.index]);
                                }
                              });
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
                                    offset: Offset(0, 1), // Shadow position
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                                child: Icon(Icons.share, color: Colors.black),
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Width * 0.05,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.5), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 7, // Blur radius
                                  offset: Offset(0, 1), // Shadow position
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                              ),
                              backgroundColor: Colors.white,
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
                    decoration: BoxDecoration(
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
                          child: Wrap(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      x--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                              Text(
                                x.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      x++;
                                    });
                                  },
                                  icon: Icon(Icons.add, color: Colors.white)),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                               info[widget.index]['cart'] = info[widget.index]['cart'] == 0 ? 1 : 0;

                                if(info[widget.index]['cart'] ==0){
                                  cartList.add(info[widget.index]);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                 SnackBar(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                   ),
                                   behavior: SnackBarBehavior.floating,
                                   elevation: 10,
                                   margin: const EdgeInsets.all(10),
                                  content: const Text('Added to Cart!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                  ),),
                                  backgroundColor: AppColor.OrangeColor,
                                  duration: const Duration(seconds: 2),
                                  )
                              );
                                }
                            });
                          },
                          child: Container(
                            height: Height * 0.06,
                            width: Width * 0.4,
                            decoration: BoxDecoration(
                              color: AppColor.OrangeColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Center(
                                child: Text(
                              'Add to Cart',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}

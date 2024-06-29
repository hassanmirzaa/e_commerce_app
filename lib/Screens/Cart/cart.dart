import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Providers/cart_provider.dart';
import 'package:e_commerce_app/Providers/fav_provider.dart';
import 'package:e_commerce_app/Screens/Homepage/homepage.dart';
import 'package:e_commerce_app/Widgets/checkoutbutton.dart';
import 'package:e_commerce_app/Widgets/discount_code_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int y =1;
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    
    return Consumer<CartProvider>(
        builder: (context, CartProviderValue, child) => Scaffold(
      backgroundColor: AppColor.ThemeColor,
      appBar: AppBar(
        title: const Text('Cart Page '),
      ),
      body:  Stack(
          children: [
            
            CartProviderValue.cartList.isEmpty
              ? const Center(
                  child: Text('Cart is Empty'),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: CartProviderValue.cartList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: Height * 0.22,
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
                                        CartProviderValue.cartList[index]['picture'],
                                        fit: BoxFit.cover,
                                        height: Height * 0.18,
                                        width: Width * 0.3,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Width * 0.02,
                                  ),
                                  Container(
                                    width: Width * 0.4,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          CartProviderValue.cartList[index]['name'],
                                          style: const TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          '\$ ' +
                                              CartProviderValue.cartList[index]['price'].toString(),
                                          style: TextStyle(fontSize: 25),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          CartProviderValue.deleteItem(index);
                                        },
                                        icon: Icon(Icons.delete,size: 32,),
                                        color: AppColor.OrangeColor,
                                      ),
        
                                      Container(
                                        width: Width*0.1,
                                        height: Height*0.14,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                        color: AppColor.ThemeColor,
                                        ),
                                        child: Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            IconButton(onPressed: (){
                                              CartProviderValue.addItem(index);
                                            }, icon: Icon(Icons.add)),
        
                                            Text(
                                              CartProviderValue.cartList[index]['cart'].toString(),
                                              style: TextStyle(
                                                fontSize: 16
                                              ),
                                              ),
        
                                              IconButton(onPressed: (){
                                                CartProviderValue.subtractItem(index);
                                              }, icon: Icon(Icons.remove)),
        
                                          ],
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
                    SizedBox(
                      height: Height*0.25,
                    )
                  ],
                ),
                Positioned(
              bottom: 0,right: 0,left: 0,
              child: Container(
                height: Height*0.25,
                decoration: BoxDecoration(
                color: AppColor.ThemeColor,
                borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
                ),
                child: Column(
                  children: [
                    SizedBox(height: Height*0.02,),
                    DiscountField(hintText: 'Enter Discount Code',),
                    Divider(
                      endIndent: 20,indent: 20,
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(CartProviderValue.calculateTotalPrice().toString(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Height*0.02,
                    ),
                    CheckoutButton(
                      
                    )
                  ],
                ),
              )
              ),
          ],
          
        ),
      ),
    );
  }
}



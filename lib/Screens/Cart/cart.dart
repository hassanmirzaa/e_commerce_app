import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Screens/Homepage/homepage.dart';
import 'package:e_commerce_app/Widgets/checkoutbutton.dart';
import 'package:e_commerce_app/Widgets/discount_code_field.dart';
import 'package:flutter/material.dart';

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
    double calculateTotalPrice() {
      double total = 0.0;
      for (var item in cartList) {
        total += item['price']*item['cart'];
      }
      return total;
    }
    return Scaffold(
      backgroundColor: AppColor.ThemeColor,
      appBar: AppBar(
        title: const Text('Cart Page '),
      ),
      body: Stack(
        children: [
          
          cartList.isEmpty
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
                            height: Height * 0.22,
                            width: Width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
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
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          cartList[index]['cart'] ==0;
                                          cartList.remove(cartList[index]);
                                        });
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
                                            setState(() {
                                             cartList[index]['cart']++;
                                            });
                                          }, icon: Icon(Icons.add)),

                                          Text(
                                            cartList[index]['cart'].toString(),
                                            style: TextStyle(
                                              fontSize: 16
                                            ),
                                            ),

                                            IconButton(onPressed: (){
                                              setState(() {
                                              cartList[index]['cart']--;
                                             if(cartList[index]['cart']==0){
                                              cartList.remove(cartList[index]);
                                             }
                                            });
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
              color: Colors.white,
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
                        child: Text(calculateTotalPrice().toString(),
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
    );
  }
}

List<Map<String, dynamic>> cartList = [];

import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Providers/cart_provider.dart';
import 'package:e_commerce_app/Screens/Cart/ThankyouPage.dart';
import 'package:e_commerce_app/Screens/Cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({super.key});

  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Consumer<CartProvider>(
      builder: (context, CartProviderValue, child) =>  InkWell(
        onTap: () {
          CartProviderValue.clearCart();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ThankyouPage(),));
        },
        child: Container(
          height: Height * 0.07,
          width: Width * 0.95,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColor.OrangeColor),
          child: const Center(
            child: Text(
              'Checkout',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}

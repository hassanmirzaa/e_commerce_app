import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Screens/Cart/cart.dart';
import 'package:e_commerce_app/Screens/dashboard.dart';
import 'package:e_commerce_app/Screens/Homepage/homepage.dart';
import 'package:e_commerce_app/Screens/profie.dart';
import 'package:e_commerce_app/Screens/favScreen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPage = 2; // Default to the homepage index
  final List<Widget> screens = const [
  DashboardScreen(),  // Index 0 - Dashboard
  FavScreen(),  // Index 1 - Favorite
  Homepage(),  // Index 2 - Home (center button)
  CartScreen(),  // Index 3 - Cart
  ProfileScreen()  // Index 4 - Profile
];


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.OrangeColor,
        shape: CircleBorder(),
        onPressed: () {
          setState(() {
            currentPage = 2;
           // Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
          });
        },
        child: Icon(Icons.home, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColor.ThemeColor,
        height: height * 0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              icon: Icon(
                Icons.grid_view_outlined,
                size: 32,
                color: currentPage == 0 ? AppColor.OrangeColor : Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: Icon(
                Icons.favorite_border,
                size: 32,
                color: currentPage == 1 ? AppColor.OrangeColor : Colors.blueGrey,
              ),
            ),
            SizedBox(width: width * 0.1),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 32,
                color: currentPage == 3 ? AppColor.OrangeColor : Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
              icon: Icon(
                Icons.person_2_outlined,
                size: 32,
                color: currentPage == 4 ? AppColor.OrangeColor : Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
      body: screens[currentPage],
    );
  }
}

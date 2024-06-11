import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Widgets/CstomAppbar.dart';
import 'package:e_commerce_app/Widgets/catagories.dart';
import 'package:e_commerce_app/Widgets/gridview.dart';
import 'package:e_commerce_app/Widgets/headingSeeAll.dart';
import 'package:e_commerce_app/Widgets/imageSlide.dart';
import 'package:e_commerce_app/Widgets/searchbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentSlider =0;
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: Height * 0.01),

                const CustomAppBar(),
                SizedBox(height: Height * 0.02),

                const CustomSearchBar(hintText: 'Search Product'),

                SizedBox(height: Height * 0.02),

                ImageSlider(onChange: (value){
                  setState(() {
                    currentSlider =value;
                  });
                }, currentSlide: currentSlider),

                SizedBox(height: Height * 0.02),

                const CatagoriesList(),

                SizedBox(height: Height * 0.02),
                
                const HeadingSeeall(),

                SizedBox(height: Height * 0.02),

                const GridViewProducts()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> catagories = [
  {
    'image': 'Images/all.jpeg',
    'name': 'All'
  },
  {
    'image': 'Images/clothing.jpeg',
    'name': 'Clothing'
  },
  {
    'image': 'Images/watch2.jpg',
    'name': 'Watches'
  },
  {
    'image': 'Images/shoes2.jpg',
    'name': 'Shoes'
  },
  {
    'image': 'Images/mobile2.jpeg',
    'name': 'Mobiles'
  },
  {
    'image': 'Images/headphone2.jpeg',
    'name': 'Headphones'
  },
  {
    'image': 'Images/chair.jpeg',
    'name': 'Chairs'
  },
];

List<Map<String, dynamic>> info = [
  {
    'name': 'Wireless Headphones',
    'picture': 'Images/airbuds.jpg',
    'price': 4500,
    'text':
        'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
    
    'wishList': false,
    'cart': 0
  },
  {
    'name': 'Formal Shirt',
    'picture': 'Images/shirt.jpg',
    'price': 2000,
    'text':'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
    'wishList': false,
    'cart': 0
  },
  {
    'name': 'Hand watch',
    'picture': 'Images/watch.jpg',
    'price': 3000,
    'text':
        'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
    'wishList': false,
    'cart': 0
  },
  {
    'name': 'Denim Jeans',
    'picture': 'Images/jeans.jpg',
    'price': 4500,
    'text':
        'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
    'wishList': false,
    'cart': 0
  },
  {
    'name': 'Chair',
    'picture': 'Images/chair.jpeg',
    'price': 6000,
    'text':
        'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
    'wishList': false,
    'cart': 0
  },
  {
    'name': 'Headphones',
    'picture': 'Images/headphone2.jpeg',
    'price': 5000,
    'text':
        'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
    'wishList': false,
    'cart': 0
  },
  {
    'name': 'Samsung Z Flip',
    'picture': 'Images/mobile.jpeg',
    'price': 180000,
    'text':
        'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
    'wishList': false,
    'cart': 0
  },
  {
    'name': 'Brown Shoes',
    'picture': 'Images/shoes.jpg',
    'price': 4500,
    'text':
        'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
    'wishList': false,
    'cart': 0
  },
];


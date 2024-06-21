import 'package:e_commerce_app/Widgets/CstomAppbar.dart';
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
      
      body:
      
       SafeArea(
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

              //  const CatagoriesList(),

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




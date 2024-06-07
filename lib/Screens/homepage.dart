import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:e_commerce_app/Screens/dashboard.dart';
import 'package:e_commerce_app/Screens/searchbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
     final Height = MediaQuery.of(context).size.height;
     final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: Height*0.01,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
        
                  },
                  child: Container(
                    
                    decoration: BoxDecoration(
                      color: AppColor.ThemeColor,
                     
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.space_dashboard_outlined,color: Colors.black,),
                    ),
                  ),
                ),
        
                InkWell(
                  onTap: (){
                   
                  },
                  child: Container(
                    
                    decoration: BoxDecoration(
                      color: AppColor.ThemeColor,
                     
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.notifications_on_outlined,color: Colors.black,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Height*0.02,),
            CustomSearchBar(hintText: 'Search Product'),

            SizedBox(
              height: Height*0.02,
            ),

            //PageView
            Container(
              height: Height*0.22,
              width: Width*0.9,
              child:  ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    child: Image.asset(
      'Images/sale.jpg',
      fit: BoxFit.fill,
    ),
  ),
              decoration: BoxDecoration(
                      color: AppColor.ThemeColor,
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                    ),
            ),

            SizedBox(
              height: Height*0.02,
            ),

           SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      SizedBox(
        height: Height * 0.15, 
        width: Width, 
        child: ListView.builder(
          scrollDirection: Axis.horizontal, 
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: Height * 0.2,
                width: Width * 0.16, 
                decoration: BoxDecoration(
                  color: AppColor.ThemeColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                // ignore: prefer_const_constructors
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                     child: Image(image: AssetImage('Images/headphone.jpg',),fit: BoxFit.fill,),
                      radius: 25,
                    ),
                    SizedBox(height: 8), // Add some spacing between CircleAvatar and Text
                    Text('All'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  ),
),

          SizedBox(height: Height*0.02,),

     const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

       children:[
         Text(
          'Special For You',
           style: TextStyle(
           fontSize: 30
         ),
      ),
     Text(
      'See all',
      style: TextStyle(
        color: Colors.black54,
        fontSize: 15
      ),
     )

     ] ),

     SizedBox(
      height: Height*0.02,
     ),
     GridView.builder(
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // Number of columns in the grid
    childAspectRatio: 0.8, // Adjust the aspect ratio of the grid cells if needed
    crossAxisSpacing: 15.0, // Spacing between columns
    mainAxisSpacing: 15.0, // Spacing between rows
  ),
  itemCount: 8,
  itemBuilder: (context, index) {
    return Container(
      child: Column(
        children: [
          Container(
            height: Height*0.16,
            child: Image.asset(info[index]['picture'],fit: BoxFit.fill,),
            decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                    ),
          ),
          Container(
            height: Height*0.096,
            decoration: BoxDecoration(
                     // color: Colors.amber,
                     
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            info[index]['name'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        ),
                          Text(
                          "Rs "+ "${info[index]['price']}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                      ],
                    ),
          ),

        ],
      ),
      decoration: BoxDecoration(
                      color: AppColor.ThemeColor,
                     
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
    );
  },
)


            
          ],
        ),),
             ),
      ),
    );
  }
}
List <Map<String, dynamic>> info = [
   {
    'name': 'Wireless Headphones',
    'picture': 'Images/airbuds.jpg',
    'price': 4500,
    'text' : 'BMW is an all electric compact sedan produced by BMW',
    'wishList' : false,
    'cart' : 0
  },
   {
    'name': 'Formal Shirt',
    'picture': 'Images/shirt.jpg',
    'price': 2000,
    'text' : 'Porsche is an all electric compact sedan produced by BMW',
    'wishList' : false,
    'cart' : 0
  },
  {
    'name': 'Hand watch',
    'picture': 'Images/watch.jpg',
    'price': 3000,
    'text' : 'Tesla is an all electric compact sedan produced by BMW',
    'wishList' : false,
    'cart' : 0
  },
  {
    'name': 'Denim Jeans',
    'picture': 'Images/jeans.jpg',
    'price': 4500,
    'text' : 'Ferrari is an all electric compact sedan produced by BMW',
    'wishList' : false,
    'cart' : 0
  },
   {
    'name': 'BMW Model XS5',
   'picture': 'Images/airbuds.jpg',
    'price': 1000000,
    'text' : 'BMW is an all electric compact sedan produced by BMW',
    'wishList' : false,
    'cart' : 0
  },
   {
    'name': 'Porsche Model 911',
    'picture': 'Images/airbuds.jpg',
    'price': 1250000,
     'text' : 'Porsche is an all electric compact sedan produced by BMW',
    'wishList' : false,
    'cart' : 0
  },
  {
    'name': 'Tesla Model X',
    'picture': 'Images/airbuds.jpg',
    'price': 2500000,
    'text' : 'Tesla is an all electric compact sedan produced by BMW',
    'wishList' : false,
    'cart' : 0
  },
  {
    'name': 'Ferrari Model 488',
    'picture': 'Images/airbuds.jpg',
    'price': 4500000 ,
    'text' : 'Ferrari is an all electric compact sedan produced by BMW',
    'wishList' : false,
    'cart' : 0
  },


];

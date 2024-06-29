import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
   bool x =true, y=true;
   int followers = 174;
   
  @override
  Widget build(BuildContext context) {
   
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'Images/me1.jpg',
            height: Height,
            fit: BoxFit.fitHeight,
          ),
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                height: Height * 0.4,
                width: Width * 0.9,
                decoration: BoxDecoration(
                    color: AppColor.ThemeColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2,
                          color: Colors.black,
                          offset: Offset(0, 2))
                    ]),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('Images/me1.jpg'),
                          ),
                          Wrap(direction: Axis.vertical, children: [
                        Text(
                          'Hassan mirza',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text('Flutter Developer'),
                      ]),
                        ],
                      ),
                      
                      Text(
                          "A Flutter developer uses Flutter – a popular open-source framework by Google – to create cross-platform mobile applications. "),
                      Divider(),
                       Text(
                        'Contact : 0327 - 2452589',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                       ),
                       Text(
                        'E-Mail : hassanmirza@gmail.com',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                       ),

                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

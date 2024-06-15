import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
   bool x =true, y=true;
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2,
                          color: Colors.black,
                          offset: Offset(0, 2))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('Images/me1.jpg'),
                          ),
                          Wrap(children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    x = ! x;

                                  });
                                },
                                child: x==true 
                                ?Text('Add Friend')
                                :Text('Cancel Req')),
                            SizedBox(
                              width: Width * 0.02,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  y =! y;
                                });
                              },
                              child: y == true
                              ?const Text('Follow')
                              :const Text('Following'),
                            ),
                          ]),
                        ],
                      ),
                      const Wrap(direction: Axis.vertical, children: [
                        Text(
                          'Hassan mirza',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text('Flutter Developer'),
                      ]),
                      const Text(
                          "A Flutter developer uses Flutter – a popular open-source framework by Google – to create cross-platform mobile applications. "),
                      const Divider(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text('FRIENDS'),
                              Text(
                                '2318',
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text('FOLLOWING'),
                              Text(
                                '364',
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text('FOLLOWERS'),
                              Text(
                                '175',
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

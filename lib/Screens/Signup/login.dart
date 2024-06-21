import 'package:e_commerce_app/Screens/Bottom%20Navbar/bottomNavbar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailControllerr = TextEditingController();
    final TextEditingController pswdControllerr = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Log in"
        ),
      ),
      body: Form(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          //Email
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: emailControllerr,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'abc@gmail.com',
                labelText: 'Email ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16)
                )
              ),
            ),
          ),

          //Password
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: pswdControllerr,
              keyboardType: TextInputType.name,
              obscureText: true,
              decoration: InputDecoration(
                hintText: '******',
                labelText: 'Password ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16)
                )
              ),
            ),
          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBar(),));
          }, child: const Text('Login'))
        ],
      )),
    );
  }
}
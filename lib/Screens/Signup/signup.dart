import 'package:e_commerce_app/Bottom%20Navbar/bottomNavbar.dart';
import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController pswdController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sign up"
        ),
      ),
      body: Center(
        child: Form(child:
         Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              backgroundImage:AssetImage('Images/me1.jpg') ,
              radius: MediaQuery.of(context).size.height*0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  labelText: 'Enter Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  )
                    ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'abc@gmail.com',
                  labelText: 'Enter Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  )
                    ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: '1234-5678910',
                  labelText: 'Enter Phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  )
                    ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: pswdController,
                keyboardType: TextInputType.name,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '*******',
                  labelText: 'Enter Password',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  )
                    ),
              ),
            ),
            ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  BottomNavBar(),));
        }, child: Text('Sign up')),
          ],
        )),
      ),
    );
  }
}
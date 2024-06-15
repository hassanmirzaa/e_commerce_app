import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ThankyouPage extends StatelessWidget {
  const ThankyouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
            'Animations/thankyou.json',
            repeat: true,
            height: MediaQuery.of(context).size.height*0.3,
            
            
            ),
            Text(
              'Thankyou For Shopping !',
              style: TextStyle(
                fontSize: 30
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('OK'))
          ],
        ),
      ),
    );
  }
}
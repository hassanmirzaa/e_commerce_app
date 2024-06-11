import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
final Function (int) onChange;
final int currentSlide;

  const ImageSlider({super.key, required this.onChange, required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SizedBox(
          height: Height*0.2,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset('Images/slideImage1.jpg',
                fit:BoxFit.cover 
                ),
                Image.asset('Images/imageSlide2.jpg',
                fit:BoxFit.cover 
                ),
                Image.asset('Images/imageSlide3.jpg',
                fit:BoxFit.cover 
                ),
              ],
            ),
          ),
        ),
        Positioned(
        bottom: 10,
        left: MediaQuery.of(context).size.width*0.4,
          child: Align(
            
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
              List.generate(
                3,
                (index) => AnimatedContainer(duration: const Duration(milliseconds: 300),
                width: currentSlide ==index ? 15 : 8 ,
                height: 8,
                margin: const EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: currentSlide == index 
                  ? Colors.black 
                  : Colors.transparent,
                  border: Border.all(
                    color: Colors.black
                  )
                ),
                ),
                

              )
            
          ),
        ))
      ],
    );
  }
}
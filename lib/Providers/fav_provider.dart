import 'package:e_commerce_app/Colors/Colors.dart';
import 'package:flutter/material.dart';

class FavProvider with ChangeNotifier {
  List<Map<String, dynamic>> info = [
    {
      'name': 'Wireless Headphones',
      'picture': 'Images/airbuds.jpg',
      'price': 4500,
      'category': 'headphones',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Formal Shirt',
      'picture': 'Images/shirt.jpg',
      'price': 2000,
      'category': 'clothing',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Hand watch',
      'picture': 'Images/watch.jpg',
      'price': 3000,
      'category': 'watches',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Denim Jeans',
      'picture': 'Images/jeans.jpg',
      'price': 4500,
      'category': 'clothing',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Chair',
      'picture': 'Images/chair.jpeg',
      'price': 6000,
      'category': 'chairs',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Headphones',
      'picture': 'Images/headphone2.jpeg',
      'price': 5000,
      'category': 'headphones',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Samsung Z Flip',
      'picture': 'Images/mobile.jpeg',
      'price': 180000,
      'category': 'mobiles',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Brown Shoes',
      'picture': 'Images/shoes.jpg',
      'price': 4500,
      'category': 'shoes',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Big name testing app hahaha',
      'picture': 'Images/watch.jpg',
      'price': 30000000000000,
      'category': 'watches',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'BMW car',
      'picture': 'Images/bmw.jpeg',
      'price': 300000,
      'category': 'cars',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Water Bottle',
      'picture': 'Images/bottle.jpeg',
      'price': 30,
      'category': 'watches',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Air Buds',
      'picture': 'Images/buds.jpeg',
      'price': 300,
      'category': 'watches',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Mirrorless Camera',
      'picture': 'Images/camera.jpg',
      'price': 3000,
      'category': 'watches',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Toyota Corolla',
      'picture': 'Images/corolla.jpg',
      'price': 30000,
      'category': 'watches',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Toyota Indus Corolla',
      'picture': 'Images/indus.jpeg',
      'price': 30000000000000,
      'category': 'watches',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
    {
      'name': 'Baby Lotion',
      'picture': 'Images/lotion.jpeg',
      'price': 30,
      'category': 'watches',
      'text':
          'In this code, I moved the borderRadius property to the ClipRRect widget to ensure the rounded corners are applied to the clipped image. The BoxFit.cover will make sure the image covers the container completely, even if parts of the image are clipped to maintain the aspect ratio.',
      'wishList': false,
      'cart': 0
    },
  ];

  List<Map<String, dynamic>> fav = [];

  void addfavList(int index) {
    info[index]['wishList'] = true;
    fav.add(info[index]);
    notifyListeners();
  }

  void removefavList(int index) {
    // Find the index of the item in the fav list
    int favIndex = fav.indexWhere((item) => item['name'] == info[index]['name']);
    if (favIndex != -1) {
      info[index]['wishList'] = false;
      fav.removeAt(favIndex);
      notifyListeners();
    }
  }

  void onPress(int index) {
    if (info[index]['wishList']) {
      removefavList(index);
    } else {
      addfavList(index);
    }
  }
}

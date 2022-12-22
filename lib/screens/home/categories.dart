import 'package:flutter/material.dart';
import 'package:nut_ui/screens/reusable_widgets/cat_card.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _Categories();
}

class _Categories extends State<Categories> {
  List products = [
    {
      'name': 'iPhone 12',
      'image':
          'https://img.etimg.com/thumb/width-1200,height-900,imgsize-18746,resizemode-1,msid-91597664/magazines/panache/apple-to-offer-bigger-screens-on-iphone-14-pro-iphone-14-pro-max-heres-why.jpg',
      'price': '1,00,000',
    },
    {
      'name': 'iPhone 13',
      'image':
          'https://static.bangkokpost.com/media/content/20221112/4522742.jpg',
      'price': '74,000',
    },
    {
      'name': 'iPhone 14',
      'image':
          'https://img.etimg.com/thumb/width-1200,height-900,imgsize-18746,resizemode-1,msid-91597664/magazines/panache/apple-to-offer-bigger-screens-on-iphone-14-pro-iphone-14-pro-max-heres-why.jpg',
      'price': '70,000',
    },
    {
      'name': 'iPhone 11',
      'image':
          'https://img.etimg.com/thumb/width-1200,height-900,imgsize-18746,resizemode-1,msid-91597664/magazines/panache/apple-to-offer-bigger-screens-on-iphone-14-pro-iphone-14-pro-max-heres-why.jpg',
      'price': '70,000',
    },
    {
      'name': 'iPhone X',
      'image':
          'https://img.etimg.com/thumb/width-1200,height-900,imgsize-18746,resizemode-1,msid-91597664/magazines/panache/apple-to-offer-bigger-screens-on-iphone-14-pro-iphone-14-pro-max-heres-why.jpg',
      'price': '70,000',
    },
    {
      'name': 'iPhone 8',
      'image':
          'https://img.etimg.com/thumb/width-1200,height-900,imgsize-18746,resizemode-1,msid-91597664/magazines/panache/apple-to-offer-bigger-screens-on-iphone-14-pro-iphone-14-pro-max-heres-why.jpg',
      'price': '70,000',
    },
    {
      'name': 'iPhone 12 pro',
      'image':
          'https://img.etimg.com/thumb/width-1200,height-900,imgsize-18746,resizemode-1,msid-91597664/magazines/panache/apple-to-offer-bigger-screens-on-iphone-14-pro-iphone-14-pro-max-heres-why.jpg',
      'price': '70,000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: GridView.builder(
        padding: const EdgeInsets.only(top: 30),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          crossAxisSpacing: 2,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/categories_image.png',
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

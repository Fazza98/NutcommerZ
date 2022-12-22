import 'package:flutter/material.dart';

class CatCard extends StatelessWidget {
  const CatCard({
    required this.productName,
    required this.price,
    required this.image,
    Key? key,
  }) : super(key: key);

  final String productName;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 18,
      height: 140,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        elevation: 02,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              image,
              height: 100,
              width: 160,
              fit: BoxFit.contain,
            ),
            Text(
              productName,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'MRP: ₹ $price',
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

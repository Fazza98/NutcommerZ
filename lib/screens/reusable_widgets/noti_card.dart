import 'package:flutter/material.dart';

class NotiCard extends StatelessWidget {
  const NotiCard({
    required this.name,
    required this.image,
    required this.date,
    required this.status,
    Key? key,
  }) : super(key: key);

  final String name;
  final String image;
  final String date;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  status,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                child: Text(
                  date,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

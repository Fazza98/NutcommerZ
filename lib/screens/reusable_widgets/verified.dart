import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nut_ui/screens/home/base.dart';
// import 'package:get/get.dart';

class Verified extends StatefulWidget {
  const Verified({super.key});

  @override
  State<Verified> createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(50),
          ),
          // Load a Lottie file from your assets
          Lottie.asset('assets/images/verified.json'),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(50),
            child: const Text(
              'Verified',
              style: TextStyle(
                  fontSize: 44,
                  fontFamily: "Roboto",
                  color: Color.fromARGB(255, 231, 220, 220)),
            ),
          ),
        ],
      ),
    );
  }
}

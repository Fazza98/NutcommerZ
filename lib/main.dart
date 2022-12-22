import 'package:nut_ui/custom_color_palette.dart';
import 'package:nut_ui/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Nut Commerz',
      debugShowCheckedModeBanner: false,
      home: const Login(),
      theme: ThemeData(
        primarySwatch: CustomColorPalette.kToDark,
        fontFamily: 'Poppins'
      ),
    ),
  );
}

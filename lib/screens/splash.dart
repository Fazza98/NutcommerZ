// // import 'dart:async';

// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // // import 'package:flutter_svg/flutter_svg.dart';
// // // import 'package:get/get.dart';

// // class SplashScreen extends StatefulWidget {
// //   const SplashScreen({Key? key}) : super(key: key);

// //   @override
// //   _SplashScreenState createState() => _SplashScreenState();
// // }

// // class _SplashScreenState extends State<SplashScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         backgroundColor: Colors.white,
// //         body: Column(
// //           crossAxisAlignment: CrossAxisAlignment.center,
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             SizedBox(
// //               height: 60,
// //             ),
// //             Expanded(
// //                 child: Align(
// //               alignment: Alignment.center,
// //               child: Image(image: AssetImage('assets/images/nutcommerz.png')),
// //             )),

// //             // Align(
// //             //   child: Column(
// //             //     children: [
// //             //       Text(
// //             //         'Developed By',
// //             //         style: TextStyle(
// //             //           fontFamily: "pop-med",
// //             //           fontSize: 11,
// //             //         ),
// //             //       ),
// //             //       Container(
// //             //         margin: EdgeInsets.all(10),
// //             //         child: SvgPicture.asset(
// //             //           "assets/images/logo.svg",
// //             //           height: Get.height * 0.05,
// //             //         ),
// //             //       ),
// //             //       SizedBox(
// //             //         height: 50,
// //             //       )
// //             //     ],
// //             //   ),
// //             // ),
// //           ],
// //         ));
// //   }

// //   @override
// //   void initState() {
// //     super.initState();
// //     Timer(Duration(seconds: 5), () {
// //       Get.offNamed("/");
// //     });
// //   }
// // }
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }


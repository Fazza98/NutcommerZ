// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter DropDownButton',
// //       theme: ThemeData(
// //         primarySwatch: Colors.green,
// //       ),
// //       home: const MyHomePage(),
// //       debugShowCheckedModeBanner: false,
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({Key? key}) : super(key: key);

// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// // // Initial Selected Value
// //   String dropdownvalue = 'Item 1';

// // // List of items in our dropdown menu
// //   var items = [
// //     'Item 1',
// //     'Item 2',
// //     'Item 3',
// //     'Item 4',
// //     'Item 5',
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Geeksforgeeks"),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             DropdownButton(
// //               // Initial Value
// //               value: dropdownvalue,

// //               // Down Arrow Icon
// //               icon: const Icon(Icons.keyboard_arrow_down),

// //               // Array list of items
// //               items: items.map((String items) {
// //                 return DropdownMenuItem(
// //                   value: items,
// //                   child: Text(items),
// //                 );
// //               }).toList(),
// //               // After selecting the desired option,it will
// //               // change button value to selected value
// //               onChanged: (String? newValue) {
// //                 setState(() {
// //                   dropdownvalue = newValue!;
// //                 });
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:nut_ui/login.dart';
// import 'package:nut_ui/otpver.dart';

// class otpmail extends StatefulWidget {
//   const otpmail({Key? key}) : super(key: key);

//   @override
//   State<otpmail> createState() => _RegisterState();
// }

// class _RegisterState extends State<otpmail> {
//   bool _passwordObscure = true;
//   bool _progressBarVisibility = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       // appBar: AppBar(
//       //   title: Text('Creat an Account'),
//       //   centerTitle: true,
//       //   backgroundColor: Color.fromARGB(246, 247, 235, 235),
//       //   // style:TextStyle(color: Colors.black.withOpacity(0.8)),
//       // ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(children: [
//             SizedBox(height: 25),
//             // Container(
//             //   alignment: Alignment.center,
//             //   padding: EdgeInsets.fromLTRB(23, 50, 10, 30),
//             //   child: Text(
//             //     'Create an Account',
//             //     style: TextStyle(
//             //         fontSize: 24,
//             //         fontFamily: "Roboto",
//             //         fontWeight: FontWeight.bold,
//             //         color: Color.fromARGB(255, 7, 7, 7)),
//             //   ),
//             // ),
//             Container(
//               alignment: Alignment.bottomLeft,
//               padding: EdgeInsets.fromLTRB(26, 40, 0, 4),
//               child: Text(
//                 'Email Id',
//                 style: TextStyle(
//                     fontSize: 14,
//                     fontFamily: "Roboto",
//                     // fontWeight: FontWeight.normal,
//                     color: Color.fromARGB(255, 12, 11, 11)),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 255, 253, 253),
//                   border: Border.all(color: Colors.white),
//                   // borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 0),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         hintText: ' Enter Email Id',
//                         prefixIcon: Icon(
//                           Icons.mail,
//                           color: Colors.grey,
//                         )),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
// //             Container(
// //               alignment: Alignment.bottomLeft,
// //               padding: EdgeInsets.fromLTRB(26, 10, 0, 4),
// //               child: Text(
// //                 'Email Id',
// //                 style: TextStyle(
// //                     fontSize: 14,
// //                     fontFamily: "Roboto",
// //                     color: Color.fromARGB(255, 12, 11, 11)),
// //               ),
// //             ),
// //             // Padding(
// //             //   padding: const EdgeInsets.only(right: 200),
// //             //   child: Text(
// //             //     "Enter your user name",
// //             //     style: TextStyle(color: Color.fromARGB(255, 111, 113, 117)),
// //             //   ),
// //             // ),
// //             // Padding(padding: const EdgeInsets.all(10)),

// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 25.0),
// //               child: Container(
// //                 decoration: BoxDecoration(
// //                   color: Colors.white,
// //                   border: Border.all(color: Colors.white),
// //                   // borderRadius: BorderRadius.circular(12),
// //                 ),
// //                 child: Padding(
// //                   padding: const EdgeInsets.only(left: 0),
// //                   child: TextField(
// //                     decoration: InputDecoration(
// //                         border: OutlineInputBorder(),
// //                         hintText: ' Enter Email id',
// //                         prefixIcon: Icon(
// //                           Icons.mail,
// //                           color: Colors.grey,
// //                         )),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             // Padding(
// //             //   padding: const EdgeInsets.only(right: 170),
// //             //   child: Text(
// //             //     "Enter your registered email",
// //             //     style: TextStyle(color: Color.fromARGB(255, 111, 113, 117)),
// //             //   ),
// //             // ),
// //             // Padding(padding: const EdgeInsets.all(10)),
// //             Container(
// //               alignment: Alignment.bottomLeft,
// //               padding: EdgeInsets.fromLTRB(26, 10, 0, 4),
// //               child: Text(
// //                 'Gender',
// //                 style: TextStyle(
// //                     fontSize: 14,
// //                     fontFamily: "Roboto",
// //                     color: Color.fromARGB(255, 12, 11, 11)),
// //               ),
// //             ),

// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 25.0),
// //               child: Container(
// //                 decoration: BoxDecoration(
// //                   color: Colors.white,
// //                   border: Border.all(color: Colors.white),
// //                   borderRadius: BorderRadius.circular(12),
// //                 ),
// //                 child: Padding(
// //                   padding: const EdgeInsets.only(left: 0),
// //                   child: TextField(
// //                     decoration: InputDecoration(
// //                         border: OutlineInputBorder(),
// //                         hintText: ' Gender',
// //                         prefixIcon: Icon(
// //                           Icons.person,
// //                           color: Colors.grey,
// //                         )),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             Container(
// //               alignment: Alignment.bottomLeft,
// //               padding: EdgeInsets.fromLTRB(26, 10, 0, 4),
// //               child: Text(
// //                 'Phone Number',
// //                 style: TextStyle(
// //                     fontSize: 14,
// //                     fontFamily: "Roboto",
// //                     color: Color.fromARGB(255, 12, 11, 11)),
// //               ),
// //             ),
// // // password textfield
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 25.0),
// //               child: Container(
// //                 decoration: BoxDecoration(
// //                   color: Colors.white,
// //                   border: Border.all(color: Colors.white),
// //                   borderRadius: BorderRadius.circular(12),
// //                 ),
// //                 child: Padding(
// //                   padding: const EdgeInsets.only(left: 0),
// //                   child: TextField(
// //                     obscureText: _passwordObscure,
// //                     decoration: InputDecoration(
// //                       border: OutlineInputBorder(),
// //                       hintText: ' Enter Phone Number',
// //                       prefixIcon: Icon(Icons.phone, color: Colors.grey),
// //                       // suffixIcon: IconButton(
// //                       //   icon: Icon(
// //                       //     _passwordObscure
// //                       //         ? Icons.visibility
// //                       //         : Icons.visibility_off,
// //                       //     color: Colors.black,
// //                       //   ),
// //                       //   onPressed: () {
// //                       //     setState(() {
// //                       //       _passwordObscure = !_passwordObscure;
// //                       //     });
// //                       //   },
// //                       // )
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 10),

// //             // Padding(
// //             //   padding: const EdgeInsets.only(right: 200),
// //             //   child: Text(
// //             //     "Enter your password",
// //             //     style: TextStyle(color: Color.fromARGB(255, 111, 113, 117)),
// //             //   ),
// //             // ),
// //             // SizedBox(height: 20),
// //             Container(
// //               alignment: Alignment.bottomLeft,
// //               padding: EdgeInsets.fromLTRB(26, 10, 0, 4),
// //               child: Text(
// //                 'Password',
// //                 style: TextStyle(
// //                     fontSize: 14,
// //                     fontFamily: "Roboto",
// //                     color: Color.fromARGB(255, 12, 11, 11)),
// //               ),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 25.0),
// //               child: Container(
// //                 decoration: BoxDecoration(
// //                   color: Colors.white,
// //                   border: Border.all(color: Colors.white),
// //                   borderRadius: BorderRadius.circular(12),
// //                 ),
// //                 child: Padding(
// //                   padding: const EdgeInsets.only(left: 0),
// //                   child: TextField(
// //                     obscureText: _passwordObscure,
// //                     decoration: InputDecoration(
// //                       border: OutlineInputBorder(),
// //                       hintText: ' Enter Password',
// //                       prefixIcon: Icon(Icons.lock, color: Colors.grey),
// //                       suffixIcon: IconButton(
// //                         icon: Icon(
// //                           _passwordObscure
// //                               ? Icons.visibility
// //                               : Icons.visibility_off,
// //                           color: Colors.grey,
// //                         ),
// //                         onPressed: () {
// //                           setState(() {
// //                             _passwordObscure = !_passwordObscure;
// //                           });
// //                         },
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 50),

// //             // Padding(
// //             //   padding: const EdgeInsets.only(right: 180),
// //             //   child: Text(
// //             //     "Re-enter your password",
// //             //     style: TextStyle(color: Color.fromARGB(255, 111, 113, 117)),
// //             //   ),
// //             // ),
//             SizedBox(height: 80),
//             Visibility(
//               visible: _progressBarVisibility,
//               maintainAnimation: true,
//               maintainSemantics: true,
//               maintainSize: true,
//               maintainState: true,
//               child: CircularProgressIndicator(
//                 backgroundColor: Color.fromARGB(255, 14, 13, 13),
//                 valueColor:
//                     AlwaysStoppedAnimation(Color.fromARGB(255, 244, 245, 244)),
//               ),
//             ),
//             SizedBox(
//               // alignment: Alignment.center,
//               // padding: EdgeInsets.all(10),
//               width: 171.0,
//               height: 44.0,
//               // alignment: Alignment.center,
//               // padding: EdgeInsets.fromLTRB(10, 01, 10, 01),
//               child: ElevatedButton(
//                 child: Text('CONTINUE',
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontFamily: "Poppins",
//                         color: Color.fromARGB(255, 250, 248, 248))),
//                 onPressed: () {
//                   setState(() {
//                     _progressBarVisibility = !_progressBarVisibility;
//                   });
//                   // Navigator.of(context).pushAndRemoveUntil(
//                   //     MaterialPageRoute(
//                   //       builder: (context) => otpver(),
//                   //     ),
//                   //     (route) => false);
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 0, 0, 0),
//                   // onPrimary: Color.fromARGB(255, 221, 218, 218),
//                   // textstyle: TextStyle(fontSize: 15, color: Colors.black),
//                 ),
//               ),
//             ),

// //             SizedBox(height: 2),

// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Text(
// //                   "     Already have an account?",
// //                   style: TextStyle(
// //                     fontWeight: FontWeight.normal,
// //                   ),
// //                 ),
// //                 Container(
// //                   alignment: Alignment.center,
// //                   child: TextButton(
// //                     child: Text('Log in   '),

// //                     // Within the `FirstRoute` widget
// //                     onPressed: () {
// //                       Navigator.pushAndRemoveUntil(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => const Login()),
// //                           (route) => false);
// //                     },
// //                     style: TextButton.styleFrom(
// //                         primary: Color.fromARGB(255, 12, 12, 12)),
// //                   ),
// //                 )
// //               ],
// //             )
//           ]),
//         ),
//       ),
//     );
//   }
// }

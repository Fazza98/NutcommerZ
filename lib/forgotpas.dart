import 'dart:convert';
// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nut_ui/forgotpas.dart';
import 'package:nut_ui/signup.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _Forgot();
}

class _Forgot extends State<Forgot> {
  bool _passwordObscure = true;
  bool _progressBarVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(height: 25),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.fromLTRB(26, 360, 0, 4),
              child: Text(
                'New Password',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Roboto",
                    color: Color.fromARGB(255, 12, 11, 11)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Enter New Password',
                      // helperText: 'Enter your email id',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordObscure
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordObscure = !_passwordObscure;
                          });
                        },
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your New Password address';
                      }
                      // Check if the entered email has the right format
                      // if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      //   return 'Please enter a valid email address';
                      // }
                      // Return null if the entered email is valid
                      return null;
                    },
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.fromLTRB(26, 0, 0, 4),
              child: Text(
                'Confirm Password',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Roboto",
                    color: Color.fromARGB(255, 7, 7, 7)),
              ),
            ),

// password textfield
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: TextFormField(
                    obscureText: _passwordObscure,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ' Confirm New Password',
                      // helperText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock, color: Colors.grey),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordObscure
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordObscure = !_passwordObscure;
                          });
                        },
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value != null && value.length <= 3) {
                        return 'Enter min 5 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ),

            // Container(
            //   alignment: Alignment.centerRight,
            //   padding: EdgeInsets.only(right: 13),
            //   child: TextButton(
            //     child: Text(
            //       'Forgot password ?',
            //       style: TextStyle(
            //           fontSize: 14,
            //           fontFamily: "Roboto",
            //           color: Color.fromARGB(255, 94, 85, 85)),
            //     ),
            //     onPressed: () {},
            //     style: TextButton.styleFrom(
            //       primary: Color.fromARGB(255, 59, 57, 58),
            //       // onPrimary: Color.fromARGB(255, 221, 218, 218),
            //       // style: TextStyle(color: Colors.black),
            //     ),
            //   ),
            // ),

            Visibility(
              visible: _progressBarVisibility,
              maintainAnimation: true,
              maintainSemantics: true,
              maintainSize: true,
              maintainState: true,
              child: CircularProgressIndicator(
                backgroundColor: Color.fromARGB(255, 14, 13, 13),
                valueColor:
                    AlwaysStoppedAnimation(Color.fromARGB(255, 244, 245, 244)),
              ),
            ),

// login button

            SizedBox(
              // alignment: Alignment.center,
              // padding: EdgeInsets.all(10),
              width: 171.0,
              height: 44.0,
              child: ElevatedButton(
                child: Text('CONTINUE',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        color: Color.fromARGB(255, 250, 248, 248))),
                onPressed: () {
                  setState(() {
                    _progressBarVisibility = !_progressBarVisibility;
                  });
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => Forgot(),
                      ),
                      (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 8, 8, 8),
                  onPrimary: Color.fromARGB(255, 221, 218, 218),
                  // textstyle: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),

// // new acc ? Register here
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Dont't have an account?",
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.center,
//                   child: TextButton(
//                     child: Text('Sign up'),
//                     onPressed: () {
//                       Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Signup()),
//                           (route) => false);
//                     },
//                     style: TextButton.styleFrom(
//                         primary: Color.fromARGB(255, 3, 3, 3)),
//                   ),
//                 )
//               ],
//             )
          ]),
        ),
      ),
    );
  }
}

// import 'dart:html';

import 'package:flutter/material.dart';

import '../forgot_password/otp_verification.dart';

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
            backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 189, 0, 0),
              child: Image(image: AssetImage('assets/images/nutcommerz.png')),
            ),
            const SizedBox(height: 25),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(26, 120, 0, 4),
              child: const Text(
                'New Password',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Roboto",
                    color: Color.fromARGB(255, 12, 11, 11)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: TextFormField(
                  obscureText: _passwordObscure,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: ' Enter New Password',
                    // helperText: 'Enter your email id',
                    prefixIcon: const Icon(
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
                  // validator: (value) {
                  //   if (value == null || value.trim().isEmpty) {
                  //     return 'Please enter your New Password address';
                  //   }
                  //   // Check if the entered email has the right format
                  //   // if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  //   //   return 'Please enter a valid email address';
                  //   // }
                  //   // Return null if the entered email is valid
                  //   return null;
                  // },
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(15),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(26, 0, 0, 4),
              child: const Text(
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
                      border: const OutlineInputBorder(),
                      hintText: ' Confirm New Password',
                      // helperText: 'Enter your password',
                      prefixIcon: const Icon(Icons.lock, color: Colors.grey),
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

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Visibility(
                visible: _progressBarVisibility,
                maintainAnimation: true,
                maintainSemantics: true,
                maintainSize: true,
                maintainState: true,
                child: const CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
            ),

// login button

            SizedBox(
              // alignment: Alignment.center,
              // padding: EdgeInsets.all(10),
              width: 171.0,
              height: 44.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _progressBarVisibility = !_progressBarVisibility;
                  });

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const OtpVerification(
                        userMail: '',
                      ),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: const Text(
                  'CONTINUE',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    color: Color.fromARGB(255, 250, 248, 248),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

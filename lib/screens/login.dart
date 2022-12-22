import 'package:flutter/material.dart';
import 'package:nut_ui/screens/forgot_password/otpmail.dart';
import 'package:nut_ui/screens/home/base.dart';
import 'package:nut_ui/screens/signup.dart';

//TODO: Add form validation to text form fields

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordObscure = true;
  bool _progressBarVisibility = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Nut commerz logo
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.20),
              child: const Image(
                image: AssetImage('assets/images/nutcommerz.png'),
              ),
            ),

            //Email Id heading
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(25, 100, 0, 10),
              child: const Text(
                'Email Id',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),

            //Email Text Form field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email Id',
                  prefixIcon: Icon(
                    Icons.mail,
                  ),
                ),
                autovalidateMode: AutovalidateMode.disabled,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your email address';
                  }
                  // Check if the entered email has the right format
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  // Return null if the entered email is valid
                  return null;
                },
              ),
            ),

            //Password heading
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(25, 20, 0, 10),
              child: const Text(
                'Password',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),

            //Password TextFormField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                obscureText: _passwordObscure,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter Password',
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordObscure
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordObscure = !_passwordObscure;
                      });
                    },
                  ),
                ),
                autovalidateMode: AutovalidateMode.disabled,
                validator: (value) {
                  if (value != null && value.length <= 8) {
                    return 'Password must be atleast 8 characters long';
                  } else {
                    return null;
                  }
                },
              ),
            ),

            //Forgot Password Button
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 25, bottom: 25),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _progressBarVisibility = !_progressBarVisibility;
                  });
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Otpmail(),
                    ),
                  );
                },
                child: const Text(
                  'Forgot password ?',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),

            _progressBarVisibility
                //ProgressBar
                ? ElevatedButton(
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            const Size.fromRadius(25)),
                        shape: MaterialStateProperty.all(const CircleBorder())),
                    onPressed: () {},
                    child: const SizedBox(
                      height: 25,
                      width: 25,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  )
                // Login button
                : SizedBox(
                    width: 170.0,
                    height: 45.0,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _progressBarVisibility = false;
                        });
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: const Text(
                        'LOG IN',
                      ),
                    ),
                  ),

            //Sign Up row
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont't have an account?",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Signup(),
                        ),
                      );
                    },
                    child: const Text('Sign up'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

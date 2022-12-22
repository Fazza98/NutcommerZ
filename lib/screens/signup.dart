import 'package:flutter/material.dart';
import 'package:nut_ui/screens/login.dart';
import 'package:nut_ui/screens/forgot_password/otp_verification.dart';

//TODO: Add form validation to the text form fields

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _RegisterState();
}

class _RegisterState extends State<Signup> {
  bool _passwordObscure = true;
  bool _progressBarVisibility = false;

// Initial Gender Selected Value
  String _dropdownValue = '';

// List of items in gender dropdown menu
  final _items = [
    'Male',
    'Female',
    'Transgender',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          //Create an account heading
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(0, 75, 0, 40),
            child: const Text(
              'Create an Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //Name heading
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(25, 0, 0, 10),
            child: const Text(
              'Name',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: ' Enter Name',
                prefixIcon: Icon(
                  Icons.person,
                ),
              ),
            ),
          ),

          //Email Id heading
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(25, 20, 0, 10),
            child: const Text(
              'Email Id',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),

          //Email Id TextFormField
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter Email id',
                prefixIcon: Icon(
                  Icons.mail,
                ),
              ),
            ),
          ),

          //Gender Heading
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.fromLTRB(25, 20, 0, 10),
            child: const Text(
              'Gender',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),

          //Gender Drop Down Menu
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              alignment: Alignment.centerLeft,
              height: 60.0,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 13),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButtonFormField(
                hint: const Text('Select Gender'),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black45,
                  ),
                  border: InputBorder.none,
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                // Dropdown items
                items: _items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _dropdownValue = newValue!;
                  });
                },
              ),
            ),
          ),

          //Phone Number Heading
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.fromLTRB(25, 20, 0, 10),
            child: const Text(
              'Phone Number',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          
          //TODO: Update the UI from this part
          // Phone Number TextFormField
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              obscureText: _passwordObscure,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter Phone Number',
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Padding(
          //   padding: const EdgeInsets.only(right: 200),
          //   child: Text(
          //     "Enter your password",
          //     style: TextStyle(color: Color.fromARGB(255, 111, 113, 117)),
          //   ),
          // ),
          // SizedBox(height: 20),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.fromLTRB(26, 10, 0, 4),
            child: const Text(
              'Password',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Roboto",
                  color: Color.fromARGB(255, 12, 11, 11)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: TextField(
                  obscureText: _passwordObscure,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: ' Enter Password',
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
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          // Padding(
          //   padding: const EdgeInsets.only(right: 180),
          //   child: Text(
          //     "Re-enter your password",
          //     style: TextStyle(color: Color.fromARGB(255, 111, 113, 117)),
          //   ),
          // ),
          // SizedBox(height: 30),
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

          SizedBox(
            // alignment: Alignment.center,
            // padding: EdgeInsets.all(10),
            width: 171.0,
            height: 44.0,
            // alignment: Alignment.center,
            // padding: EdgeInsets.fromLTRB(10, 01, 10, 01),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _progressBarVisibility = !_progressBarVisibility;
                });
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const OtpVerification(
                        userMail: '',
                      ),
                    ),
                    (route) => false);
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 0, 0, 0),
                // onPrimary: Color.fromARGB(255, 221, 218, 218),
                // textstyle: TextStyle(fontSize: 15, color: Colors.black),
              ),
              child: const Text('SIGN UP',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      color: Color.fromARGB(255, 250, 248, 248))),
            ),
          ),

          const SizedBox(height: 2),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "     Already have an account?",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                        (route) => false);
                  },
                  style: TextButton.styleFrom(
                      primary: const Color.fromARGB(255, 12, 12, 12)),
                  child: const Text('Log in   '),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

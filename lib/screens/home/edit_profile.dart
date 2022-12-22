import 'package:flutter/material.dart';
import 'package:nut_ui/screens/home/forgot_password.dart';
import 'package:nut_ui/screens/forgot_password/otpmail.dart';
import 'package:nut_ui/screens/home/profile.dart';

class Editprof extends StatefulWidget {
  const Editprof({super.key});

  @override
  State<Editprof> createState() => _EditprofState();
}

bool _passwordObscure = true;
bool _progressBarVisibility = false;

class _EditprofState extends State<Editprof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: const Color(0xFF000000),
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(26, 60, 0, 0),
              child: const Text(
                'Name',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Roboto",
                    color: Color.fromARGB(255, 12, 11, 11)),
              ),
            ),

            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(26, 10, 20, 4),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Hariharan J',
                    // helperText: 'Enter your email id',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            // Padding(
            //   //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            //   padding: EdgeInsets.symmetric(horizontal: 15),
            //   child: TextField(
            //     decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         labelText: 'Email',
            //         hintText: 'Enter valid email id as abc@gmail.com'),
            //   ),
            // ),
            // SizedBox(
            //   height: 13,
            // ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(26, 0.12, 0, 4),
              child: const Text(
                'Change Email Id',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Roboto",
                    color: Color.fromARGB(255, 12, 11, 11)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'kingmaker@gmail.com',
                      // helperText: 'Enter your email id',
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.grey,
                      )),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
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
            ),

            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(26, 20, 0, 0),
              child: const Text(
                'Change Phone Number',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Roboto",
                    color: Color.fromARGB(255, 12, 11, 11)),
              ),
            ),

            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(26, 10, 20, 4),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '6958454125',
                    // helperText: 'Enter your email id',
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                    )),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(26, 20, 0, 0),
              child: const Text(
                'Change Password',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Roboto",
                    color: Color.fromARGB(255, 12, 11, 11)),
              ),
            ),

            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(26, 10, 20, 4),
              child: InkWell(
                onTap: () {
                  final snackBar = SnackBar(
                    content: Text(
                      'Kindly use Forgot password',
                    ),
                    action: SnackBarAction(
                      label: 'Forgot Password',
                      onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => Otpmail(),
                        ),
                        (route) => false,
                      ),
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: TextFormField(
                  enabled: false,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(),
                    hintText: '******',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 171.0,
              height: 44.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _progressBarVisibility = !_progressBarVisibility;
                  });
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ),
                  );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                child: const Text('SAVE CHANGES',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        color: Color.fromARGB(255, 250, 248, 248))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

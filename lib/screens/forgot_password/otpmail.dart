import 'package:flutter/material.dart';
import 'package:nut_ui/screens/forgot_password/otp_verification.dart';

class Otpmail extends StatefulWidget {
  const Otpmail({Key? key}) : super(key: key);

  @override
  State<Otpmail> createState() => _RegisterState();
}

class _RegisterState extends State<Otpmail> {
  bool _progressBarVisibility = false;

  late TextEditingController useremail;

  @override
  void initState() {
    useremail = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    useremail.dispose();
    super.dispose();
  }

// class Mailhid
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          Center(
            child: Text(
              'Forgot Password',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10, top: 20),
            child: Text(
              'Email',
              //style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              controller: useremail,
              decoration: const InputDecoration(
                  label: Text('Email'),
                  border: OutlineInputBorder(),
                  hintText: ' Enter your email Id',
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.grey,
                  )),
            ),
          ),
          Center(
            child: Padding(
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
          ),
          Center(
            child: SizedBox(
              //alignment: Alignment.center,
              // padding: EdgeInsets.all(10),
              width: 171.0,
              height: 44.0,
              // alignment: Alignment.center,
              // padding: EdgeInsets.fromLTRB(10, 01, 10, 01),
              child: ElevatedButton(
                onPressed: () {
                  int i = 0;
                  final String email = useremail.text.trim().toString();
                  String hiddenEmail = '';

                  setState(() {
                    for (i = 0; i < email.length; i++) {
                      if (i > 2 && i < email.indexOf("@")) {
                        hiddenEmail += "*";
                      } else {
                        hiddenEmail += email[i];
                      }
                    }
                    _progressBarVisibility = !_progressBarVisibility;
                  });
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      // builder: (context) => EmailOtp(
                      //   email: '',
                      // ),
                      builder: (context) => OtpVerification(
                        userMail: hiddenEmail,
                      ),
                    ),
                  );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                child: const Text('CONTINUE',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        color: Color.fromARGB(255, 250, 248, 248))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

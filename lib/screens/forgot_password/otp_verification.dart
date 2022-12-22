import 'package:flutter/material.dart';
import 'package:nut_ui/screens/reusable_widgets/verified.dart';

import 'otpmail.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key, required this.userMail});
  final String userMail;
  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

bool _progressBarVisibility = false;

class _OtpVerificationState extends State<OtpVerification> {
  late TextEditingController otpVal1;
  late TextEditingController otpVal2;
  late TextEditingController otpVal3;
  late TextEditingController otpVal4;

  @override
  void initState() {
    otpVal1 = TextEditingController();
    otpVal2 = TextEditingController();
    otpVal3 = TextEditingController();
    otpVal4 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    otpVal1.dispose();
    otpVal2.dispose();
    otpVal3.dispose();
    otpVal4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 150),
              child: const Text(
                'OTP Verification',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'OTP is sent to',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                widget.userMail,
                style: const TextStyle(color: Colors.black54),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OTPContainer(
                        textEditingController: otpVal1,
                        isFirstContainer: true,
                        isLastContainer: false,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Resend',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 48.0),
                    child: OTPContainer(
                      textEditingController: otpVal2,
                      isFirstContainer: false,
                      isLastContainer: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 48.0),
                    child: OTPContainer(
                      textEditingController: otpVal3,
                      isFirstContainer: false,
                      isLastContainer: false,
                    ),
                  ),
                  Column(
                    children: [
                      OTPContainer(
                        textEditingController: otpVal4,
                        isFirstContainer: false,
                        isLastContainer: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.timer_outlined,
                              color: Colors.black54,
                            ),
                            Text(
                              '00:15',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.12),
              alignment: Alignment.center,
              child: const CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 50.0),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  _progressBarVisibility = !_progressBarVisibility;
                });
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Verified(),
                  ),
                );
              },
              child: const Text('VERIFY'),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Wrong Mail Id?'),
                TextButton(
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
                    'Change Email Id',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OTPContainer extends StatelessWidget {
  const OTPContainer({
    Key? key,
    required this.textEditingController,
    required this.isFirstContainer,
    required this.isLastContainer,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final bool isFirstContainer;
  final bool isLastContainer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 52,
        width: 52,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: TextFormField(
          cursorColor: Colors.black,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16),
          decoration: const InputDecoration(
            border: InputBorder.none,
            counter: Offstage(),
          ),
          maxLength: 1,
          controller: textEditingController,
          onChanged: (value) {
            if (isLastContainer == false && value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
            if (isFirstContainer == false && value.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }
}

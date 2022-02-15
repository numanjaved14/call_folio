import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import './screen3.dart';

class screen2 extends StatefulWidget {
  static const routeName = '/screen2';

  @override
  _screen1State createState() => _screen1State();
}

class _screen1State extends State<screen2> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final otpController = TextEditingController();
  // String? verificationCode;

  @override
  Widget build(BuildContext context) {
    var verificationId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        leading: BackButton(color: Color(0xff5741A0)),
        backgroundColor: const Color(0xffE5E5E5),
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('callFolio'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 200, left: 25),
              child: Text(
                'Verification',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'We have sent you SMS with a code to the number you have provided',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 82, left: 25, right: 25),
              child: PinCodeTextField(
                controller: otpController,
                appContext: context,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    // fieldHeight: 45,
                    // fieldWidth: 60,
                    inactiveFillColor: Colors.white,
                    inactiveColor: Color(0xffE5E5E5),
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.deepPurple.shade100,
                    selectedColor: Colors.deepPurple),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Color(0xffE5E5E5),
                enableActiveFill: true,
                // errorAnimationController: errorController,
                // controller: textEditingController,
                onSubmitted: (pin) async {
                  try {
                    await FirebaseAuth.instance
                        .signInWithCredential(PhoneAuthProvider.credential(
                      verificationId: verificationId,
                      smsCode: pin,
                    ))
                        .then((value) {
                      if (value.user != null) {
                        //Navigator
                      }
                    });
                  } catch (e) {
                    FocusScope.of(context).unfocus();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid OTP!'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                },
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {
                    // currentText = value;
                  });
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 48, left: 96),
                child: Row(
                  children: [
                    Text(
                      'Don’t recieve OTP yet?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '  Reset OTP',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 48),
                child: ElevatedButton(
                  onPressed: () async {
                    PhoneAuthCredential phoneAuthCredential =
                        PhoneAuthProvider.credential(
                            verificationId: verificationId,
                            smsCode: otpController.text);
                    // signInWithPhoneAuthCredential(phoneAuthCredential);
                    Navigator.of(context).pushNamed(screen3.routeName);
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 78),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

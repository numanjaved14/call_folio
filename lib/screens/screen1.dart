import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import './screen2.dart';

class screen1 extends StatefulWidget {
  static const routeName = '/screen1';

  @override
  _screen1State createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  String countryCode = '+92 ';
  String? verificationID;

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
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
                'Verify your current number',
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
                'Provide your phone number, so we able to send you verification code',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 43, top: 67),
              child: Text(
                'Phone Number',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 33, right: 33),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 50,
                  width: 324,
                  color: Colors.white,
                  child: IntlPhoneField(
                    controller: phoneController,
                    onCountryChanged: (value) => countryCode = value.toString(),
                    decoration: InputDecoration(
                      // counter: Text(''),
                      hintText: 'Enter Phone Number',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 0, left: 5),
                      // border: OutlineInputBorder(
                      //   borderSide: BorderSide(),
                      // ),
                    ),
                    initialCountryCode: 'PK',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
              ),
              // child: TextField(
              //   decoration: InputDecoration(
              //     fillColor: Colors.white,
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //   ),
              // ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 102),
                child: ElevatedButton(
                  onPressed: () async {
                    debugPrint('$countryCode${phoneController.text}');
                    await _auth.verifyPhoneNumber(
                      phoneNumber: countryCode + phoneController.text,
                      // phoneNumber: '+923237664160',
                      verificationCompleted: (phoneAuthCredential) async {
                        setState(() {
                          // showLoading = false;
                        });
                        //signInWithPhoneAuthCredential(phoneAuthCredential);
                      },
                      verificationFailed: (verificationFailed) async {
                        setState(() {
                          // showLoading = false;
                        });
                        // _scaffoldKey.currentState.showSnackBar(
                        //     SnackBar(content: Text(verificationFailed.message)));
                      },
                      codeSent: (verificationId, resendingToken) async {
                        // setState(() {
                        // showLoading = false;
                        // currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                        // this.verificationId = verificationId;
                        // });
                        Navigator.of(context).pushNamed(screen2.routeName,
                            arguments: verificationId);
                        debugPrint(verificationId);
                      },
                      codeAutoRetrievalTimeout: (verificationId) async {
                        // this.verificationID = verificationId;
                      },
                    );
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
            ),
          ],
        ),
      ),
    );
  }
}

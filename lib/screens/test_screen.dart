import 'package:calling_app/screens/screen3.dart';
import 'package:calling_app/screens/screen4.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/testScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;
  bool _isVisible = false;
  final auth = FirebaseAuth.instance;

  // final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
  //   ..onTap = () {
  //     if (kDebugMode) {
  //       print("Hello world from _gestureRecognizer");
  //     }
  //   };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      body: SingleChildScrollView(
          reverse: true,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 60,
                width: 200,
              ),

              // Login text Widget
              Center(
                child: Container(
                  height: 200,
                  width: 400,
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ),

              SizedBox(
                height: 60,
                width: 10,
              ),

              // Wrong Password text
              Visibility(
                visible: _isVisible,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Wrong credentials entered",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),

              // Textfields for username and password fields
              Container(
                height: 150,
                width: 530,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      onTap: () {
                        setState(() {
                          _isVisible = false;
                        });
                      },
                      controller: usernameController, // Controller for Username
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          contentPadding: EdgeInsets.all(20)),
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    TextFormField(
                      onTap: () {
                        setState(() {
                          _isVisible = false;
                        });
                      },

                      controller: passwordController, // Controller for Password
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          contentPadding: EdgeInsets.all(20),
                          // Adding the visibility icon to toggle visibility of the password field
                          suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          )),
                      obscureText: _isObscure,
                    ),
                  ],
                ),
              ),

              // Submit Button
              Container(
                width: 570,
                height: 70,
                padding: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  color: Colors.pink,
                  child: Text("Submit", style: TextStyle(color: Colors.white)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () async {
                    try {
                      UserCredential userCredential =
                          await auth.signInWithEmailAndPassword(
                              email: usernameController.text,
                              password: passwordController.text);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                    Navigator.of(context).pushNamed(screen4.routeName);
                    // if (auth.fetchCredentials(
                    //     usernameController.text, passwordController.text)) {
                    //   Navigator.pushAndRemoveUntil(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => HomePage()),
                    //     (Route<dynamic> route) => false,
                    //   );
                    // } else {
                    //   setState(() {
                    //     _isVisible = true;
                    //   });
                  },
                ),
              ),
            ],
          )),
    );
  }
}

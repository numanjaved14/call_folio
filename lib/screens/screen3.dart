import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import './screen4.dart';

class screen3 extends StatefulWidget {
  static const routeName = '/screen3';
  @override
  _screen3State createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
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
                padding: EdgeInsets.only(top: 60, left: 27, right: 150),
                child: Text(
                  'Let’s create your CallFolio Number',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18, left: 17),
                child: Column(
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '•  Select your preferred country code',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '•  Enter your new customized Callfolio number',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '•  OR use random button to generate number',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 34, left: 39),
                child: Text(
                  'CallFolio Number',
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
                    height: 45,
                    width: 340,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          width: 254,
                          child: IntlPhoneField(
                            decoration: InputDecoration(
                                hintText: 'Enter Phone Number',
                                counter: Text(''),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(bottom: 0),
                                labelStyle: TextStyle(
                                  fontSize: 10,
                                )
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
                        SizedBox(
                          height: 21,
                          child: VerticalDivider(
                            thickness: 0.7,
                            color: Color(0xff5741A0),
                          ),
                        ),
                        Expanded(
                          // fit: BoxFit.cover,
                          child: Text(
                            'Random',
                            style: TextStyle(
                              color: Color(0xff5741A0),
                            ),
                          ),
                        )
                      ],
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
              Padding(
                padding: EdgeInsets.only(left: 44, right: 50, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Digite Left: 8',
                      style: TextStyle(color: Color(0xff5741A0), fontSize: 10),
                    ),
                    Text(
                      'Status: Unavailable',
                      style: TextStyle(color: Color(0xff5741A0), fontSize: 10),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 39),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 7, left: 33, right: 33),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 45,
                    width: 324,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          width: 254,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Enter Password',
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(bottom: 3, left: 10),
                                labelStyle: TextStyle(
                                  fontSize: 10,
                                )
                                // border: OutlineInputBorder(
                                //   borderSide: BorderSide(),
                                // ),
                                ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 44),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(screen4.routeName);
                    },
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Theme.of(context).primaryColor,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 78),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}

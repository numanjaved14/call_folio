import 'package:flutter/material.dart';

class CallSettings extends StatefulWidget {
  static const routeName = '/callSettings';

  @override
  State<CallSettings> createState() => _CallSettingsState();
}

class _CallSettingsState extends State<CallSettings> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              // height: 387,
              decoration: BoxDecoration(
                color: Color(0xff43327B),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Call Settings',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.white,
                      child: Container(
                        width: double.infinity,
                        height: 239,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.all(10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 178, top: 10),
                                      height: 20,
                                      width: 88,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xff5741A0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Per Minute',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 8),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Call Rate',
                                      style: TextStyle(
                                          color: Color(0xff5741A0),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ]),
                              SizedBox(
                                height: 5,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: 45,
                                  width: 324,
                                  color: Color(0xffF5F6FB),
                                  child: Container(
                                    width: 254,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText:
                                              'Set Your call rate per min',
                                          hintStyle: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              bottom: 3, left: 20),
                                          labelStyle: TextStyle(
                                            fontSize: 10,
                                          )
                                          // border: OutlineInputBorder(
                                          //   borderSide: BorderSide(),
                                          // ),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.only(top: 60),
                                // decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(20),
                                //     color: Color(0xff535353)),
                                child: SwitchListTile(
                                  title: Text(
                                    'Accept calls for free',
                                    style: TextStyle(
                                        color: Color(0xff5741A0), fontSize: 12),
                                  ),
                                  activeColor: Color(0xffFFFFFF),
                                  // tileColor: Color(0xffFFFFFF),
                                  activeTrackColor: Color(0xff5741A0),
                                  value: _lights,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _lights = value;
                                    });
                                  },
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.only(top: 28),
                                child: Center(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 36, vertical: 0),
                                        textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        primary: Color(0xFFFDD015),
                                        //   onPrimary: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30))),
                                    child: const Text(
                                      'Set',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 26, top: 39),
              child: Text(
                'More Settings',
                style: TextStyle(
                    color: Color(0xff5741A0),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              title: Container(
                margin: EdgeInsets.only(top: 29, left: 26),
                child: Text(
                  'Accept Appointments',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              subtitle: Container(
                margin: EdgeInsets.only(top: 5, left: 25),
                child: Text(
                  'Online hours to accept calls (GMT)',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w300),
                ),
              ),
              trailing: Switch.adaptive(
                activeColor: Color(0xffFFFFFF),
                // tileColor: Color(0xffFFFFFF),
                activeTrackColor: Color(0xff5741A0),
                value: _lights,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
                // controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13),
              child: Divider(
                color: Color(0xffC4C4C4),
                thickness: 1,
                indent: 28,
                endIndent: 28,
              ),
            ),
            ListTile(
              title: Container(
                margin: EdgeInsets.only(top: 29, left: 26),
                child: Text(
                  'Accept Calls',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              subtitle: Container(
                margin: EdgeInsets.only(top: 5, left: 25),
                child: Text(
                  'Online hours to accept calls (GMT)',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w300),
                ),
              ),
              trailing: Switch.adaptive(
                activeColor: Color(0xffFFFFFF),
                // tileColor: Color(0xffFFFFFF),
                activeTrackColor: Color(0xff5741A0),
                value: _lights,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
                // controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13),
              child: Divider(
                color: Color(0xffC4C4C4),
                thickness: 1,
                indent: 28,
                endIndent: 28,
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 18, right: 50),
                        child: Text(
                          'Availability',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 25),
                        child: Text(
                          'Online hours to accept calls (GMT)',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 0),
                    child: Column(
                      children: [
                        Text(
                          'From',
                          style: TextStyle(
                              color: Color(0xff5741A0),
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 1),
                        Container(
                          height: 15,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFFFFF),
                          ),
                          child: Center(
                            child: Text(
                              '12:00 AM',
                              style: TextStyle(
                                  color: Color(0xff5741A0), fontSize: 8),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          'To',
                          style: TextStyle(
                              color: Color(0xff5741A0),
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          height: 15,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFFFFF),
                          ),
                          child: Center(
                            child: Text(
                              '12:00 AM',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff5741A0), fontSize: 8),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              trailing: Switch.adaptive(
                activeColor: Color(0xffFFFFFF),
                // tileColor: Color(0xffFFFFFF),
                activeTrackColor: Color(0xff5741A0),
                value: _lights,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
                // controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13),
              child: Divider(
                color: Color(0xffC4C4C4),
                thickness: 1,
                indent: 28,
                endIndent: 28,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 42),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 56, vertical: 8),
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        primary: Color(0xFF43327B),
                        //   onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'SAVE',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

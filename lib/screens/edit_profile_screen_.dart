import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  static const routeName = '/Edit';

  @override
  _borisState createState() => _borisState();
}

class _borisState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xff43327B),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xffFFFFFF),
            )),
        title: Text('Edit Profile',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12, left: 25),
                  height: 148,
                  width: 339,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // children: [Image.asset('asset/Map.png')],
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 24, left: 33),
                              child: Image.asset('assets/Map.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 9, left: 30),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 56, left: 49),
                              child: Text(
                                'Add your Job/Skill',
                                style: TextStyle(
                                    color: Color(0xff8E8E93), fontSize: 12),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 24),
              child: Text(
                'FULL NAME',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
              child: TextFormField(
                decoration: const InputDecoration(
                    fillColor: Color(0xffFFFFFF),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    hintText: 'Zuhran Ahmad',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 27),
              child: Text(
                'ABOUT',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
              child: TextFormField(
                decoration: const InputDecoration(
                    fillColor: Color(0xffFFFFFF),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    hintText: 'Busy',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 27),
              child: Text(
                'EMAIL',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
              child: TextFormField(
                decoration: const InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        'Verify',
                        style:
                            TextStyle(color: Color(0xff5741A0), fontSize: 12),
                      ),
                    ),
                    // suffix: Padding(
                    //   padding: EdgeInsets.all(10),
                    //   child: Text(
                    //     'VERIFY',
                    //     style: TextStyle(color: Colors.blue, fontSize: 10),
                    //   ),
                    // ),
                    fillColor: Color(0xffFFFFFF),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    hintText: 'zuhran.ahmad@gmail.com',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 27),
              child: Text(
                'CallFOLIO NUMBER',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
              child: TextFormField(
                decoration: const InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        'Change',
                        style: TextStyle(
                            color: Color(0xff5741A0),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    fillColor: Color(0xffFFFFFF),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    hintText: '011 2200220002',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 27),
              child: Text(
                'WEBSITE',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
              child: TextFormField(
                decoration: const InputDecoration(
                    fillColor: Color(0xffFFFFFF),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    hintText: 'papertopixel.com',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
              child: TextFormField(
                  decoration: const InputDecoration(
                fillColor: Color(0xffFFFFFF),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText: 'Social Media Handles',
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )),
            ),
          ],
        )),
      ),
    );
  }
}

import 'package:calling_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/calls_item_.dart';

class CallsScreen extends StatefulWidget {
  static const routeName = '/Calls';

  @override
  _callingState createState() => _callingState();
}

class _callingState extends State<CallsScreen> {
  final List<String> _listItem = [
    'asset/boy.png',
    'asset/Group 13.png',
    'asset/Group 14.png',
    'asset/Mask Group.png',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 69) / 2;
    final double itemWidth = size.width;

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(),
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(children: [
          Stack(children: [
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              height: 432,
              decoration: BoxDecoration(
                color: Color(0xff43327B),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                // borderRadius: BorderRadius.all(
                //   Radius.circular(20),
                // ),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    // mainAxisSize: MainAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('asset/Elipse.png'),
                      InkWell(
                        onTap: () => scaffoldKey.currentState!.openDrawer(),
                        child: CircleAvatar(
                          child: Icon(Icons.menu),
                          backgroundImage: AssetImage('assets/Ellipse.png'),
                          radius: 20,
                        ),
                      ),
                      // Text(
                      //   'Contacts',
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 24,
                      //       fontWeight: FontWeight.bold),
                      // ),
                      CircleAvatar(
                        child: Icon(Icons.settings),
                        backgroundImage: AssetImage('assets/Ellipse.png'),
                        radius: 20,
                      ),
                      // CircleAvatar(
                      //   backgroundColor: AssetImage('Gro.png'),
                      //   radius: 20,
                      // )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 172,
                        height: 172,
                        // backgroundImage: AssetImage('asset/Gro.png'),
                        // radius: 20,
                        child: Image.asset(
                          'assets/Gro.png',
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Zuhran',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    '+1234567890',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    'Doctor  |  Surgeon ',
                    style: TextStyle(color: Colors.yellow[400], fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '12K',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Likes',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '122',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Disike',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '510',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Reports',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),

                  // Container(
                  //   width: 270,
                  //   height: 49,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(40),
                  //       ),
                  // ),
                ],
              ),
            ),
            Positioned(
              top: 400,
              left: 60,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 135,
                      height: 40.83,
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Color(0xffFBB24E),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 40, top: 10),
                        child: Text('CallFolio',
                            style: TextStyle(
                                color: Color(0xff5741A0),
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25, right: 12),
                      child: Text(
                        '56.90',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff5741A0),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  ],
                ),
                width: 270,
                height: 49,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Container(
              height: 450,
            )
          ]),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //         height: 30,
          //         width: 100,
          //         decoration:
          //             BoxDecoration(borderRadius: BorderRadius.circular(30)),
          //         color: Color(0xff43327B),
          //         child: TextButton(
          //           onPressed: () {},
          //           child: Text(
          //             'Profile Views',
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 10,
          //                 fontWeight: FontWeight.w600),
          //           ),
          //         )),

          //     // child: TextButton(
          //     //   ,
          //     //   onPressed: (){}, child: Text('Profile Views',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w600)),style: TextButton.styleFrom(),))
          //   ],
          // )
          Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 19.08),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          width: 100,
                          height: 30,
                          // color: Color(0xff43327B),
                          margin: EdgeInsets.only(left: 35),
                          // padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff43327B)),
                          child: Center(
                            child: Text(
                              'Profile Views',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'My calls',
                          style: TextStyle(
                              color: Color(0xff5741A0),
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'Appointment',
                          style: TextStyle(
                              color: Color(0xff5741A0),
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 100,
                          height: 30,
                          // color: Color(0xff43327B),
                          // margin: EdgeInsets.only(top: 10),
                          // padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xffFFFFFF)),
                          child: Center(
                            child: Text(
                              'New Calls',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff5741A0),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )),
                    ],
                  ),
                )
              ]),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 3.9,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: itemHeight / itemWidth,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemCount: 6,
                  itemBuilder: (context, i) => aoro()),
            ),
          ),
        ]),
      ),
    );
  }
}
              // GridView.builder(
              //   crossAxisCount: 2,
              //   padding: EdgeInsets.all(20),
              //   crossAxisSpacing: 20,
              //   mainAxisSpacing: 20,
              //   children: (context, index) => Card(child: Container(decoration: BoxDecoration(image: DecorationImage
              //   (image: AssetImage(item),fit: BoxFit.cover);
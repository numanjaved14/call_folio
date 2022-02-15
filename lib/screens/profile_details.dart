import 'package:flutter/material.dart';

class profileDetails extends StatefulWidget {
  static const routeName = '/ProfileDetail';
  @override
  _profileDetailsState createState() => _profileDetailsState();
}

class _profileDetailsState extends State<profileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 110,
              width: 110,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/dummyimage.png'),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Zuhran Ahmad',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 19,
                width: 19,
                child: Image.asset('assets/images/verified-badge.png'),
              ),
            ]),
            Text(
              '•  Last seen 25 mins ago...',
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/Group 238.png'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Color(0xff43327B),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Call',
                      style: TextStyle(fontSize: 8, color: Colors.deepPurple),
                    )
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Color(0xff43327B),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Appointment',
                      style: TextStyle(fontSize: 8, color: Colors.deepPurple),
                    )
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Color(0xff43327B),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Icon(
                        Icons.block,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Call',
                      style: TextStyle(fontSize: 8, color: Colors.deepPurple),
                    )
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                // color: Color(0xff43327B),
                border: Border.all(
                  color: Colors.deepPurple,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.deepPurple,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        '+190723972',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              height: 10,
                              width: 15,
                              child: Image.asset('assets/images/Group.png')),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Canada',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Call Rate',
                      style: TextStyle(color: Colors.deepPurple, fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset('assets/images/cash 1.png')),
                          Text(
                            '\$2/min',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Availability',
                      style: TextStyle(color: Colors.deepPurple, fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                                  'assets/images/availability 1.png')),
                          Text(
                            '8 GMT - 18 GMT',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Ratings',
                      style: TextStyle(color: Colors.deepPurple, fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset('assets/images/star 1.png')),
                          Text(
                            '5.0',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                // color: Color(0xff43327B),
                border: Border.all(
                  color: Colors.deepPurple,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 16),
                  ),
                  Text(
                    'A prefessional Doctor with over 23 years experience in surgical operations.',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/images/gmail.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'zuhran.ahmad@gmail.com',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/images/linkedin.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'LinkedIn',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/images/insta.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Instagram',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:calling_app/screens/wallet_screen.dart';
import 'package:flutter/material.dart';

class WalletInfoScreen extends StatefulWidget {
  static const routeName = '/WalletInfo';

  @override
  _appointmentState createState() => _appointmentState();
}

class _appointmentState extends State<WalletInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: SizedBox(
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image(
                    image: AssetImage('assets/123.png'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Dr. Zuhran Ahmad',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 12,
                    width: 12,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff29C440),
                    ),
                  ),
                  Spacer(),
                  Container(
                    // margin: EdgeInsets.only(left: 130),
                    width: 57,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff5741A0),
                    ),
                    child: Center(
                      child: Text(
                        '\$10/hr',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(top: 12, left: 24),
              width: 127,
              height: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.white,
              ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image(image: AssetImage('assets/brain.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'Neurological Surgeon',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff5741A0),
                            fontSize: 8,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 26),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: 24,
                        height: 23,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '2000+',
                      style: TextStyle(fontSize: 12, color: Color(0xff7D7C7C)),
                    ),
                    Spacer(),
                    Image.asset('assets/check 1.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Verified',
                      style: TextStyle(color: Color(0xff7D7C7C), fontSize: 12),
                    ),
                    Spacer(),
                    Image.asset('assets/star.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '5.0',
                      style: TextStyle(color: Color(0xff7D7C7C), fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 35, right: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Available Time',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    height: 15,
                    width: 19,
                    child: Image.asset('assets/calendar-tick.png'),
                  ),
                  SizedBox(width: 5),
                  Text('Dec 31, 2021',
                      style: TextStyle(
                          color: Color(0xff5741A0),
                          fontSize: 10,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 58,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFFFFF)),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 14,
                                height: 14,
                                child: Image.asset('assets/sun.png')),
                            SizedBox(width: 6),
                            Text(
                              'Morning',
                              style: TextStyle(
                                  color: Color(0xff5741A0),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '10:00 GMT',
                          style:
                              TextStyle(color: Color(0xff5741A0), fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 58,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFFFFF)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width: 14,
                                      height: 14,
                                      child: Image.asset('assets/sun-fog.png')),
                                  SizedBox(width: 6),
                                  Text(
                                    'Afternoon',
                                    style: TextStyle(
                                        color: Color(0xff5741A0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]),
                            SizedBox(height: 10),
                            Text(
                              '02:00 GMT',
                              style: TextStyle(
                                  color: Color(0xff5741A0), fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 58,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFFFFF)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width: 14,
                                      height: 14,
                                      child: Image.asset('assets/moon.png')),
                                  SizedBox(width: 6),
                                  Text(
                                    'Evening',
                                    style: TextStyle(
                                        color: Color(0xff5741A0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]),
                            SizedBox(height: 10),
                            Text(
                              '06:00 GMT',
                              style: TextStyle(
                                  color: Color(0xff5741A0), fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              // margin: EdgeInsets.only(top: 42),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Wallet.routeName);
                  },
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (builder) => gaz(),
                  //     ),
                  //   );
                  // },
                  // () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (builder) => Password(),
                  //     ),
                  //   );
                  // },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 8),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      primary: Color(0xFF43327B),
                      //   onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  child: const Text(
                    'Make Appointment',
                    style: TextStyle(color: Colors.white, fontSize: 10),
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

import 'package:flutter/material.dart';

class HomeGrid extends StatelessWidget {
  // String? imageUrl, priceRate, occupation, name, number, status, views;

  // HomeGrid({
  //   this.imageUrl,
  //   this.name,
  //   this.number,
  //   this.occupation,
  //   this.priceRate,
  //   this.status,
  //   this.views,
  // });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/istock.png'),
              ),
            ),
            Positioned(
              top: 17,
              left: 8,
              right: 8,
              bottom: 17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                        // padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xffFDD015),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Doctor | Surgeon',
                          style: TextStyle(fontSize: 6, color: Colors.black),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 11),
                        decoration: BoxDecoration(
                          color: Color(0xff5741A0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          '\$2/min',
                          style: TextStyle(fontSize: 6, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        'Princess',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        height: 12,
                        width: 12,
                        child: Image.asset('assets/images/verified-badge.png'),
                      ),
                    ],
                  ),
                  Text(
                    '+1234567890',
                    style: TextStyle(fontSize: 6, color: Colors.white),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 5,
                        width: 5,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Available',
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 6,
                        width: 8,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '819',
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ],
                  ),
                ],
              ),
            )
            // Positioned(
            //   top: 15,
            //   left: 9,
            //   child: Container(
            //     margin: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            //     decoration: BoxDecoration(
            //       color: Color(0xffFDD015),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(10),
            //       ),
            //     ),
            //     child: Text(
            //       'Doctor | Surgeon',
            //       style: TextStyle(fontSize: 6, color: Colors.black),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: 15,
            //   right: 9,
            //   child: Container(
            //     margin: EdgeInsets.symmetric(vertical: 2, horizontal: 11),
            //     decoration: BoxDecoration(
            //       color: Color(0xff5741A0),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(10),
            //       ),
            //     ),
            //     child: Text(
            //       '\$2/min',
            //       style: TextStyle(fontSize: 6, color: Colors.white),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: 150,
            //   left: 9,
            //   child: Text(
            //     'Princess',
            //     style: TextStyle(fontSize: 12, color: Colors.white),
            //   ),
            // ),
            // Positioned(
            //   top: 150,
            //   left: 66,
            //   child: SizedBox(
            //     height: 12,
            //     width: 12,
            //     child: Image.asset('assets/images/verified-badge.png'),
            //   ),
            // ),
            // Positioned(
            //   top: 166,
            //   left: 9,
            //   child: Text(
            //     '+1234567890',
            //     style: TextStyle(fontSize: 6, color: Colors.white),
            //   ),
            // ),
            // Positioned(
            //   top: 178,
            //   left: 9,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       Row(
            //         children: [
            //           SizedBox(
            //             height: 5,
            //             width: 5,
            //             child: CircleAvatar(
            //               backgroundColor: Colors.green,
            //             ),
            //           ),
            //           Text(
            //             'Available',
            //             style: TextStyle(fontSize: 7, color: Colors.white),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // Positioned(
            //   top: 170,
            //   left: 118,
            //   bottom: 11,
            //   child: SizedBox(
            //     height: 8,
            //     width: 8,
            //     child: FittedBox(
            //       fit: BoxFit.cover,
            //       child: Icon(
            //         Icons.remove_red_eye_outlined,
            //         color: Colors.white,
            //         // size: 40.0,
            //       ),
            //     ),
            //   ),
            //   // child: Row(
            //   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   //   children: [
            //   //     SizedBox(
            //   //       height: 8,
            //   //       width: 8,
            //   //       child: Icon(
            //   //         Icons.remove_red_eye_outlined,
            //   //         color: Colors.white,
            //   //       ),
            //   //     ),
            //   //     Text(
            //   //       '819',
            //   //       style:
            //   //           TextStyle(color: Colors.white, fontSize: 8),
            //   //     ),
            //   //   ],
            //   // ),
            // ),
            // Positioned(
            //   top: 170,
            //   left: 131,
            //   bottom: 11,
            //   child: Text(
            //     '819',
            //     style: TextStyle(color: Colors.white, fontSize: 8),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

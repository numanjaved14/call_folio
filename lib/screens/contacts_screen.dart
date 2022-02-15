import 'package:flutter/material.dart';

import '../widgets/contacts_item.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 69) / 2;
    final double itemWidth = size.width;

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              // height: 250,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Contacts',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.add_box_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Search any name or number',
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Favourites',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          width: 150,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 120,
                                width: 120,
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  // child: ClipRRect(
                                  //     borderRadius: BorderRadius.circular(400),
                                  //     child: Image.asset(
                                  //         'assets/images/istock.png')),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/istock.png'),
                                  ),
                                ),
                              ),
                              Text(
                                'Ahmed',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your People on CallFolio',
                    style: TextStyle(color: Color(0xff5741A0), fontSize: 12),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.3,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) => ContactsItem(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

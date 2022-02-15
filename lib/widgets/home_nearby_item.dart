import 'package:flutter/material.dart';

class HomeNearby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white30,
      child: ListTile(
        leading: Stack(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/istock.png')),
            ),
            Positioned(
              top: 56,
              left: 26,
              child: SizedBox(
                height: 6,
                width: 6,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ],
        ),
        title: Text(
          'Alison Brown',
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 11),
                color: Colors.white30,
                height: 16,
                width: 30,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('assets/images/gender.png'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 16,
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 11),
                color: Colors.white30,
                child: Row(
                  children: [
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Text(
                      '2km away',
                      style: TextStyle(
                        fontSize: 8,
                        color: Color(0xff5741A0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 11),
            color: Colors.white,
            height: 16,
            // width: 30,
            child: Text(
              'Doctor | Surgeon ',
              style: TextStyle(
                fontSize: 6,
                color: Color(0xff5741A0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ContactsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset('assets/images/istock.png')),
        title: Text(
          'Alison Brown',
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
        subtitle: Row(
          children: [
            SizedBox(
              height: 8,
              width: 8,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'Online',
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          // padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Text(
            'Premium',
            style: TextStyle(fontSize: 6, color: Colors.black),
          ),
        ),
      ),
    );
  }
}

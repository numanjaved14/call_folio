import 'package:flutter/material.dart';

class aoro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, consraints) => Container(
        height: consraints.maxHeight,
        width: consraints.maxWidth,
        child: Stack(
          children: [
            Image.asset('assets/boy.png'),
            Positioned(
                top: 10,
                left: 6,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ))),
            Positioned(
                top: 80,
                left: 100,
                child: Container(
                    child: Image(image: AssetImage('assets/Group 150.png')))),
            Positioned(
                top: 150,
                left: 25,
                child: Container(
                  child: Image(image: AssetImage('assets/Group 8.png')),
                )),
          ],
        ),
      ),
    );
  }
}

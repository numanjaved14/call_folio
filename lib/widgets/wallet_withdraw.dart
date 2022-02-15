import 'package:flutter/material.dart';

class WalletWithdraw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: EdgeInsets.symmetric(
            vertical: constraints.maxHeight * 0.1,
            horizontal: constraints.maxHeight * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 60,
                width: 60,
                child: Image.asset('assets/images/Group 259.png'),
              ),
            ),
            Center(
              child: Text(
                'Withdraw Funds',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Amount',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 45,
                width: constraints.maxWidth,
                color: Colors.white,
                child: Container(
                  width: 254,
                  child: TextField(
                    decoration: InputDecoration(
                        // labelText: 'Enter Phone Number',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 3),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(TabsScreen.routeName);
                  },
                  child: Text('Address'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: constraints.maxWidth * 0.10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(TabsScreen.routeName);
                  },
                  child: Text('Withdraw'),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: constraints.maxWidth * 0.10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/transaction_item.dart';

class TransactionHistory extends StatelessWidget {
  static const routeName = '/Transactions';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 69) / 2;
    final double itemWidth = size.width;

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text('Transaction History'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff5741A0),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xff5741A0),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '\$450,199',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff5741A0),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Text(
                    'USD',
                    style: TextStyle(color: Color(0xff5741A0)),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xff5741A0))),
                  child: Text(
                    'December,2021',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Text(
                    '•  Deposit',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Text(
                    '•  Withdraw',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Text(
                    '•  Transfer',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.6,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, i) => TransactionItem()),
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text('Donate to CallFolio Foundation'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

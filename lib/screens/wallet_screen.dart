import 'package:calling_app/screens/transaction_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

import '../widgets/wallet_deposit.dart';
import '../widgets/wallet_transfer.dart';
import '../widgets/wallet_withdraw.dart';

class Wallet extends StatefulWidget {
  static const routeName = '/wallet';

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  var selectedIndex = 0;
  final conntroller = GroupButtonController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 69) / 2;
    // final double itemHeight = (size.height - 69) / 2;
    final double itemWidth = size.width;

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text(
          'Wallet',
        ),
        backgroundColor: Color(0xff43327B),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(TransactionHistory.routeName),
            icon: Image.asset('assets/images/VectorList.png'),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff43327B),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.white38,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Total Balance',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 18,
                                      height: 16,
                                      child:
                                          Image.asset('assets/images/eye.png'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$450,199',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 2, horizontal: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                      ),
                                      child: Text(
                                        'USD',
                                        style:
                                            TextStyle(color: Colors.deepPurple),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            SizedBox(
                              height: 48,
                              width: 48,
                              child: Image.asset(
                                  'assets/images/empty-wallet-time.png'),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          'Minimum Withdrawal',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$1000',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              'ZUHRAN AHMAD',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: GroupButton(
                    isRadio: true,
                    // selectedBorderColor: Colors.grey,
                    unselectedColor: Colors.white38,
                    selectedColor: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    selectedTextStyle: TextStyle(color: Colors.black),
                    unselectedTextStyle: TextStyle(color: Colors.white),
                    // buttonHeight: 40,
                    // buttonWidth: 120,
                    controller: conntroller,
                    buttons: ['Depoit', 'Withdraw', 'Trnsfer'],
                    onSelected: (i, selected) => {
                      debugPrint('Button $i $selected'),
                      setState(() {
                        selectedIndex = i;
                      }),
                    },
                    selectedButton: 0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2.6,
              width: MediaQuery.of(context).size.width,
              child: selectedIndex == 0
                  ? WalletDeposit()
                  : selectedIndex == 1
                      ? WalletWithdraw()
                      : WalletTransfer(),
            ),
          ),
        ],
      ),
    );
  }
}

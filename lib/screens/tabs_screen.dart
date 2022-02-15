import 'package:flutter/material.dart';

import './home_screen.dart';
import './contacts_screen.dart';
import './messages_screen.dart';
import './wallet_info_screen_.dart';
import './calls_screen_.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs_screen';
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Widget>> _pages = [
    {
      'page': home_screen(),
      'title': const Text('Home'),
    },
    {
      'page': ContactsScreen(),
      'title': const Text('Contacts'),
    },
    {
      'page': CallsScreen(),
      'title': const Text('Calls'),
    },
    {
      'page': Messages(),
      'title': const Text('Messages'),
    },
    {
      'page': WalletInfoScreen(),
      'title': const Text('Wallet'),
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: _selectedPageIndex == 0
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset('assets/images/online_selected.png'))
                : SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset('assets/images/online_unselected.png')),
            label: 'Online',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: _selectedPageIndex == 1
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset('assets/images/contacts_selected.png'))
                : SizedBox(
                    height: 24,
                    width: 24,
                    child:
                        Image.asset('assets/images/contacts_unselected.png')),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: _selectedPageIndex == 2
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset('assets/images/calls_selected.png'))
                : SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset('assets/images/calls_unselected.png')),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: _selectedPageIndex == 3
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset('assets/images/messages_selected.png'))
                : SizedBox(
                    height: 24,
                    width: 24,
                    child:
                        Image.asset('assets/images/messages_unselected.png')),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: _selectedPageIndex == 4
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset('assets/images/wallet_selected.png'))
                : SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset('assets/images/wallet_unselected.png')),
            label: 'Wallet',
          ),
        ],
      ),
    );
  }
}

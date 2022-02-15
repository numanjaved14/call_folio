import 'package:calling_app/screens/edit_profile_screen_.dart';
import 'package:calling_app/screens/notif_settings_screen.dart';
import 'package:calling_app/screens/privacy_settings_screen.dart';
import 'package:calling_app/screens/profile_details.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Color(0xff404040),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            // decoration: BoxDecoration(
            //   color: Color(0xff404040),
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dummyimage.png'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(profileDetails.routeName),
                      child: Text(
                        'Zuhran Ahmad',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '+92 3114053544',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                            height: 14,
                            width: 14,
                            child: Image.asset('assets/drawer_icons/copy.png'))
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(EditProfileScreen.routeName),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                'assets/drawer_icons/crown.png',
                height: 30,
              ),
            ),
            title: const Text(
              'Upgrade to premium',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            trailing: const Text(
              '>',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileSettings()));
            // },
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                'assets/drawer_icons/dollar-circle.png',
                height: 30,
              ),
            ),
            title: const Text(
              'My call rate',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            trailing: const Text(
              '>',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileSettings()));
            // },
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                'assets/drawer_icons/notification.png',
                height: 30,
              ),
            ),
            title: const Text(
              'Notifications',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            trailing: const Text(
              '>',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(NotifSettings.routeName);
            },
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                'assets/drawer_icons/calendar.png',
                height: 30,
              ),
            ),
            title: const Text(
              'Appointments',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            trailing: const Text(
              '>',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileSettings()));
            // },
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.orange.shade200,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                'assets/drawer_icons/heros.png',
                height: 30,
              ),
            ),
            title: const Text(
              'Heros',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            trailing: const Text(
              '>',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileSettings()));
            // },
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                'assets/drawer_icons/wallet-add.png',
                height: 30,
              ),
            ),
            title: const Text(
              'Finance',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            trailing: const Text(
              '>',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileSettings()));
            // },
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                'assets/drawer_icons/setting.png',
                height: 30,
              ),
            ),
            title: const Text(
              'Settings',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            trailing: const Text(
              '>',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(PrivacySettings.routeName);
            },
          ),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                'assets/drawer_icons/help.png',
                height: 30,
              ),
            ),
            title: const Text(
              'Help',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            trailing: const Text(
              '>',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileSettings()));
            // },
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.pink.shade400,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                'assets/drawer_icons/heart.png',
                height: 30,
              ),
            ),
            title: const Text(
              'Invite friends',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            trailing: const Text(
              '>',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileSettings()));
            // },
          ),
        ],
      ),
    );
  }
}

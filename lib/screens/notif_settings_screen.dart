import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotifSettings extends StatefulWidget {
  static const routeName = '/Notif';
  @override
  State<NotifSettings> createState() => _NotifSettingsState();
}

class _NotifSettingsState extends State<NotifSettings> {
  bool dummy = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(20),
                //   bottomRight: Radius.circular(20),
                // ),
              ),
              child: ListTile(
                title: const Text(
                  'Show Notifications',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                trailing: Switch.adaptive(
                    value: dummy,
                    onChanged: (bool newVal) {
                      setState(() {
                        dummy = newVal;
                      });
                    }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Show Notifications',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    trailing: Switch.adaptive(
                        value: dummy,
                        onChanged: (bool newVal) {
                          setState(() {
                            dummy = newVal;
                          });
                        }),
                  ),
                  const ListTile(
                    title: Text(
                      'Sound',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    trailing: Text(
                      'Note  >',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: const Text(
                        'Use high priority notifications',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    Switch.adaptive(
                        value: dummy,
                        onChanged: (bool newVal) {
                          setState(() {
                            dummy = newVal;
                          });
                        }),
                  ],
                ),
                subtitle: const Text(
                  'Show notification at top of the screen',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Protect incoming messages',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Switch.adaptive(
                        value: dummy,
                        onChanged: (bool newVal) {
                          setState(() {
                            dummy = newVal;
                          });
                        }),
                  ],
                ),
                subtitle: const Text(
                  'Accept chat messages from premium callers only',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const ListTile(
                title: Text(
                  'Reset Notification Settings',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

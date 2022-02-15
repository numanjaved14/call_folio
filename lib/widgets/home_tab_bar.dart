import 'package:flutter/material.dart';

class HomeTabBar extends StatefulWidget {
  @override
  _HomeTabBarState createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => MaterialApp(
        title: 'msc',
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: TabBar(
                      unselectedLabelColor: Colors.blue,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue),
                      tabs: [
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(color: Colors.blue, width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Home"),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(color: Colors.blue, width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Gallery"),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            body: new TabBarView(
              children: <Widget>[
                new Column(
                  children: <Widget>[new Text("Home")],
                ),
                new Column(
                  children: <Widget>[new Text("Gallery")],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

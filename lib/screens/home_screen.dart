import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_custom_tab_bar/library.dart';

import '../widgets/home_tab_bar.dart';
import '../widgets/home_grid.dart';
import '../widgets/home_nearby_item.dart';

class home_screen extends StatefulWidget {
  static const routeName = '/homeScreen';

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  final int pageCount = 4;
  late PageController _controller = PageController(initialPage: 0);
  CustomTabBarController _tabBarController = CustomTabBarController();

  @override
  void initState() {
    super.initState();
  }

  Widget getTabbarChild(BuildContext context, int index) {
    return TabBarItem(
        transform: ColorsTransform(
            highlightColor: Colors.white,
            normalColor: Color(0xff43327B),
            builder: (context, color) {
              return Container(
                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                alignment: Alignment.center,
                constraints: BoxConstraints(minWidth: 60),
                child: (Text(
                  index == 0
                      ? 'Featured'
                      : index == 1
                          ? 'Nearby'
                          : index == 2
                              ? 'Trending'
                              : 'Heros',
                  style: TextStyle(fontSize: 14, color: color),
                )),
              );
            }),
        index: index);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 69) / 2;
    final double itemWidth = size.width;

    var selectedIndex = 0;
    final controller = GroupButtonController();

    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Color(0xffE5E5E5)));

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xff43327B),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                // borderRadius: BorderRadius.all(
                //   Radius.circular(20),
                // ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'callFolio',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: Colors.white,
                          height: 30,
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 13,
                                width: 13,
                                child: Image.asset('assets/images/Vector.png'),
                              ),
                              Text(
                                '20',
                                style: TextStyle(
                                  color: Color(0xff5741A0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Search any name or number',
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Premium communication with people of great value from different works of life',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFFFFF99),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            //   child: Row(
            //     children: [
            //       GroupButton(
            //         isRadio: true,
            //         // selectedBorderColor: Colors.grey,
            //         unselectedColor: Colors.transparent,
            //         selectedColor: Colors.deepPurple,
            //         borderRadius: BorderRadius.circular(30),
            //         selectedTextStyle: TextStyle(color: Colors.white),
            //         unselectedTextStyle: TextStyle(color: Colors.deepPurple),
            //         // buttonHeight: 40,
            //         // buttonWidth: 120,
            //         controller: controller,
            //         buttons: ['Featured', 'Nearby', 'Trending', 'Heros'],
            //         onSelected: (i, selected) => {
            //           debugPrint('Button $i $selected'),
            //           setState(() {
            //             selectedIndex = i;
            //           }),
            //         },
            //       ),
            //       Expanded(
            //         child: Image.asset('assets/images/filter.png'),
            //       ),
            //     ],
            //   ),
            // ),
            // HomeTabBar(),
            SizedBox(
              height: 10,
            ),
            CustomTabBar(
              tabBarController: _tabBarController,
              height: 35,
              itemCount: pageCount,
              builder: getTabbarChild,
              indicator: RoundIndicator(
                color: Color(0xff43327B),
                top: 2.5,
                bottom: 2.5,
                radius: BorderRadius.circular(15),
              ),
              pageController: _controller,
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: pageCount,
                itemBuilder: (context, index) {
                  return index == 0
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.05,
                              vertical:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 1.85,
                            width: MediaQuery.of(context).size.width,
                            child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio:
                                            itemHeight / itemWidth,
                                        mainAxisSpacing: 10,
                                        crossAxisSpacing: 20,
                                        crossAxisCount: 2),
                                itemCount: 6,
                                itemBuilder: (context, i) => HomeGrid()),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.05,
                              vertical:
                                  MediaQuery.of(context).size.width * 0.03),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 2.2,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                                itemCount: 10,
                                itemBuilder: (context, index) => HomeNearby()),
                          ),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

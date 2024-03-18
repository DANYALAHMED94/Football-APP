import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:football_blue_live_app/Screens/HomeScreens/HomePage1.dart';
import 'package:football_blue_live_app/Screens/LiveTVScreens/LiveTV1Screen.dart';

import 'NotificationsScreen/NotificationsScreens.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screensList = [
    HomePage1(),
    LiveTV1Screen(),
    NotificationsScreen()
  ];

  int selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screensList[selectedScreen],
      bottomNavigationBar: customBottomNavigation(context),
    );
  }

  Widget customBottomNavigation(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Container(
      color: const Color(0xffEAEAEA),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: mediaQuery.size.height*0.085,
            width: mediaQuery.size.width*0.97,
            margin: const EdgeInsets.symmetric(
                horizontal: 2, vertical: 5
            ),
            decoration: const BoxDecoration(
                color: Color(0xff344C72),
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(16)
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    selectedScreen = 0;
                    setState(() {

                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: selectedScreen==0?Colors.white:Colors.transparent,
                    radius: 22,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/home.png",
                          color: selectedScreen==0?const Color(0xff344C72):Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    selectedScreen = 1;
                    setState(() {

                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: selectedScreen==1?Colors.white:Colors.transparent,
                    radius: 22,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/live.png",
                          color: selectedScreen==1?const Color(0xff344C72):Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    selectedScreen = 2;
                    setState(() {

                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: selectedScreen==2?Colors.white:Colors.transparent,
                    radius: 22,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/notification.png",
                          color: selectedScreen==2?const Color(0xff344C72):Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

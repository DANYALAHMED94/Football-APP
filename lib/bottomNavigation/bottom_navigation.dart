import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:football_app/presentation/green_home_screen/green_home_screen.dart';
import 'package:football_app/presentation/green_live_tabs_screen_page/green_live_tabs_screen_page.dart';
import 'package:football_app/presentation/green_notification_screen/green_notification_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  BottomNavigationScreen();

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> screensList = [
    GreenHomeScreen(),
    GreenLiveTabsScreenPage(),
    GreenNotificationScreen(),
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
            height: mediaQuery.size.height * 0.085,
            width: mediaQuery.size.width * 0.97,
            margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
            decoration: const BoxDecoration(
                color: Color(0xff378805),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(16))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    selectedScreen = 0;
                    setState(() {});
                  },
                  child: CircleAvatar(
                    backgroundColor: selectedScreen == 0
                        ? Color(0xff285D0E)
                        : Colors.transparent,
                    radius: 22,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/Icon.png",
                          color:
                              selectedScreen == 0 ? Colors.white : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    selectedScreen = 1;
                    setState(() {});
                  },
                  child: CircleAvatar(
                    backgroundColor: selectedScreen == 1
                        ? Color(0xff285D0E)
                        : Colors.transparent,
                    radius: 22,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/livetv.png",
                          color:
                              selectedScreen == 1 ? Colors.white : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    selectedScreen = 2;
                    setState(() {});
                  },
                  child: CircleAvatar(
                    backgroundColor: selectedScreen == 2
                        ? Color(0xff285D0E)
                        : Colors.transparent,
                    radius: 22,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/39-Notification.png",
                          color:
                              selectedScreen == 2 ? Colors.white : Colors.white,
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

// import 'package:flutter/material.dart';
// import 'package:football_app/presentation/green_home_screen/green_home_screen.dart';
// import 'package:football_app/presentation/green_live_tabs_screen_page/green_live_tabs_screen_page.dart';
// import 'package:football_app/presentation/green_notification_screen/green_notification_screen.dart';

// class BottomNavigationScreen extends StatefulWidget {
//   @override
//   _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
// }

// class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
//   int _selectedIndex = 0;

//   static List<Widget> _widgetOptions = <Widget>[
    // GreenHomeScreen(),
    // GreenLiveTabsScreenPage(),
    // GreenNotificationScreen(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           _widgetOptions.elementAt(_selectedIndex),
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               // decoration: BoxDecoration(
//               //   color: Color(0xff378805),
//               //   borderRadius: BorderRadius.only(
//               //     topLeft: Radius.circular(20.0),
//               //     topRight: Radius.circular(20.0),
//               //   ),
//               // ),
//               child: Container(
//                 height: 70,
//                 child: BottomNavigationBar(
//                   backgroundColor: Color(0xff378805),
//                   items: <BottomNavigationBarItem>[
//                     BottomNavigationBarItem(
//                       icon: Container(
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: _selectedIndex == 0
//                               ? Colors.green.withOpacity(0.5)
//                               : Colors.transparent,
//                         ),
//                         padding: EdgeInsets.all(12),
//                         child: Icon(Icons.home_rounded,
//                             color: _selectedIndex == 0
//                                 ? Colors.white
//                                 : Colors.white54),
//                       ),
//                       label: '',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Container(
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: _selectedIndex == 1
//                               ? Colors.green.withOpacity(0.5)
//                               : Colors.transparent,
//                         ),
//                         padding: EdgeInsets.all(12),
//                         child: Icon(Icons.live_tv_rounded,
//                             color: _selectedIndex == 1
//                                 ? Colors.white
//                                 : Colors.white54),
//                       ),
//                       label: '',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Container(
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: _selectedIndex == 2
//                               ? Colors.green.withOpacity(0.5)
//                               : Colors.transparent,
//                         ),
//                         padding: EdgeInsets.all(12),
//                         child: Icon(Icons.notifications_rounded,
//                             color: _selectedIndex == 2
//                                 ? Colors.white
//                                 : Colors.white54),
//                       ),
//                       label: '',
//                     ),
//                   ],
//                   currentIndex: _selectedIndex,
//                   showSelectedLabels: false,
//                   showUnselectedLabels: false,
//                   selectedItemColor: Colors.white,
//                   onTap: _onItemTapped,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

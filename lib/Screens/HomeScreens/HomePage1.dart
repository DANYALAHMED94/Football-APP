import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_blue_live_app/Screens/HomeScreens/TabBarScreen/NewsScreen.dart';
import 'TabBarScreen/Matches.dart';
import 'TabBarScreen/TeamsScreens.dart';

class HomePage1 extends StatefulWidget {
  HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int selectedTab = 0;

  List<Widget> tabBarScreens = [
    MatchesScreen(),
    TeamsScreen(),
    NewsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffEAEAEA),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(mediaQuery.size.height*0.1),
        child: AppBar(
          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(18)
            )
          ),
          backgroundColor: const Color(0xff344C72),
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.notifications, color: Colors.white,size: 30,)
            ),
            const SizedBox(
              width: 10,
            )
          ],
          title: const Text(
            "Mr. John clark",
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10
        ),
        height: mediaQuery.size.height*0.8,
        width: mediaQuery.size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      selectedTab = 0;
                      setState(() {

                      });

                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 6
                      ),
                      decoration: BoxDecoration(
                        color: selectedTab==0?const Color(0xff344C72):Colors.transparent,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(
                          "Matches",
                        style: TextStyle(
                          color: selectedTab==0?Colors.white:Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      selectedTab = 1;
                      setState(() {

                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 6
                      ),
                      decoration: BoxDecoration(
                          color: selectedTab==1?const Color(0xff344C72):Colors.transparent,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(
                        "Teams",
                        style: TextStyle(
                            color: selectedTab==1?Colors.white:Colors.black,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      selectedTab = 2;
                      setState(() {

                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 6
                      ),
                      decoration: BoxDecoration(
                          color: selectedTab==2?const Color(0xff344C72):Colors.transparent,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(
                        "News",
                        style: TextStyle(
                            color: selectedTab==2?Colors.white:Colors.black,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            tabBarScreens[selectedTab]

          ],
        ),
      ),
    );
  }
}



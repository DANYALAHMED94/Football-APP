import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_blue_live_app/Screens/LiveTVScreens/LiveStreaming1.dart';
import 'package:football_blue_live_app/Screens/LiveTVScreens/LiveStreaming2.dart';

class LiveTV1Screen extends StatelessWidget {
  const LiveTV1Screen({super.key});

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
        ),
      ),
      // body: SizedBox(
      //   height: mediaQuery.size.height,
      //   width: mediaQuery.size.width,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       const Padding(
      //         padding: EdgeInsets.symmetric(
      //             vertical: 10,
      //             horizontal: 20
      //         ),
      //         child: Text(
      //           "Today Game’s",
      //           textAlign: TextAlign.start,
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.black,
      //             fontSize: 18,
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         child: ListView.builder(
      //           itemBuilder: (context, index) {
      //             return newsCards(context);
      //           },
      //           itemCount: 5,
      //           scrollDirection: Axis.horizontal,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      body: SizedBox(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text(
                "Today's Games",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            // Horizontal Cards
            SizedBox(
              height: mediaQuery.size.height*0.32,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return newsCards(context);
                },
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 0
                ),
                itemExtent: 210,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text(
                "Live Results",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),

            // Vertical Cards
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LiveScreaming2(),
                          )
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10
                        ),
                        dense: true,
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/listimage.png")),
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                        title: Text(
                          "New York Giants",
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        subtitle: Text(
                          "Halt Time",
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Bash.dev.sl",
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 5,
                scrollDirection: Axis.vertical,
              ),
            ),
          ],
        ),
      ),
    );

  }

  Widget newsCards(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: mediaQuery.size.height*0.15,
            margin: EdgeInsets.only(
              top: 5,
              right: 5,
              left: 5
            ),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/playing.png"))
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Manchester city vs Fc Copenhagen",
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 8,
                right: 8,
            ),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LiveScreaming1(),));
                      },
                    child: Text(
                      "Watch Live",
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color(0xffADCDD8)
                        ),
                        shape: MaterialStatePropertyAll(
                            ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            )
                        )
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

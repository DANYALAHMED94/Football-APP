import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LiveScreaming1 extends StatelessWidget {
  const LiveScreaming1({super.key});

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: const Color(0xff344C72),
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
                icon: const Icon(Icons.share, color: Colors.white,size: 25,)
            ),
            const SizedBox(
              width: 10,
            )
          ],
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text(
            "UEFA championship League, Final",
            style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500
            ),
          ),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 10,
              width: 10,
              margin: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                      width: 0.8,
                      color: Colors.white,
                      style: BorderStyle.solid
                  ),
                  gradient: const LinearGradient(
                      colors: [
                        Colors.white38,
                        Colors.transparent
                      ]
                  )
              ),
              child: const Icon(Icons.arrow_back, color: Colors.white, size: 22,),
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: mediaQuery.size.height*0.31,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/playing.png"
                    ),
                  fit: BoxFit.fill
                )
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20
              ),
              child: Text(
                "Live Other Maches",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return basicCards(
                      context, "Pro League", "Championship",
                      "0", "0", "assets/images/team1.png",
                      "assets/images/team2.png", "Realmadrid", "West Brom"
                  );
                },
                padding: const EdgeInsets.all(0),
                itemCount: 4,
                shrinkWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget basicCards(BuildContext context, String dateTime, String league,
      String scoreTeam1, String scoreTeam2, String team1Logo, String team2Logo,
      String team1Name, String team2Name) {

    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 4
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dateTime,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff434040),
                  fontSize: 12,
                ),
              ),
              Container(
                height: 18,
                width: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.red
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),

                    const Text(
                      " Live",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 10
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          team1Name,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(team1Logo)
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  width: 60,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 8
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffE3E3E3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        scoreTeam1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        "-",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        scoreTeam2,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(team2Logo)
                            )
                        ),
                      ),
                      Expanded(
                        child: Text(
                          team2Name,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

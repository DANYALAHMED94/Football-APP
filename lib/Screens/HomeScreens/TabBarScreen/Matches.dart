import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return homeMainCards(context);
          },
          padding: const EdgeInsets.all(0),
          itemCount: 8,
        )
    );
  }

  Widget homeMainCards(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Container(
        height: mediaQuery.size.height*0.3,
        width: mediaQuery.size.width,
        margin: const EdgeInsets.symmetric(
            vertical: 8
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 10, vertical: 10
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return basicCards(
                context, "01:15 Mar 07", "Championship",
                "0", "0", "assets/images/team1.png",
                "assets/images/team2.png", "Realmadrid", "FC Copenhagen"
            );
          },
          padding: const EdgeInsets.all(0),
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),

        )
    );
  }

  Widget basicCards(BuildContext context, String dateTime, String league,
      String scoreTeam1, String scoreTeam2, String team1Logo, String team2Logo,
      String team1Name, String team2Name) {

    return Column(
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
            Text(
              league,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xff434040),
                fontSize: 12,
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
        const SizedBox(height: 15,),
      ],
    );
  }
}

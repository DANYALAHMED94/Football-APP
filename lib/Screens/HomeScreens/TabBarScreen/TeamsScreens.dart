import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,vertical: 20
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 10,
                  horizontal: 10
                ),
                child: Text(
                  "All Teams(9)",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 110,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 0
                  ),
                  itemCount: 9,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            backgroundImage: const AssetImage("assets/images/teams.png"),
                            radius: 30
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10
                          ),
                          child: Text(
                            "FC Copenhagen",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          )
        )
    );
  }
}

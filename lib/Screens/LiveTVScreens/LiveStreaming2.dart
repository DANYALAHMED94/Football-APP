import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LiveScreaming2 extends StatelessWidget {
  const LiveScreaming2({super.key});

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
          // actions: [
          //   IconButton(
          //       onPressed: (){},
          //       icon: const Icon(Icons.share, color: Colors.white,size: 25,)
          //   ),
          //   const SizedBox(
          //     width: 10,
          //   )
          // ],
          automaticallyImplyLeading: false,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/teams.png"),
                ),
                title: Text("UEFA Championship League, Final", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12),),
                subtitle: Text("championship League", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 12),),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xff1B155F),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/tv.png"))
                        ),
                      ),
                      trailing: index==1?
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
                          child: Text("Playing Now", style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),),
                        )
                      ) :
                      const SizedBox(),
                      subtitle: const Text("720px", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 12),),
                      title: Text("SERVER ${index+1}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12),),
                    ),
                  );
                },
                padding: const EdgeInsets.all(0),
                itemCount: 3,
                shrinkWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}

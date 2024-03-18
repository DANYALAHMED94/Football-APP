import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

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
                "Notification",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
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
                        "Lorem ipsum dolor sit amet when are the ",
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "09:15 AM",
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
                  );
                },
                itemCount: 15,
                scrollDirection: Axis.vertical,
              ),
            )
          ],
        ),
      ),
    );
  }
}

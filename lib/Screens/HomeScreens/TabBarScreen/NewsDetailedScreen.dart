import 'package:flutter/material.dart';

class NewsDetailedPageScreen extends StatelessWidget {
  const NewsDetailedPageScreen({super.key});

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 5
        ),
        child: SizedBox(
          height: mediaQuery.size.height,
          width: mediaQuery.size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: mediaQuery.size.height*0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/newsperson.png"))
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15
                ),
                child: Text(
                  "News Details",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                ),
                child: Text(
                  "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available"
                  "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

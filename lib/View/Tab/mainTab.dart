import 'package:dixweb1/Module/pallete.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../graduatePackage.dart';

class mainTab extends StatefulWidget {
  mainTab({super.key});

  @override
  State<mainTab> createState() => _mainTabState();
}

class _mainTabState extends State<mainTab> with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(
    vsync: this,
    initialIndex: 0,
    length: 6,
  );

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    bool _hideImage = true;
    if (screenwidth >= 700) {
      _hideImage = true;
    } else {
      _hideImage = false;
    }
    void openPackage(String Itag, String link) {
      Navigator.of(context).push(new PageRouteBuilder(
          opaque: false,
          barrierDismissible: false,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.ease;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.easeIn,
              ),
              child: child,
            );
          },
          pageBuilder: (BuildContext context, _, __) {
            return graduatePackage(link: link, Itag: Itag);
          }));
    }

    ;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Color(0xffdce7ed),
                  height: 400,
                  width: double.infinity,
                  child: TabBarView(controller: _tabController, children: [
                    Image.asset(
                      "assets/image/image_placeholder.jpg",
                    ),
                    Image.asset(
                      "assets/image/image_placeholder.jpg",
                    ),
                    Image.asset(
                      "assets/image/image_placeholder.jpg",
                    ),
                    Image.asset(
                      "assets/image/image_placeholder.jpg",
                    ),
                    Image.asset(
                      "assets/image/image_placeholder.jpg",
                    ),
                    Image.asset(
                      "assets/image/image_placeholder.jpg",
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(fontFamily: "Montserrat"),
                    children: [
                      TextSpan(
                          text: "Graduation Package",
                          style: TextStyle(
                              color: Color(crewColor[1]),
                              fontSize: 24,
                              fontWeight: FontWeight.w800)),
                      TextSpan(
                          text:
                              "\nGraduation Package to capture your graduate moments"),
                    ]),
              ),
            ),
            Container(
              height: 350,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    for (var i = 0; i < 5; i++)
                      Container(
                        height: double.infinity,
                        width: 230,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(blurRadius: 12, color: Colors.black12)
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Hero(
                                  tag: "photo$i",
                                  child:
                                      // Image.asset(
                                      //     "assets/image/image_placeholder.jpg")
                                      FadeInImage.assetNetwork(
                                          placeholder:
                                              "assets/image/image_placeholder.jpg",
                                          image:
                                              "https://firebasestorage.googleapis.com/v0/b/dixonruangkreatif.appspot.com/o/DSC1669.JPG?alt=media&token=10500c24-58f6-45f4-ad76-c26f2b5452de",
                                          fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w500),
                                            children: [
                                          TextSpan(
                                              text: "Personal Package\n",
                                              style: TextStyle(
                                                  color: Color(crewColor[1]),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w800)),
                                          TextSpan(
                                              text:
                                                  "Unlimited Shoot, 30 Edited Photo, All Unedited Photos in GDrive",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12)),
                                        ])),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Text("Rp. 350K",
                                            style: TextStyle(
                                                color: Color(crewColor[1]),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800)),
                                        Spacer(),
                                        FloatingActionButton(
                                          heroTag: "button-see-more$i",
                                          backgroundColor: Color(crewColor[1]),
                                          onPressed: () {
                                            openPackage("photo$i",
                                                "https://firebasestorage.googleapis.com/v0/b/dixonruangkreatif.appspot.com/o/DSC1669.JPG?alt=media&token=10500c24-58f6-45f4-ad76-c26f2b5452de");
                                          },
                                          mini: true,
                                          child: Icon(
                                            FontAwesome5.arrow_right,
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    SizedBox(width: 20)
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}

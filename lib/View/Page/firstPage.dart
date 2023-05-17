import 'package:dixweb1/Module/pallete.dart';
import 'package:dixweb1/View/Tab/portofolioTab.dart';
import 'package:dixweb1/View/regisview.dart';
import 'package:dixweb1/openView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/octicons_icons.dart';

import '../Tab/crewTab.dart';
import '../Tab/homeTab.dart';
import '../loginview.dart';

class firstPage extends StatefulWidget {
  firstPage({super.key});

  @override
  State<firstPage> createState() => _firstState();
}

class _firstState extends State<firstPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(
    vsync: this,
    initialIndex: 0,
    length: 4,
  );
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final screenwidth = MediaQuery.of(context).size.width;
    bool _fullScreen = true;
    if (screenwidth >= 600) {
      _fullScreen = true;
    } else {
      _fullScreen = false;
    }

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xffdce7ed),
      body: Stack(
        children: [
          Center(
                  child: Container(
            width: 70,
            height: 70,
            child: SvgPicture.asset(
              "assets/svg/logo.svg",
              color: Palette.Magenta,
            ),
          ))
              .animate(delay: Duration(milliseconds: 200))
              .scale(duration: Duration(milliseconds: 500))
              .rotate(
                  duration: Duration(milliseconds: 500),
                  begin: -0.5,
                  end: 0,
                  curve: Curves.easeIn),
          Container(
            width: double.infinity,
            child: Stack(
              alignment: _fullScreen
                  ? AlignmentDirectional.topCenter
                  : AlignmentDirectional.topStart,
              children: [
                Container(
                    width: 1100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xfff6f7f9),
                        boxShadow: [
                          BoxShadow(blurRadius: 20, color: Colors.black12)
                        ]),
                    child: TabBarView(
                        controller: _tabController,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          homeTab(),
                          crewTab(),
                          portofolioTab(),
                          Container(color: Color(0xfff6f7f9)),
                        ])),
                Container(
                  padding: EdgeInsets.all(20),
                  width: 1100,
                  height: 90,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xfff6f7f9),
                      Color(0xfff6f7f9).withOpacity(0),
                    ],
                  )),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(blurRadius: 10, color: Colors.black12)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: SvgPicture.asset(
                          "assets/svg/logo.svg",
                          color: Color(crewColor[0]),
                        ),
                      ),
                      Spacer(),
                      _fullScreen
                          ? Container()
                          : Text(
                              "DIXON RUANG KREATIF",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(crewColor[1])),
                            ),
                      Spacer(),
                      _fullScreen
                          ? Container(
                              width: 470,
                              height: 40,
                              child: Row(
                                children: [
                                  TabBar(
                                      isScrollable: true,
                                      labelColor: Colors.blueGrey,
                                      indicatorSize: TabBarIndicatorSize.label,
                                      controller: _tabController,
                                      tabs: [
                                        Tab(text: "Home"),
                                        Tab(text: "Our Crew"),
                                        Tab(text: "Portofolio"),
                                        Tab(text: "About Us"),
                                      ]),
                                  Spacer(),
                                  ElevatedButton(
                                    onPressed: () {
                                      openView(context, loginView());
                                    },
                                    child: Text("Sign In"),
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(90, 40),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  ),
                                ],
                              ),
                            )
                          : PopupMenuButton(
                              padding: EdgeInsets.all(0),
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 12, color: Colors.black12)
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Icon(
                                  Octicons.kebab_horizontal,
                                  color: Palette.Magenta,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              itemBuilder: (context) => [
                                    PopupMenuItem(
                                      onTap: () => _tabController.index = 0,
                                      child: Row(
                                        children: [
                                          (_tabController.index.toInt() == 0)
                                              ? Container(
                                                  height: 20,
                                                  width: 5,
                                                  margin: EdgeInsets.only(
                                                      right: 10),
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)))
                                              : Container(),
                                          Text("Home"),
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem(
                                        onTap: () => _tabController.index = 1,
                                        child: Row(
                                          children: [
                                            (_tabController.index.toInt() == 1)
                                                ? Container(
                                                    height: 20,
                                                    width: 5,
                                                    margin: EdgeInsets.only(
                                                        right: 10),
                                                    decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)))
                                                : Container(),
                                            Text("Our Crew"),
                                          ],
                                        )),
                                    PopupMenuItem(
                                        onTap: () => _tabController.index = 2,
                                        child: Row(
                                          children: [
                                            (_tabController.index.toInt() == 2)
                                                ? Container(
                                                    height: 20,
                                                    width: 5,
                                                    margin: EdgeInsets.only(
                                                        right: 10),
                                                    decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)))
                                                : Container(),
                                            Text("Portofolio"),
                                          ],
                                        )),
                                    PopupMenuItem(
                                        onTap: () => _tabController.index = 3,
                                        child: Row(
                                          children: [
                                            (_tabController.index.toInt() == 3)
                                                ? Container(
                                                    height: 20,
                                                    width: 5,
                                                    margin: EdgeInsets.only(
                                                        right: 10),
                                                    decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)))
                                                : Container(),
                                            Text("About Us"),
                                          ],
                                        )),
                                    PopupMenuItem(
                                      enabled: false,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          openView(context, loginView());
                                        },
                                        child: Text("Sign In"),
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: Size(145, 40),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    )
                                  ])
                    ],
                  ),
                ),
              ],
            ),
          )
              .animate(
                delay: Duration(seconds: 2),
              )
              .fadeIn(duration: Duration(milliseconds: 500))
              .slideY(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                  end: 0,
                  begin: 1),
        ],
      ),
    );
  }
}

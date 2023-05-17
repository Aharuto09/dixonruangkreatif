import 'package:dixweb1/Module/pallete.dart';
import 'package:dixweb1/View/Page/firstPage.dart';
import 'package:dixweb1/View/Tab/crewTab.dart';
import 'package:dixweb1/View/Tab/mainTab.dart';
import 'package:dixweb1/View/Tab/portofolioTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class mainPage extends StatefulWidget {
  mainPage({super.key});

  @override
  State<mainPage> createState() => _mainState();
}

class _mainState extends State<mainPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(
    vsync: this,
    initialIndex: 0,
    length: 4,
  );
  List<String> textMenu = [
    "Profile",
    "History",
    "Order",
    "Bookmark",
    "Portfoilo",
  ];
  List<IconData> iconMenu = [
    FontAwesome5.address_book,
    FontAwesome5.backspace,
    FontAwesome5.car_crash,
    FontAwesome5.dice_d6,
    FontAwesome5.eraser,
  ];
  bool _showMenu = false;
  int selectedMenu = 0;
  @override
  Widget build(BuildContext context) {
    double lebar = MediaQuery.of(context).size.width;
    double tinggi = MediaQuery.of(context).size.height;
    bool _fullScreen = true;

    if (lebar >= 600) {
      _fullScreen = true;
    } else {
      _fullScreen = false;
    }
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xffdce7ed),
        body: Stack(
          children: [
            Center(
              child: Container(
                width: 1100,
                height: double.infinity,
                decoration: BoxDecoration(color: Color(0xfff6f7f9), boxShadow: [
                  BoxShadow(blurRadius: 24, color: Colors.black12)
                ]),
                child: ClipRRect(
                  child: Container(
                    height: tinggi,
                    width: 1100,
                    child: Stack(children: [
                      Container(
                        // padding: EdgeInsets.only(left: 40),
                        child: TabBarView(
                            controller: _tabController,
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              mainTab(),
                              crewTab(),
                              portofolioTab(),
                              Container(),
                            ]),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, left: 130, right: 70),
                        height: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xfff6f7f9),
                            Color(0xfff6f7f9).withOpacity(0),
                          ],
                        )),
                        child: TabBar(
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
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/svg/logo.svg",
                              color: Palette.Magenta,
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Dixon",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Palette.Magenta),
                            ),
                          ],
                        ),
                      ),
                      AnimatedPositioned(
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 300),
                        // ignore: dead_code
                        right: _showMenu ? 0 : -300,
                        child: Stack(
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                              height: tinggi,
                              width: 300,
                              margin: EdgeInsets.only(left: 80),
                              padding: EdgeInsets.symmetric(vertical: 40),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 24,
                                        color: _showMenu
                                            ? Colors.black26
                                            : Colors.transparent)
                                  ]),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                        child: CircleAvatar(
                                      maxRadius: 70,
                                      minRadius: 50,
                                      backgroundImage: AssetImage(
                                          "assets/image/image_placeholder.jpg"),
                                      backgroundColor: Color(0xfff6f7f9),
                                    )),
                                    SizedBox(height: 30),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          for (var i = 0; i < 5; i++)
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: ListTile(
                                                title: Text(textMenu[i],
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.blueGrey,
                                                    )),
                                                leading: Icon(
                                                  iconMenu[i],
                                                  size: 20,
                                                  color: Colors.blueGrey,
                                                ),
                                                onTap: () {},
                                              ),
                                            )
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 40),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                    title: Text("Logout"),
                                                    content:
                                                        Text("Are you sure ?"),
                                                    actions: [
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Text("no")),
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.of(context).pushAndRemoveUntil(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            firstPage()),
                                                                (Route<dynamic>
                                                                        route) =>
                                                                    false);
                                                          },
                                                          child: Text("yes")),
                                                    ],
                                                  ));
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(15),
                                            width: double.infinity,
                                            child: Text("Sign Out")),
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                  ]),
                            ),
                            AnimatedPositioned(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                              top: 20,
                              left: _showMenu ? 50 : 0,
                              child: FloatingActionButton(
                                  heroTag: "button-menu",
                                  backgroundColor: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      _showMenu = !_showMenu;
                                    });
                                  },
                                  child: Icon(
                                      size: 15,
                                      _showMenu
                                          ? FontAwesome5.chevron_left
                                          : FontAwesome5.bars,
                                      color: Palette.Magenta)),
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

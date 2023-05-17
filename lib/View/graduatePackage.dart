import 'package:dixweb1/Module/pallete.dart';
import 'package:dixweb1/View/Page/bookingPage.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class graduatePackage extends StatefulWidget {
  graduatePackage({super.key, required this.link, required this.Itag});
  String link, Itag;

  @override
  State<graduatePackage> createState() => _graduateState();
}

class _graduateState extends State<graduatePackage> {
  bool _sameday = false, _graduateVideo = false;
  int person = 0, extraEdit = 0;
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;

    bool _hideImage = true;
    if (screenwidth >= 700) {
      _hideImage = true;
    } else {
      _hideImage = false;
    }
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Container(color: Colors.black26),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 750, maxWidth: 900),
                  child: Container(
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _hideImage
                            ? Expanded(
                                child: Container(
                                  height: double.infinity,
                                  child: Hero(
                                    tag: widget.Itag,
                                    child: FadeInImage.assetNetwork(
                                        placeholder:
                                            "assets/image/image_placeholder.jpg",
                                        image: widget.link,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              )
                            : Container(),
                        Stack(
                          children: [
                            Container(
                              width: _hideImage ? 400 : screenwidth - 100,
                              padding: EdgeInsets.only(
                                  top: 20, right: 20, bottom: 20, left: 30),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text("Personal Package",
                                          style: TextStyle(
                                              color: Color(crewColor[1]),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w800)),
                                    ),
                                    SizedBox(height: 30),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: Color(crewColor[2])
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Text(
                                        "Description",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Color(crewColor[2]),
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                        "Celebrate Your Graduation with the Personal Package for Graduation Photography. Capture the memories of this important milestone with ease. Our Personal Package for Graduation Photography includes everything you need to make your graduation photos stand out."),
                                    SizedBox(height: 30),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                      decoration: BoxDecoration(
                                          color:
                                              Palette.Magenta.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Text(
                                        "What you get",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Palette.Magenta,
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                        "Unlimited Shoot \n\n30 Edited Photo \n\nAll Unedited Photos in GDrive"),
                                    SizedBox(height: 20),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: Color(crewColor[3])
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Text(
                                        "*Extra",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Color(crewColor[3]),
                                            fontSize: 12),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (person > 0) {
                                                    person--;
                                                  }
                                                });
                                              },
                                              icon: Icon(
                                                FontAwesome5.minus,
                                                size: 10,
                                              )),
                                          Container(
                                              height: 15,
                                              width: 20,
                                              alignment: Alignment.center,
                                              child: Text("$person")),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (person <= 50) {
                                                    person++;
                                                  }
                                                });
                                              },
                                              icon: Icon(
                                                FontAwesome5.plus,
                                                size: 10,
                                              )),
                                          SizedBox(width: 5),
                                          Text("Person"),
                                          Spacer(),
                                          Text("x 85k")
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (extraEdit > 0) {
                                                    extraEdit -= 10;
                                                  }
                                                });
                                              },
                                              icon: Icon(
                                                FontAwesome5.minus,
                                                size: 10,
                                              )),
                                          Container(
                                              height: 15,
                                              width: 20,
                                              alignment: Alignment.center,
                                              child: Text("$extraEdit")),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (extraEdit <= 50) {
                                                    extraEdit += 10;
                                                  }
                                                });
                                              },
                                              icon: Icon(
                                                FontAwesome5.plus,
                                                size: 10,
                                              )),
                                          SizedBox(width: 5),
                                          Text("Extra Edit"),
                                          Spacer(),
                                          Text("x 35k")
                                        ],
                                      ),
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Container(
                                            width: 103,
                                            alignment: Alignment.center,
                                            child: Checkbox(
                                                value: _sameday,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _sameday = value!;
                                                  });
                                                })),
                                        Text("Same day edit"),
                                        Spacer(),
                                        Text("100k")
                                      ],
                                    )),
                                    Container(
                                        child: Row(
                                      children: [
                                        Container(
                                            width: 103,
                                            alignment: Alignment.center,
                                            child: Checkbox(
                                                value: false,
                                                onChanged: (value) {})),
                                        Text("Graduation Video"),
                                        Spacer(),
                                        Text("450k")
                                      ],
                                    )),
                                    SizedBox(height: 70),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                    padding: EdgeInsets.only(
                                        bottom: 10,
                                        top: 10,
                                        left: 30,
                                        right: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("Price :   ",
                                            style: TextStyle(fontSize: 16)),
                                        Text("Rp. 350K",
                                            style: TextStyle(
                                                color: Color(crewColor[1]),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800)),
                                        Spacer(),
                                        Container(
                                          width: 140,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          bookingPage()));
                                            },
                                            child: Container(
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(15),
                                                width: double.infinity,
                                                child: Text("Book Now")),
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                          ),
                                        ),
                                      ],
                                    )))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 50,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.close),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

import 'package:dixweb1/Module/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class crewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Stack(children: [
        Container(color: Color(0xfff6f7f9)),
        Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xfff9dc5c),
                      image: DecorationImage(
                          image: AssetImage("assets/image/crewheader.png"),
                          fit: BoxFit.cover)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "This is Our Best Crew",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "Lorem Ipsum is a text",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: (screenwidth < 500) ? 40 : 200,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Our Team",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.black),
                ),
                Text(
                  "Meet Our Expert Team",
                  style: TextStyle(
                      // fontWeight: FontWeight.w400,
                      // fontSize: 1,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Wrap(
                    runAlignment: WrapAlignment.center,
                    alignment: WrapAlignment.center,
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      for (var i = 0; i < 6; i++)
                        GestureDetector(
                          onTap: () {
                            // _showSimpleDialog();
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => detailcrew()));
                            Navigator.of(context).push(new PageRouteBuilder(
                                opaque: false,
                                barrierDismissible: false,
                                pageBuilder: (BuildContext context, _, __) {
                                  return Scaffold(
                                    backgroundColor: Colors.transparent,
                                    body: SafeArea(
                                      child: Stack(
                                        children: [
                                          Container(
                                            color: Colors.black26,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Center(
                                              child: Stack(
                                                children: [
                                                  ConstrainedBox(
                                                    constraints: BoxConstraints(
                                                        minHeight: 600,
                                                        maxHeight: 800,
                                                        maxWidth: 400),
                                                    child: Container(
                                                      width: screenheight / 2,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10,
                                                              horizontal: 25),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                              blurRadius: 24,
                                                              color: Colors
                                                                  .black12)
                                                        ],
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child: Column(
                                                          children: [
                                                            Expanded(
                                                              flex: 2,
                                                              child: Stack(
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            20),
                                                                    child: Center(
                                                                        child: SvgPicture.asset(
                                                                      "assets/svg/logo.svg",
                                                                      height:
                                                                          300,
                                                                      width:
                                                                          300,
                                                                      color: Color(
                                                                          0xffdce7ed),
                                                                    )),
                                                                  ),
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            40),
                                                                    width: double
                                                                        .infinity,
                                                                    child: Hero(
                                                                      tag:
                                                                          "image$i",
                                                                      child:
                                                                          new Image(
                                                                        image: new AssetImage(
                                                                            "assets/image/crew/FTH.png"),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                                flex: 1,
                                                                child:
                                                                    Container(
                                                                  color: Colors
                                                                      .white,
                                                                  child: Column(
                                                                      children: [
                                                                        Text(
                                                                          "Nama Lengkap",
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.w700,
                                                                              fontSize: 24),
                                                                        ),
                                                                      ]),
                                                                )),
                                                            Container(
                                                              height: 10,
                                                              color: Color(
                                                                  crewColor[
                                                                      i % 4]),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    top: 40,
                                                    child: FloatingActionButton(
                                                      backgroundColor: Color(
                                                          crewColor[i % 4]),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Icon(Icons.close),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }));
                          },
                          child: Container(
                            height: 340,
                            width: 220,
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 20,
                                                color: Colors.black12)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                                Positioned(
                                  top: 50,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    height: 180,
                                    decoration: BoxDecoration(
                                        color: Color(crewColor[i % 4]),
                                        // border: Border.all(
                                        //     width: 5, color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Hero(
                                        tag: "image$i",
                                        child: Image.asset(
                                            "assets/image/crew/FTH.png"))),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //       blurRadius: 20,
                                        //       color: Colors.black12)
                                        // ],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Nama Panggilan",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(crewColor[i % 4]),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          "Photographer",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(crewColor[i % 4]),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

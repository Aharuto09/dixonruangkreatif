import 'package:dixweb1/Module/pallete.dart';
import 'package:dixweb1/View/regisview.dart';
import 'package:dixweb1/openView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class homeTab extends StatefulWidget {
  homeTab({super.key});

  @override
  State<homeTab> createState() => _homeTabState();
}

class _homeTabState extends State<homeTab> {
  @override
  Widget build(BuildContext context) {
    List<String> divisionName = [
      "Videographer",
      "Photographer",
      "Editor",
      "Creative Planner",
      "Drone Pilot",
      "Graphic Designer"
    ];
    List<String> ourService = [
      "Wedding",
      "Graduate",
      "Company Profile",
      "Film & TVC",
      "Video Production",
      "Graphic Design"
    ];
    List<String> ourServiceDetail = [
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
    ];
    final screenwidth = MediaQuery.of(context).size.width;
    bool _fullScreen = true;
    if (screenwidth >= 830) {
      _fullScreen = true;
    } else {
      _fullScreen = false;
    }
    Future<void> _showSimpleDialog() async {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              // <-- SEE HERE
              title: Center(child: const Text('Select Type')),
              children: <Widget>[
                Container(
                  height: 300,
                  width: 300,
                )
              ],
            );
          });
    }

    return Container(
        child: SingleChildScrollView(
            child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90),
              Stack(
                children: [
                  Container(
                    height: 600,
                    margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                        color: Color(0xffdce7ed),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.black12,
                                offset: Offset(0, 6))
                          ]),
                      child: Row(
                        children: [
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              openView(context, RegistView());
                            },
                            child: Text("Get Started"),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(120, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "What We Do",
                  style: TextStyle(
                      color: Palette.Magenta,
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Center(
                child: Text(
                  "Our Core Services",
                  style: TextStyle(
                    color: Palette.Magenta,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                  child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: [
                  for (var i = 0; i < 6; i++)
                    Container(
                      height: 230,
                      width: 165,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(blurRadius: 12, color: Colors.black12)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 60,
                              child: SvgPicture.asset(
                                "assets/svg/" + ourService[i] + ".svg",
                                color: Color(crewColor[i % 4]),
                              )),
                          SizedBox(height: 10),
                          Text(
                            ourService[i],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(crewColor[i % 4]),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 5),
                          Text(
                            ourServiceDetail[i],
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 12, color: Colors.blueGrey),
                          )
                        ],
                      ),
                    ),
                ],
              )),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Our Team Division",
                  style: TextStyle(
                      color: Color(crewColor[2]),
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    for (var i = 0; i < 6; i++)
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(blurRadius: 12, color: Colors.black12)
                            ],
                            color: Color(crewColor[i % 4]),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(
                            //   Icons.wine_bar,
                            //   size: 48,
                            //   color: Color(crewColor[i % 4]),
                            // ),
                            Text(
                              divisionName[i],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Work Flow",
                  style: TextStyle(
                      color: Color(crewColor[1]),
                      fontSize: 24,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(blurRadius: 24, color: Colors.black12)
                    ]),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Palette.Magenta,
          ),
        ),
      ],
    )));
  }
}

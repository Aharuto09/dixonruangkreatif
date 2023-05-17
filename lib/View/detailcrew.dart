import 'package:dixweb1/Module/pallete.dart';
import 'package:flutter/material.dart';

class detailcrew extends StatefulWidget {
  detailcrew({Key? key, required this.i}) : super(key: key);
  int i;
  State<detailcrew> createState() => _detailcrewState();
}

class _detailcrewState extends State<detailcrew> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.black26,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    margin: EdgeInsets.symmetric(vertical: 100, horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 24, color: Colors.black12)
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(40),
                                  width: double.infinity,
                                  child: Hero(
                                    tag: "image$widget.i",
                                    child: new Image(
                                      image: new AssetImage(
                                          "assets/image/crew/FTH.png"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  bottom: 20,
                                  child: Text(
                                    "Crew's Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 1, child: Container(color: Colors.white)),
                          Container(
                            height: 10,
                            color: Color(crewColor[widget.i % 4]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 120,
                    child: FloatingActionButton(
                      backgroundColor: Color(crewColor[widget.i % 4]),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.center,
                    alignment: WrapAlignment.center,
                    runSpacing: 20,
                    children: [
                      Container(
                          height: 400,
                          width: 350,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/image/PSW.png")))),
                      Container(
                          width: 400,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Graduation Photoshoot",
                                  style: TextStyle(
                                      color: Color(0xfff45c5c),
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Graduation is the completion of one chapter of life and the beginning of another, it's not the end, it's the beginning",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                              ])),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

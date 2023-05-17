import 'package:dixweb1/Module/pallete.dart';
import 'package:flutter/material.dart';

class portofolioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String linkDesign =
        "https://firebasestorage.googleapis.com/v0/b/dixonruangkreatif.appspot.com/o/design.jpg?alt=media&token=db9b453f-dc6e-4f8d-8af7-e9004b7d8f6d";
    String linkVideo =
        "https://firebasestorage.googleapis.com/v0/b/dixonruangkreatif.appspot.com/o/video.jpg?alt=media&token=413a98de-1c07-4eb9-a544-8f64b1f3d22d";
    String linkPhoto =
        "https://firebasestorage.googleapis.com/v0/b/dixonruangkreatif.appspot.com/o/DSC1669.JPG?alt=media&token=10500c24-58f6-45f4-ad76-c26f2b5452de";
    final screenwidth = MediaQuery.of(context).size.width;
    bool _fullScreen = true;
    if (screenwidth >= 600) {
      _fullScreen = true;
    } else {
      _fullScreen = false;
    }
    void openImage(String Itag, String link) {
      Navigator.of(context).push(new PageRouteBuilder(
          opaque: false,
          barrierDismissible: false,
          pageBuilder: (BuildContext context, _, __) {
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
                          constraints: BoxConstraints(
                            maxHeight: 600,
                          ),
                          child: Container(
                            margin: EdgeInsets.all(30),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Hero(
                              tag: Itag,
                              child: FadeInImage.assetNetwork(
                                  placeholder:
                                      "assets/image/image_placeholder.jpg",
                                  image: link,
                                  fit: BoxFit.cover),
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
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            );
          }));
    }

    ;
    return Container(
      color: Color(0xfff6f7f9),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 90),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffdce7ed))),
            SizedBox(height: 30),
            Center(
              child: Text(
                "Photos Portfolio",
                style: TextStyle(
                    color: Color(crewColor[0]),
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Center(
              child: Text(
                "Our Awesome Photos",
                style: TextStyle(
                    color: Color(crewColor[0]),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: _fullScreen ? 900 : 400),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  spacing: _fullScreen ? 10 : 5,
                  runSpacing: _fullScreen ? 10 : 5,
                  children: [
                    for (var i = 0; i < 6; i++)
                      GestureDetector(
                        onTap: () {
                          openImage("photo$i", linkPhoto);
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: _fullScreen ? 250 : 120,
                          width: _fullScreen ? 250 : 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 12, color: Colors.black12)
                              ],
                              borderRadius: BorderRadius.circular(5)),
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
                                      image: linkPhoto,
                                      fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: Text("See More"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(120, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                "Videos Portfolio",
                style: TextStyle(
                    color: Color(crewColor[1]),
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Center(
              child: Text(
                "Our Awesome Videos",
                style: TextStyle(
                    color: Color(crewColor[1]),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: _fullScreen ? 900 : 400),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  spacing: _fullScreen ? 10 : 5,
                  runSpacing: _fullScreen ? 10 : 5,
                  children: [
                    for (var i = 0; i < 6; i++)
                      GestureDetector(
                        onTap: () {
                          openImage("video$i", linkVideo);
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: _fullScreen ? 250 : 120,
                          width: _fullScreen ? 250 : 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 12, color: Colors.black12)
                              ],
                              borderRadius: BorderRadius.circular(5)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Hero(
                              tag: "video$i",
                              child:
                                  // Image.asset(
                                  //     "assets/image/image_placeholder.jpg"),
                                  FadeInImage.assetNetwork(
                                      placeholder:
                                          "assets/image/image_placeholder.jpg",
                                      image: linkVideo,
                                      fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: Text("See More"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(crewColor[1]),
                  fixedSize: Size(120, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                "Design Portfolio",
                style: TextStyle(
                    color: Color(crewColor[2]),
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Center(
              child: Text(
                "Our Awesome Design",
                style: TextStyle(
                    color: Color(crewColor[2]),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: _fullScreen ? 900 : 400),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  spacing: _fullScreen ? 10 : 5,
                  runSpacing: _fullScreen ? 10 : 5,
                  children: [
                    for (var i = 0; i < 6; i++)
                      GestureDetector(
                        onTap: () {
                          openImage("design$i", linkDesign);
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: _fullScreen ? 250 : 120,
                          width: _fullScreen ? 250 : 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 12, color: Colors.black12)
                              ],
                              borderRadius: BorderRadius.circular(5)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Hero(
                                tag: "design$i",
                                child:
                                    // Image.asset(
                                    //     "assets/image/image_placeholder.jpg")

                                    FadeInImage.assetNetwork(
                                        placeholder:
                                            "assets/image/image_placeholder.jpg",
                                        image: linkDesign,
                                        fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: Text("See More"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(crewColor[2]),
                  fixedSize: Size(120, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 60)
          ],
        ),
      ),
    );
  }
}

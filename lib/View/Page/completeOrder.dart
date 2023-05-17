import 'package:dixweb1/Module/pallete.dart';
import 'package:dixweb1/View/Page/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class completeOrder extends StatelessWidget {
  const completeOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              color: Color(0xffdce7ed),
            ),
            Container(
              width: 1100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 24, color: Colors.black12)],
                color: Color(0xfff6f7f9),
              ),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    "Terima Kasih",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(crewColor[1])),
                  )
                      .animate(delay: Duration(milliseconds: 100))
                      .slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeIn,
                          duration: Duration(milliseconds: 400))
                      .fadeIn(duration: Duration(milliseconds: 400)),
                  Text(
                    "Telah Memesan Jasa Kami",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                      .animate(delay: Duration(milliseconds: 400))
                      .slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeIn,
                          duration: Duration(milliseconds: 300))
                      .fadeIn(duration: Duration(milliseconds: 300)),
                  Animate(
                    delay: Duration(milliseconds: 600),
                    effects: [
                      FadeEffect(curve: Curves.easeIn),
                      ScaleEffect(curve: Curves.easeOut)
                    ],
                    child: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxHeight: 750, maxWidth: 900),
                        child: Image.asset("assets/image/ordered@2x.png")),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => mainPage()),
                              (Route<dynamic> route) => false);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text("Back to Home"),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )
                          .animate(
                            delay: Duration(milliseconds: 1000),
                          )
                          .fadeIn(curve: Curves.easeIn)
                          .scale(curve: Curves.easeOut),
                      // SizedBox(width: 10),
                      // ElevatedButton(onPressed: () {}, child: Text("")),
                    ],
                  ),
                  Spacer()
                ],
              ),
            ),
          ],
        ),
      ),
      onWillPop: () async => false,
    );
  }
}

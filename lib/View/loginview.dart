import 'package:dixweb1/Module/pallete.dart';
import 'package:dixweb1/View/Page/mainPage.dart';
import 'package:dixweb1/View/regisview.dart';
import 'package:dixweb1/openView.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginView extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    Future<bool> _cekLogin() async{
      // late DatabaseReference = new FirebaseDatabase().ref("");
      return false;
    }

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Container(color: Colors.black26)
            .animate()
            .fadeIn(delay: Duration(milliseconds: 100)),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  // padding: EdgeInsets.all(30),
                  // height: 800,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            // spreadRadius: 20,
                            blurRadius: 20,
                            color: Colors.black26)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Center(
                            child: Container(
                              height: 50,
                              width: 50,
                              child: SvgPicture.asset(
                                "assets/svg/logo.svg",
                                color: Color(crewColor[0]),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Color(crewColor[1]),
                                  fontSize: 36,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: TextField(
                              controller: username,
                              decoration: InputDecoration(
                                  label: Text("Username"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: TextField(
                              obscureText: true,
                              controller: password,
                              decoration: InputDecoration(
                                  label: Text("Password"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: ElevatedButton(
                              onPressed: () {
                                if (username.text == "admin" &&
                                    password.text == "admin") {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => mainPage()));
                                } else {
                                  // Navigator.pop(context);
                                  showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            // <-- SEE HERE
                                            title: const Text('Opss!'),
                                            content: SingleChildScrollView(
                                              child: ListBody(
                                                children: const <Widget>[
                                                  Text(
                                                      "Sorry, that username or password isn't right"),
                                                ],
                                              ),
                                            ),
                                            actions: <Widget>[
                                              TextButton(
                                                child: const Text('Try Again'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          ));
                                }
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(15),
                                  width: double.infinity,
                                  child: Text("Sign In")),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account ? "),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);

                                  openView(context, RegistView());
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Color(crewColor[0]),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 30),
                        ]),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 40,
                  child: FloatingActionButton(
                    backgroundColor: Color(crewColor[0]),
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
  }
}

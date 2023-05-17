import 'package:dixweb1/Module/pallete.dart';
import 'package:dixweb1/View/loginview.dart';
import 'package:dixweb1/openView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class RegistView extends StatefulWidget {
  const RegistView({super.key});

  @override
  State<RegistView> createState() => _RegistViewState();
}

class _RegistViewState extends State<RegistView> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    bool _fullScreen = true;
    if (screenwidth >= 800) {
      _fullScreen = true;
    } else {
      _fullScreen = false;
    }
    return Scaffold(
        backgroundColor: Colors.black26,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 750, maxWidth: 900),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xfff6f7f9),
                          boxShadow: [
                            BoxShadow(blurRadius: 20, color: Colors.black12)
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        width: 1100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _fullScreen
                                ? Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Get Your Account",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: Palette.Magenta),
                                          ),
                                          // SizedBox(height: 10),
                                          Text(
                                            "for more feature",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(crewColor[1])),
                                          ),
                                          SizedBox(height: 10),
                                          Image.asset(
                                              "assets/image/Regist@2x.png"),
                                        ],
                                      ),
                                    ))
                                : Container(),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Palette.Magenta),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 5),
                                      child: TextField(
                                        // controller: username,
                                        decoration: InputDecoration(
                                            label: Text("Username"),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 5),
                                      child: TextField(
                                        // controller: username,
                                        decoration: InputDecoration(
                                            label: Text("Email"),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 5),
                                      child: TextField(
                                        // controller: username,
                                        decoration: InputDecoration(
                                            label: Text("Password"),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 5),
                                      child: TextField(
                                        // controller: username,
                                        decoration: InputDecoration(
                                            label: Text("Password"),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 5),
                                      child: TextField(
                                        // controller: username,
                                        decoration: InputDecoration(
                                            label: Text("Password"),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 10),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(15),
                                            width: double.infinity,
                                            child: Text("Sign Up")),
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Already have an account ? "),
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);

                                            openView(context, loginView());
                                          },
                                          child: Text(
                                            "Sign In",
                                            style: TextStyle(
                                                color: Color(crewColor[0]),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
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
                )),
          ),
        ));
  }
}

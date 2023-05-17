import 'package:dixweb1/Module/pallete.dart';
import 'package:dixweb1/View/Page/bookingPage.dart';
import 'package:dixweb1/View/Page/firstPage.dart';
import 'package:dixweb1/View/Page/mainPage.dart';
import 'package:dixweb1/View/regisview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyA_73O90OBC6ExM3_zm05Z9W8uc4uPYg6g",
    appId: "1:899134510614:web:c0c9ae78521aa5fab74737",
    databaseURL:
        "https://dixonruangkreatif-default-rtdb.asia-southeast1.firebasedatabase.app/",
    messagingSenderId: "899134510614",
    storageBucket: "gs://dixonruangkreatif.appspot.com",
    projectId: "dixonruangkreatif",
    measurementId: "G-WBT1KS7LT3",
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.Magenta,
        fontFamily: "Montserrat",
      ),
      home: mainPage(),
    );
  }
}

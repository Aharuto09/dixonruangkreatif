import 'package:flutter/material.dart';

List<int> crewColor = [0xffed254e, 0xff465362, 0xff3c5caa, 0xfffdc62e];

class Palette {
  static const MaterialColor mainBlue = const MaterialColor(
    0xff3c5caa,
    const <int, Color>{
      50: const Color(0xff7693cc), //10%
      100: const Color(0xff6b87c4), //20%
      200: const Color(0xff607bbd), //30%
      300: const Color(0xff5571b6), //40%
      400: const Color(0xff4966b0), //50%
      500: const Color(0xff324c8f), //60%
      600: const Color(0xff263a74), //70%
      700: const Color(0xff172759), //80%
      800: const Color(0xff010c3b), //90%
      900: const Color(0xff000000), //100%
    },
  );
  //0xffed254e
  static const MaterialColor Magenta = const MaterialColor(
    0xffed254e,
    const <int, Color>{
      50: const Color(0xffef4e66), //10%
      100: const Color(0xffee435e), //20%
      200: const Color(0xffed3756), //30%
      300: const Color(0xffec284f), //40%
      400: const Color(0xffd82549), //50%
      500: const Color(0xffc82244), //60%
      600: const Color(0xffb9203e), //70%
      700: const Color(0xffaa1e39), //80%
      800: const Color(0xff931231), //90%
      900: const Color(0xff000000), //100%
    },
  );
}

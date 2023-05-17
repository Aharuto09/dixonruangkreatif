import 'package:flutter/material.dart';

void openView(BuildContext context, Widget page) {
  Navigator.of(context).push(new PageRouteBuilder(
      opaque: false,
      barrierDismissible: false,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      pageBuilder: (BuildContext context, _, __) {
        return page;
      }));
}

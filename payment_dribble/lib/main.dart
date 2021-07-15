import 'package:flutter/material.dart';
import 'package:payment_dribble/Page1.dart';
import 'package:payment_dribble/Page2.dart';
import 'package:payment_dribble/page3.dart';
import 'package:sizer/sizer.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/Page3',
          routes: {
            '/Page1': (context) => Page1(),
            '/Page2': (context) => Page2(),
            '/Page3': (context) => Page3(),
          },
        );
      },
    );
  }
}

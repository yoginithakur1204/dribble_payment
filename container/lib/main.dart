import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

 // double _width=180.0;
  //double _height=120.0;
 // Color _color=Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SizedBox(
            child: InkWell(
              child: Container(
                height:100.0,
                width:350.0,
                decoration: BoxDecoration(color: Colors.black,
                ),
              
              ),
              onTap: (){

              },
            ),
          ),
        ),
      ),
    );
  }
}

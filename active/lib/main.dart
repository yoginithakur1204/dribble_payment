import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home2(),
    );
  }
}

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "tab 1",
                ),
                Tab(
                  text: "tab 2",
                ),
              ],

            ),
          ),
          body: TabBarView(children: [
            Container(color:Colors.black),
            Container(color:Colors.red),
            
          ],),
        )
        );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavBarState();
  }
}

class BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown Menu'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.search,
              size: 28.0,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              tooltip: 'Menu',
              child: Icon(
                Icons.more_vert,
                size: 28.0,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.offline_bolt,
                        color: Colors.black54,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Item 01",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.offline_bolt,
                        color: Colors.black54,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Item 02",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.offline_bolt,
                        color: Colors.black54,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Item 03",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.offline_bolt,
                        color: Colors.black54,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Item 04",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.offline_bolt,
                        color: Colors.black54,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Item 05",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
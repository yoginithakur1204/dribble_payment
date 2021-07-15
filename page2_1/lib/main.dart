import 'package:flutter/material.dart';
import 'package:page2_1/LineCharts.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff07080d),
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            titleSpacing: 10.0,
            toolbarHeight: 100.0,

            // backgroundColor: Color(0xff31333e),
            backgroundColor: Color(0xff1b1226),
            // backgroundColor: Color(0xff1e2340),

            title: Text(
              "Bitcoin",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 7.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 7.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 32.0,
                                backgroundImage: AssetImage(
                                  "assets/bitcoin.png",
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            //////img

                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Current BTC Buy Price",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    "₹47,11,407",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.arrow_drop_down_sharp,
                                      size: 17,
                                      color: Color(0xffEC4646),
                                    )),
                                    TextSpan(
                                        text: "0.13%",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffEC4646),
                                        ))
                                  ])),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        LineCharts(),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Recent activity",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color(0xFF399D63),
                        color: Colors.blueGrey[900],

                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.black54, Colors.white10]),

                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage: AssetImage(
                                  "assets/bitcoin.png",
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 180.0),
                                      child: Text(
                                        "Buy",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "20 April 2021",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "+0.35 BTC",
                                style: TextStyle(
                                    color: Colors.green[900],
                                    fontSize: 12.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, right: 18.0, top: 5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.black54, Colors.white10]),
                          color: Colors.blueGrey[900],
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage: AssetImage(
                                  "assets/bt_green.jpg",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 185.0),
                                      child: Text(
                                        "Sell",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Montserrat'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "20 April 2020",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8.0,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "-0.35 BCH",
                                style: TextStyle(
                                    color: Colors.green[900],
                                    fontSize: 12.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 42.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 150,
                              child: MaterialButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 14.0, horizontal: 10.0),
                                onPressed: () {
                                  print(
                                    "Explore",
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                color: Colors.orange,
                                child: Text(
                                  "Buy",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 42.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 150,
                                child: MaterialButton(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 14.0, horizontal: 10.0),
                                  onPressed: () {
                                    print(
                                      "Explore",
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  color: Colors.white,
                                  child: Text(
                                    "Sell",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

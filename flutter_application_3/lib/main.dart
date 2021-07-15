import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_3/LineCharts.dart';
import 'package:flutter_application_3/page.dart';

//void main() => runApp(MyApp());
void main(){
  runApp(new MaterialApp(home: MyApp(),));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xff16151D),
       //backgroundColor: Color(0xff271f27),
      // backgroundColor: Color(0xff212325),
     // backgroundColor: Color(0xff191b21),

      appBar: AppBar(
        toolbarHeight: 100.0,
        // backgroundColor: Color(0xff222831),
        backgroundColor: Color(0xff1D1B28),
        //backgroundColor: Color(0xff31333e),
        //backgroundColor: Color(0xff453161),

        title: SizedBox(
          height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back,",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "Rishabh",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage(
                  "assets/p.jpg",
                ),
              )
            ],
          ),
        ),
      ),

      body: ListView(children: [
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 4.0),
                        child: Text(
                          "Total worth",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "₹20,00,033",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.info,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5,
              width: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  // color: Color(0xFF393E46),
                  // color: Color(0xFF393E46),
                  //color: Color(0xff231E23),
                  // color: Color(0xff222831),
                  // color: Color(0xff424453),
                  color: Color(0xff252531),
                  //color: Color(0xff252531),

                  //color: Colors.blueGrey[900],

                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Buy Bitcoin and ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat',
                                fontSize: 17.0),
                          ),
                          Text("unlock your wallet",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                  fontSize: 17.0)),
                          SizedBox(
                            height: 12,
                            width: 0,
                          ),
                          Text(
                            "Original BTC",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(
                            height: 25,
                            width: 0,
                          ),
                          SizedBox(
                            width: 145,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                            
                            
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyApp1()));
                                },
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),

                                child: Text(
                                  'Explore',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                                /*style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),*/
                                  
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          
                        ],
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 50.0,
                                  top: 33.0,
                                ),
                                child: CircleAvatar(
                                    radius: 45.0,
                                    backgroundImage: AssetImage(
                                      "assets/photo.jpg",
                                    )),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ), //container
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 5.0, top: 10.0, left: 19.0, bottom: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text(
                    "Popular Currencies",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat",
                    ),
                  )),
                ],
              ),
            ),

            SizedBox(
              height: 15.0,
            ),

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            Padding(
              padding: EdgeInsets.only(right: 15.0, left: 15.0, bottom: 12.0),
              child: Container(
                decoration: BoxDecoration(
                  // color: Color(0xFF399D63),
                  color: Color(0xff252531),

                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                height: 80.0,
                width: 500.0,
                child: Card(
                  //color: Color(0xff222831),
                  //  color: Color(0xff1f2027),
                  color: Color(0xff252531),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 25.0,
                                backgroundImage: AssetImage(
                                  "assets/binance.jpg",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 10.0, right: 12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Binance Coin",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 55.0, bottom: 10.0),
                                child: Text(
                                  "BNB",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 5.0, left: 125.0),
                              child: Text(
                                "₹38,197",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 100.0, bottom: 10.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 3.0),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.arrow_drop_down_sharp,
                                        size: 17,
                                        color: Color(0xffEC4646),
                                      )
                                      ),
                                      TextSpan(
                                          text: "0.13%",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffEC4646),
                                          ))
                                    ])),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            Padding(
              padding: EdgeInsets.only(right: 15.0, left: 15.0, bottom: 12.0),
              child: Container(
                decoration: BoxDecoration(
                  // color: Color(0xFF399D63),
                  // color: Color(0xff424453),
                  color: Color(0xff252531),

                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                height: 80.0,
                width: 500.0,
                child: Card(
                  color: Color(0xff252531),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 25.0,
                                backgroundImage: AssetImage(
                                  "assets/Dogecoin.jpg",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 5.0, right: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Doge Coin",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 55.0, bottom: 15.0),
                                child: Text(
                                  "DOGE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.0, bottom: 5.0, left: 150.0),
                              child: Text(
                                "₹25.50",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 100.0, bottom: 10.0),
                              child: RichText(
                                  text: TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                  Icons.arrow_drop_up,
                                  size: 18,
                                  color: Colors.tealAccent[400],
                                )),
                                TextSpan(
                                    text: "0.13%",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.tealAccent[400],
                                    ))
                              ])),
                            )
                          ],
                        ),
                      ]),
                ),
              ),
            ),

            SizedBox(
              height: 3.0,
            ),
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(right: 15.0, left: 15.0, bottom: 12.0),
              child: Container(
                decoration: BoxDecoration(
                  // color: Color(0xFF399D63),
                  color: Color(0xff252531),

                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                height: 80.0,
                width: 500.0,
                child: Card(
                  color: Color(0xff252531),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 25.0,
                                backgroundImage: AssetImage(
                                  "assets/bytecoin.jpg",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 10.0, right: 12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Byte Coin",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 55.0, bottom: 10.0),
                                child: Text(
                                  "BCN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10.0,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 5.0, left: 140.0),
                              child: Text(
                                "₹0.0714",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 100.0, bottom: 10.0),
                              child: RichText(
                                  text: TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                  Icons.arrow_drop_up,
                                  size: 19,
                                  color: Colors.tealAccent[400],
                                )),
                                TextSpan(
                                    text: "0.13%",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.tealAccent[400],
                                    ))
                              ])),
                            )
                          ],
                        ),
                      ]),
                ),
              ),
            ),

            SizedBox(
              width: 8.0,
              height: 5.0,
            ),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            Padding(
              // padding: EdgeInsets.all(15.0),
              padding: EdgeInsets.only(right: 15.0, left: 15.0, bottom: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  // color: Color(0xFF399D63),
                  color: Color(0xff252531),

                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                height: 80.0,
                width: 500.0,
                child: Card(
                  color: Color(0xff252531),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 25.0,
                                backgroundImage: AssetImage(
                                  "assets/bitconnect.jpg",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 10.0, right: 12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BitConnect Coin",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 55.0, bottom: 10.0),
                                child: Text(
                                  "BCC",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontSize: 10.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 5.0, left: 105.0),
                              child: Text(
                                "₹20.58",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 100.0, bottom: 10.0),
                              child: RichText(
                                  text: TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 19,
                                  color: Color(0xffEC4646),
                                )),
                                TextSpan(
                                    text: "0.13%",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffEC4646),
                                    ))
                              ])),
                            )
                          ],
                        ),
                      ]),
                ),
              ),
            ),

            SizedBox(
              height: 3.0,
            ),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            /////////////////////////////////////////////////

            ///////////////////////////////////////////////////////
          ],
        ),
      ]),
    ));
  }
}





/*
class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            
            
            backgroundColor: Colors.blueGrey[900],
            title: Text(
              "Bitcoin",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
          ),
          body: ListView(
            children: [
              Column(
                
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,left: 7.0 ),
                    
                    child: Row(
                      children: [
                        Padding(
                    padding: const EdgeInsets.only(top: 15.0,left: 7.0 ),
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
                        SizedBox(width: 40.0,),
                        Column(
                          children: [
                            //////img

                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Current BTC But Price",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "₹49,000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(width: 30.0,),
                                Text("0.13%",
                                    style: TextStyle(
                                      color: Colors.red[900],
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold
                                    ))
                              ],
                            ),
                           
                            
                          ],
                        ),
                        SizedBox(width: 60.0,),
                         IconButton(
                                onPressed: () {},
                                icon: 
                                   Icon(Icons.notifications,color: Colors.white,)),
                         
                              
                      ],
                    ),
                  ),
                  SizedBox(height: 25.0,),
                 Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       LineCharts(),
                       Padding(padding: EdgeInsets.all(20.0),)
                     ],
                   ),
                 ),
                 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Recent Activities",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                                       // color: Color(0xFF399D63),
                                      color: Colors.blueGrey[900],

                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.black87,Colors.white10]),

                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                         
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left:25.0),
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
                                padding:  EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    
                                    Padding(
                                            padding: const EdgeInsets.only(right: 165.0),
                                      child: Text(
                                        "Buy",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      "20 April 2020",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    
                                  ],
                                ),
                              ),
                              Text(
                                    "+0.13%",
                                    style: TextStyle(
                                        color: Colors.green[900], fontSize: 18.0),
                                  ),
                            ],
                           
                          ),
                        ),
                      ),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
  gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.black87,Colors.white10]),
                          color: Colors.blueGrey[900],
                          borderRadius: BorderRadius.all(Radius.circular(15.0))),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left:25.0),
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
                                          
                                          padding: const EdgeInsets.only(right: 165.0),
                                          child: Text(
                                            
                                            "Sell",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "20 April 2020",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                
                              
                              Text(
                                    "+0.13%",
                                    style: TextStyle(
                                        color: Colors.red[900], fontSize: 18.0),
                                  ),
                            ],
                           
                          ),
                        ),
                      ),
                  ),
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
                              //////////////////////
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16))),
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
*/



  /*Column(
                                       children: [
                                         Padding(
                                           padding: const EdgeInsets.only(top: ),
                                           child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color: Colors.red,
                                    size: 14.0,
                                    
                                )
                                ),



                                         ),
                                       ],
                                     ),*/



                                      /* child: MaterialButton(
                              onPressed: () {
                                
                                Navigator.push(context, new MaterialPageRoute(builder: (context)=>MyApp1()));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              color: Colors.white,
                              child: Text(
                                "Explore",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),*/
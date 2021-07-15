//import 'package:event_main_page_1/Container.dart';

import 'package:flutter/material.dart';
//import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            )),
            toolbarHeight: 140.0,
            backgroundColor: Colors.grey[200],
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 25.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 3.0, right: 5.0),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
            bottom: TabBar(
              indicatorWeight: 4.0,
              // indicatorSize: ,
              labelColor: Color(0xFF7F71D9),
              indicatorColor: Colors.deepPurple[300],

              unselectedLabelColor: Color(0xFF666666),
              isScrollable: true,

              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text(
                          'Events',
                          style: TextStyle(
                              //  color: Colors.grey[700],
                              fontSize: 22.0,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text(
                          'Activities',
                          style: TextStyle(
                              // color: Colors.grey[700],
                              fontSize: 22.0,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Container(
                      child: Text(
                        'Growth+',
                        style: TextStyle(
                            // color: Colors.grey[700],
                            fontSize: 22.0,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: <Widget>[
              Flexible(
                child: ListView(scrollDirection: Axis.horizontal, children: <
                      Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 35.0,
                          child: MaterialButton(
                            onPressed: () {},
                            // color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                side: BorderSide(color: Color(0xffD6D6D6))
                                //side: BorderSide(color: Colors.grey)
                                ),
                            child: Text(
                              'Time',
                              style: TextStyle(
                                  fontSize: 14.0, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              side: BorderSide(color: Color(0xffD6D6D6))
                              //side: BorderSide(color: Colors.grey)
                              ),
                          child: Text(
                            'Type',
                            style:
                                TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              side: BorderSide(color: Color(0xffD6D6D6))
                              //side: BorderSide(color: Colors.grey)
                              ),
                          child: Text(
                            'Location',
                            style:
                                TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              side: BorderSide(color: Color(0xffD6D6D6))
                              //side: BorderSide(color: Colors.grey)
                              ),
                          child: Text(
                            'Organization',
                            style:
                                TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              side: BorderSide(color: Color(0xffD6D6D6))
                              //side: BorderSide(color: Colors.grey)
                              ),
                          child: Text(
                            'Date',
                            style:
                                TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  ]),
                
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 150.0),
                child: DefaultTabController(
                    length: 2, // length of tabs
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: TabBar(
                            labelColor: Color(0xFF7F71D9),
                            indicatorColor: Colors.deepPurple[300],
                            unselectedLabelColor: Color(0xFF666666),
                            tabs: [
                              Tab(
                                child: Text(
                                  'Active',
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 18.0),
                                ),
                                // text: 'Active',
                              ),
                              Tab(
                                child: Text(
                                  'Previous',
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 18.0),
                                ),
                                // text: 'Active',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            //  border: Border.all(color: Color(0xFF7F71D9)
                            //  ),
                            border: Border.all(color: Color(0xffeeeeee)),

                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, left: 10.0),
                                    child: Image.asset('assets/small.jpg'),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   width: 20.0,
                              // ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, right: 10.0),
                                    child: Text(
                                      'Kareoke Nights',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90.0),
                                    child: Text(
                                      'Social',
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8.0,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Monday,22 Jun 2021  5pm',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 85.0),
                                    child: Text(
                                      '3 weeks',
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          // fontWeight:
                                          //FontWeight.w500,
                                          fontSize: 7.0,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50.0, top: 8.0),
                                    child: Icon(
                                      Icons.bookmark_outline_rounded,
                                      size: 30,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  SizedBox(height: 25.0),
                                  SizedBox(
                                    height: 30.0,
                                    width: 80.0,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 30.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        height: 30.0,
                                        width: 39.0,
                                        child: Center(
                                            child: Text(
                                          'Rs  500',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.0,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w800),
                                        )),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffeeeeee)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, left: 10.0),
                                    child: Image.asset('assets/small.jpg'),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   width: 20.0,
                              // ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, right: 10.0),
                                    child: Text(
                                      'Kareoke Nights',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90.0),
                                    child: Text(
                                      'Social',
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8.0,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Monday,22 Jun 2021  5pm',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 85.0),
                                    child: Text(
                                      '3 weeks',
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          // fontWeight:
                                          //FontWeight.w500,
                                          fontSize: 7.0,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50.0, top: 8.0),
                                    child: Icon(
                                      Icons.bookmark_outline_rounded,
                                      size: 30,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  SizedBox(height: 25.0),
                                  SizedBox(
                                    height: 30.0,
                                    width: 80.0,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 30.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        height: 30.0,
                                        width: 39.0,
                                        child: Center(
                                            child: Text(
                                          'Rs  500',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.0,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w800),
                                        )),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 10.0,
                        ),


                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffeeeeee)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, left: 10.0),
                                    child: Image.asset('assets/small.jpg'),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, right: 10.0),
                                    child: Text(
                                      'Kareoke Nights',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90.0),
                                    child: Text(
                                      'Social',
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8.0,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Monday,22 Jun 2021  5pm',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 85.0),
                                    child: Text(
                                      '3 weeks',
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          // fontWeight:
                                          //FontWeight.w500,
                                          fontSize: 7.0,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50.0, top: 8.0),
                                    child: Icon(
                                      Icons.bookmark_outline_rounded,
                                      size: 30,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  SizedBox(height: 25.0),
                                  SizedBox(
                                    height: 30.0,
                                    width: 80.0,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 30.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        height: 30.0,
                                        width: 39.0,
                                        child: Center(
                                            child: Text(
                                          'Rs  500',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.0,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w800),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

//main cont
/* ListView(
                          children:[ Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                       border:
                                          Border.all(color: Colors.black),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                          image: DecorationImage(image: AssetImage('assets/veg.jpg'))
                                          ),
                                ),
                              ],
                            ),
                          ),
                          ]),
                          
                          
                          
                          
                          
                          
                          
                          
                          



                                SizedBox(
                                  height: 5.0,
                                ),
                                GestureDetector(
                                  child: Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xFFD1C4E9)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                  ),
                                ),
                                 SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFFD1C4E9)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          */

/*class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, // length of tabs
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: TabBar(
                  labelColor: Color(0xFF7F71D9),
                  unselectedLabelColor: Color(0xFF666666),
                  tabs: [
                    Tab(
                      text: 'Active',
                    ),
                    Tab(text: 'Previous'),
                  ],
                ),
              ),
              Container(
                  height: 400, //height of TabBarView
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5))),
                  child: TabBarView(children: <Widget>[
                    Container(
                      child: Center(
                        child: Text('Tab 1',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('Tab 2',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                  ),
                  ),
                 // Container(
                 // child: MaterialButton(onPressed: (){},color: Colors.black,),

                  //),
            ],
            ),
            );
  }
}*/
/*
body:  Container(
      child: Column( children: <Widget>[
      Flexible(child:ListView(scrollDirection: Axis.horizontal,
      children: [EventInfo('Time'),EventInfo('Type'),EventInfo('Organization'),EventInfo('Location'),EventInfo('Date')],)),
      DefaultTabController(
      length: 2, // length of tabs
          child: Column( children: <Widget>[
      Container(
      child: TabBar(
      labelColor: Color(0xFF7F71D9),
      unselectedLabelColor: Color(0xFF666666),
      tabs: [
      Tab(text: 'Active',),
      Tab(text: 'Previous'),
      ],
      ),
      ), 
      
      
      
      
      
      
      
      
      
      
      
      
      
             // EventInfo('Time'),EventInfo('Type'),EventInfo('Organization'),EventInfo('Location'),EventInfo('Date')],
*/
/*   Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, right: 5.0, left: 5.0),
                          child: Column(
                            children: [
                              (Row(
                                
                                children: [
                                  Container(
                                      height: 100,
                                      width: 375,
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Color(0xFFD1C4E9)),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(10)),
                                      ),
                                      
                    
                                        
                                          child: 
                                                  Text(
                                                    'Kareoke Night',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.black,
                                                      fontSize: 18.0,
                                                    ),
                                                  ),
                                                  child:Text(
                                                    'Social',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0),
                                                  )
                                                
                                              
                                            ),
                                          
                                        
                                      
                                    
                                   
                                  
                                ],
                              ))
                              ),
                            ],
                          ), */

import 'package:flutter/material.dart';
//import 'package:sizer/sizer.dart';

void main() {
  runApp(InnerContainer());
}

class InnerContainer extends StatefulWidget {
  @override
  _InnerContainerState createState() => _InnerContainerState();
}

class _InnerContainerState extends State<InnerContainer> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: 400.0,
            height: 350.0,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff949CDF)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        // Expanded(child: Image.asset('assets/t5.jpg',)),
                        Image.asset(
                          'assets/veg.jpg', height: 100.0,
                          // fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  /////////////////////////////////////////////////////////////////////////////////////////////////////
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: Text(
                              'Kareoke Night',
                              style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff949CDF)),
                            ),
                          ),
                          Column(
                            children: [],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 108.0),
                            child: Text(
                              'Organized by MIT',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),

                          /*  Column(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             LiteRollingSwitch(
                               value: true,
                               colorOn: Colors.deepPurple[300],
                               colorOff: Colors.white,

                             )

                         ],)*/
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10.0, right: 15.0),
                                  child: Text(
                                    'Social',
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Column(
                          // children: [Text('switch')],
                          //)
                        ],
                      )
                    ],
                  ),
                ),
                /////////////////////
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 37.0),
                                child: Text(
                                  "Monday,22 Jun 2021.5pm",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 97.0),
                            child: Text(
                              'W-125 Sadashiv Nagar',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17.0,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 245.0),
                            child: Text(
                              'Pune',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17.0,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 218.0),
                            child: Text(
                              "3 weeks ago",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey[500],
                                  fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 80.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              height: 35.0,
                              width: 70.0,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 15.0, left: 1.0),
                                        child: Text(
                                          'Last date',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w400
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                                Icons.bookmark_outline_rounded,
                                                size: 17,
                                                color: Color(0xffEC4646),
                                              ),
                                        ],
                                      ),
                                    ],
                                  )
                                 
                                ],
                              ),
                            ),  // short cont
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*Column(children: [

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Container(width: 400,
              height: 300,
              

                      ),
                      
            ),
          )

        ],
        
        ),

















Container(
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purpleAccent),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                   child: Padding(
                   padding: const EdgeInsets.only(bottom: 290.0),
                  child: Image.asset('assets/table.jpg',
                  height: 10.0,
                  width: 10.0,

                   ),
                   ),
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                    Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text(
                              "Social",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[600],
                                  fontSize: 16.0),
                                  
                            ),
                          ),
                           Text(
                              
                              " Organised by MIT",
                            textAlign: TextAlign.start ,

                              style: TextStyle(
                                
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[600],
                                  fontSize: 16.0
                                  ),

                            ), 
                          
                        ],
                      ),
                    ),
                  ) */

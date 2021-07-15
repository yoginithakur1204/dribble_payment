import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(
        title: '',
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;
  const MainPage({required this.title});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late String valueChoose;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              titleSpacing: 10.0,
              toolbarHeight: 100.0,
              title: Text(
                'Teams',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    fontFamily: 'Poppins'),
              ),
              actions: <Widget>[
                Icon(Icons.search, size: 25.sp, color: Colors.black),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ],
              backgroundColor: Colors.white,
            ),
            body: ListView(
              children: [
                 Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0,top: 20.0,),
                  child: Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.black54,
                  ),
                ), SizedBox(
                  width: 8.w,
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30.0,top: 20.0,),
                  child: Icon(
                    Icons.group,
                    color: Colors.black54,
                  ),
                ), SizedBox(
                  width: 13.w,
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30.0,top: 20.0,),
                  child: Icon(
                    Icons.chat,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30.0,top: 20.0,),
                  child: Icon(
                    Icons.note_alt_rounded,
                    color: Colors.black54,
                  ),
                ),

              ],
            ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: AssetImage(
                                    "assets/GT.jpg",
                                  ),
                                ),
                                SizedBox(width: 2.w,),
                               
                            
                            Text('Graphics Team',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp)
                                    
                                    ),
                                    

                          ],
                        ), 
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.keyboard_arrow_down,color: Colors.grey[400],
                          ),
                        ),
                        trailing: IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.grey[400],
                                ),
                                onPressed: showBottomSheet,
                              ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Position',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          
                         

                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: AssetImage(
                                    "assets/GT.jpg",
                                  ),
                                ),
                                SizedBox(width: 2.w,),
                               
                            
                            Text('Graphics Team',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp)
                                    
                                    ),
                                    

                          ],
                        ), 
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.keyboard_arrow_down,color: Colors.grey[400],
                          ),
                        ),
                        trailing: IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.grey[400],
                                ),
                                onPressed: showBottomSheet,
                              ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Position',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          )
                         

                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: AssetImage(
                                    "assets/GT.jpg",
                                  ),
                                ),
                                SizedBox(width: 2.w,),
                               
                            
                            Text('Graphics Team',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp)
                                    
                                    ),
                                    

                          ],
                        ), 
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.keyboard_arrow_down,color: Colors.grey[400],
                          ),
                        ),
                        trailing: IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.grey[400],
                                ),
                                onPressed: showBottomSheet,
                              ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),



                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Position',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                         

                        ],
                      ),
                    )
                  ],
                ),


                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: AssetImage(
                                    "assets/GT.jpg",
                                  ),
                                ),
                                SizedBox(width: 2.w,),
                               
                            
                            Text('Graphics Team',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp)
                                    
                                    ),
                                    

                          ],
                        ), 

                        leading: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.keyboard_arrow_down,color: Colors.grey[400],
                          ),
                        ),
                        trailing: IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.grey[400],
                                ),
                                onPressed: showBottomSheet,
                              ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Position',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          )
                         

                        ],
                      ),
                    )
                  ],
                ),
                 Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: AssetImage(
                                    "assets/GT.jpg",
                                  ),
                                ),
                                SizedBox(width: 2.w,),
                               
                            
                            Text('Graphics Team',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp)
                                    
                                    ),
                                    

                          ],
                        ), 

                        leading: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.keyboard_arrow_down,color: Colors.grey[400],
                          ),
                        ),
                        trailing: IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.grey[400],
                                ),
                                onPressed: showBottomSheet,
                              ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Position',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          )
                         

                        ],
                      ),
                    )
                  ],
                ),
                 Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: AssetImage(
                                    "assets/GT.jpg",
                                  ),
                                ),
                                SizedBox(width: 2.w,),
                               
                            
                            Text('Graphics Team',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp)
                                    
                                    ),
                                    

                          ],
                        ), 

                        leading: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.keyboard_arrow_down,color: Colors.grey[400],
                          ),
                        ),
                        trailing: IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.grey[400],
                                ),
                                onPressed: showBottomSheet,
                              ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Position',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          )
                         

                        ],
                      ),
                    )
                  ],
                ),
                 Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: AssetImage(
                                    "assets/GT.jpg",
                                  ),
                                ),
                                SizedBox(width: 2.w,),
                               
                            
                            Text('Graphics Team',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp)
                                    
                                    ),
                                    

                          ],
                        ), 

                        leading: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.keyboard_arrow_down,color: Colors.grey[400],
                          ),
                        ),
                        trailing: IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.grey[400],
                                ),
                                onPressed: showBottomSheet,
                              ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Team mates',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: AssetImage(
                                        "assets/photo.jpg",
                                      ),
                                    ),
                                ),
                                SizedBox(width: 5.w,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Sharad Pawar',
                                  style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp)
                                          
                                          ),
                                           Text('Position',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp)
                                      
                                      ),
                                     ],
                                   ),
                                   SizedBox(width: 30.w,),
                                      
                                       Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[400],
                                    size: 15.0,
                                  ),

                            ],),
                            
                          )
                         

                        ],
                      ),
                    )
                  ],
                ),
                 Padding(
                      padding: const EdgeInsets.only(top: 50.0, left: 250.0),
                      child: FloatingActionButton(
                        onPressed: _bottom,
                        tooltip: 'Increment',
                        child: Icon(
                          Icons.add,
                        ),
                        backgroundColor: Colors.deepPurple[400],

                        //  backgroundColor: Color(0xFF7F71D9)
                      ),
                    ),
              ],
            ),

           
            ),
      );
    });
  }

  void showBottomSheet() => showModalBottomSheet(
        enableDrag: false,
        isDismissible: false,
        shape: Border.all(
          color: Colors.black,
        ),
        /*shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),*/
        // barrierColor: Colors.orange.withOpacity(0.2),
        context: context,
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              //leading: Icon(Icons.share),
              title: Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text(
                  'Managing  team',
                  style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                ),
              ),
              onTap: () {
                Navigator.of(context).pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: ListTile(
                //leading: Icon(Icons.link),
                title: Text('View Team',
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins')),
                onTap: () => {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: ListTile(
                //leading: Icon(Icons.link),
                title: Text('Leave Team',
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins')),
                onTap: () => {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: ListTile(
                //leading: Icon(Icons.link),
                title: Text('Edit',
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins')),
                onTap: () => {},
              ),
            ),
            ListTile(
              leading: Icon(Icons.delete_outlined),
              title: Padding(
                padding: const EdgeInsets.only(right: 60.0,),
                child: Text('Delete',
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins')),
              ),
              onTap: () => {},
            ),
          ],
        ),
      );
  void _bottom() => showModalBottomSheet(
      context: context,
      builder: (context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                //leading: Icon(Icons.share),
                title: Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Create new  team',
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop(context);
                },
              ),
              ListTile(
                //leading: Icon(Icons.share),
                title: Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Managing  team',
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop(context);
                },
              ),
            ],
          ));
}

/* ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index){
                 return Container(
                   height: 12.h,
                   width: 10.w,
                  color: Colors.red,);
                }) 
                
                
                
              
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                                  */

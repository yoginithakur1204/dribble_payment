import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool check = false;
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return  AlertDialog(
        title:
         Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Role Name',
                      style:
                          TextStyle(fontSize: 15.sp, color: Color(0xff666666)),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff7F71D9)),
                        ),
                        hintText: "Location",
                        hintStyle: TextStyle(
                            color: Color(0xffC4C4C4), fontSize: 15.sp),
                      ),
                    ),
                    
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Role Color',
                style: TextStyle(fontSize: 15.sp, color: Color(0xff666666)),
              ),
             

                  ],
                ),
              ),
               SizedBox(
                height: 5.h,
              ),

  
              Text(
                'Role Settings',
                style: TextStyle(fontSize: 15.sp, color: Color(0xff666666)),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Administration",
                    style: (TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w400)),
                  ),
                  Transform.scale(
                    scale: 0.08.h,
                    child: CupertinoSwitch(
                        activeColor: Color(0xff7F71D9),
                        value: switchState,
                        onChanged: (bool value) {
                          setState(() {
                            switchState = value;
                          });

                          //Color(0xff7F71D9);
                        }),
                  ),
                ],
              ),


              Row(
                children: [
                  Text(
                    'Members will have every permission and also',
                    style: TextStyle(
                      fontSize: 8.sp,
                      color: Color(0xff666666),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "bypass team specific permissions",
                    style: (TextStyle(
                      fontSize: 8.sp,
                      color: Color(0xff666666),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Padding(
                        padding:  EdgeInsets.symmetric(vertical: 3.w,horizontal: 1.5.w),
                    child: MaterialButton(
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            color: Color(0xffC4C4C4), fontSize: 15.sp),
                      ),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                 /* MaterialButton(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 1.w, horizontal: 1.w),
                                    onPressed: () {
                                      
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6))),
                                    color: Colors.white,
                                    child: Text("Sell",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat-bold',
                                            fontSize: 15.0)),
                                  ),*/
                   
                  
                   MaterialButton(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: 3.w,horizontal: 1.5.w),
                        child: Text(
                          'OK',
                          style: TextStyle(color: Colors.white, fontSize: 15.sp),
                        ),
                      ),
                      onPressed: () {},
                      color: Color(0xff7F71D9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),


                  
                ],
              ),

             

            


            ],
          ),
        ),

      );
    }));
  }
}






























//                        'Members will have every permission and also',
//                        'bypass team specific permissions',
/* Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Administration',
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: Color(0xff666666),
                            fontWeight: FontWeight.w400),
                      ),
                     
                      Text(
                        'bypass team specific permissions',
                        style: TextStyle(fontSize: 8.sp),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Transform.scale(
                        scale: 0.07.h,
                        child: CupertinoSwitch(
                            activeColor: Color(0xff7F71D9),
                            value: switchState,
                            onChanged: (bool value) {
                              setState(() {
                                switchState = value;
                              });

                              //Color(0xff7F71D9);
                            }),
                      ),
                    ],
                  ),
                ],
              ),






                Text(
                        'Members will have every permission and also',
                        style: TextStyle(fontSize: 8.sp,
                                            color: Color(0xff666666),

                        ),
                        
                      ),

                Text("bypass team specific permissions", style: (
                    TextStyle( fontSize: 8.sp,
                    color: Color(0xff666666),
                    )
                   
                  ),),
              
              
              
              
              
              
              
              
              
              
              
              
              
              Column(
                    children: [
                      Transform.scale(
                        scale: 0.07.h,
                        child: CupertinoSwitch(
                            activeColor: Color(0xff7F71D9),
                            value: switchState,
                            onChanged: (bool value) {
                              setState(() {
                                switchState = value;
                              });

                              //Color(0xff7F71D9);
                            }),
                      ),
                    ],
                  ), */

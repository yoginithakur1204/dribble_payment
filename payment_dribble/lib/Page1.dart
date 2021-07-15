import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Page2.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Page1());
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
     // var querydata =MediaQuery.of(context;)
      // var screenWidth= MediaQuery.of(context).size.width;
      //var screenHeight= MediaQuery.of(context).size.height;
      return MaterialApp(
          home: Scaffold(
        body: SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xffE5EBF4),

            // appBar: AppBar(elevation: 0,backgroundColor:  Color(0xffE8F6EF),),
            body: ListView(children: [
                      

              Container(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/logo.jpg'),
                          radius: 55.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 10.h,
                      width: 90.w,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Email Address",
                            labelStyle:
                                TextStyle(fontSize: 14.sp,color: Colors.black, fontFamily: 'Poppins'),
                            hintText: 'Enter email id',
                            
                            hintStyle: TextStyle(color: Colors.grey[300],fontFamily: 'Poppins'),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.black,
                            ),
                            contentPadding: EdgeInsets.only(left: 2.w),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                color: Colors.grey.withOpacity(0.1),
                                blurRadius: 10.0,
                                offset: Offset(4.0, 4.5))
                          ]),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      height: 10.h,
                      width: 90.w,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 4.w, right: 2.5.w),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  fontSize: 14.sp, color: Colors.black,fontFamily: 'Poppins'),
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(color:Colors.grey[300],fontFamily: 'Poppins'),
                              prefixIcon: Icon(
                                Icons.lock_outlined,
                                color: Colors.black,
                              ),
                              suffixIcon: Icon(Icons.remove_red_eye_outlined,
                                  color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 2.w),
                            ),
                            obscureText: true,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                color: Colors.grey.withOpacity(0.1),
                                blurRadius: 10.0,
                                offset: Offset(4.0, 4.5))
                          ]),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    SizedBox(
                      height: 7.h,
                      width: 90.w,
                      child: MaterialButton(
                          color: Color(0xff484E82),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                          ),
                          onPressed: () {

                             Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page2()));
                          }),
                    ),
                    // SizedBox(
                    //   height: 2.h,
                    // ),
                    Padding(
                      padding: EdgeInsets.all(7.w),
                      child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 10.sp, color: Color(0xff484E82),fontFamily: 'Poppins'),
                          ),
                         // Spacer(),
                         SizedBox(width: 20.w,),
                          Text(
                            'Forgot password?',
                            style: TextStyle(
                                fontSize: 10.sp, color: Color(0xff484E82),fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ));
    }));
  }
}

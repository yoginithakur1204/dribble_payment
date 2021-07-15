import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_dribble/Page2.dart';
import 'package:sizer/sizer.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xffE5EBF4),
        appBar: AppBar(
          backgroundColor: Color(0xffE5EBF4),
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              // color: Color(0xff484E82),
              color: Colors.black,
            ),
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              });
            },
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ],
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          child: ListView(children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Transactions',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484E82),
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontFamily: 'Poppins',
                          color: Color(0xff484E82),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 18.w,
                      height: 3.5.h,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Color(0xff484E82),
                        child: Text(
                          'All',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w100,
                              fontSize: 8.sp),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      // decoration: BoxDecoration(boxShadow: [
                      //   BoxShadow(
                      //             spreadRadius: 2,
                      //             color: Colors.grey.withOpacity(0.1),
                      //             blurRadius: 10.0,
                      //             offset: Offset(4.0, 4.5))
                      // ]
                      // ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Container(
                      width: 22.w,
                      height: 3.5.h,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        child: Text(
                          'Income',
                          style: TextStyle(
                              color: Color(0xff484E82),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 8.sp),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Container(
                      width: 22.w,
                      height: 3.5.h,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        child: Text(
                          'Expense',
                          style: TextStyle(
                              color: Color(0xff484E82),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 8.sp),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 75.w),
                  child: Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: Color(0xff404479),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 10.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(23.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            // color: Color(0xff404479).withOpacity(0.4),
                            color: Colors.blueAccent.withOpacity(0.3),
                            blurRadius: 20.0,
                            offset: Offset(3.0, 4.5))
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(4.w),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 0.5.h),
                              child: Row(
                                children: [
                                  Text(
                                    'Payment',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Poppins'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0.1.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Payment from Andrea',
                                    style: TextStyle(
                                        fontSize: 7.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[500]),
                                  ),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  Text(
                                    '\$30.00',
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      color: Color(0xff484E82),
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
                SizedBox(height:20.h),



                // Container(
                // //  height: 20.h,

                //   decoration: BoxDecoration(
                //                         border: Border.all(
                //                             color:  Color(0xff484E82),
                //                             style: BorderStyle.solid,
                //                             width: 3),
                //                         // borderRadius: BorderRadius.all(
                //                         //   Radius.circular(60.0),
                //                         // ),
                //                       ),
                

                //   child:
                  
                   Container(
                     decoration: BoxDecoration(
                                        border: Border.all(
                                            color:  Color(0xff484E82),
                                            style: BorderStyle.solid,
                                            width: 5),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(60.0),
                                        ),
                                      ),
                
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/pic.jpg'),
                              radius: 55.0,
                            ),
                          ),
                //),
              ],
            ),
          ]),
        ),
      ));
    }));
  }
}

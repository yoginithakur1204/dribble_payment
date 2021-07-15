import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_dribble/Page1.dart';
import 'package:sizer/sizer.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double tragetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    return Sizer(builder: ((context, orientation, deviceType) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffE5EBF4),

          bottomNavigationBar: SizedBox(
            width:tragetWidth ,
            child: Row(
              
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page1()));
                    });
                  },
                  child: Container(
                    height: 5.h,
                    width: MediaQuery.of(context).size.width / 5,
                    child: Icon(
                      Icons.home_outlined,
                      size: 30,
                      color: Color(0xff484E82),
                    ),
                  ),
                ),
                Container(
                  height: 5.h,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Icon(
                    Icons.credit_card_rounded,
                    color: Color(0xff484E82),
                    size: 30,
                  ),
                ),
                // SizedBox(
                //   width: 20.w,
                //
                // ),
                Spacer(),
                Container(
                  height: 5.h,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Icon(
                    Icons.attach_money_rounded,
                    size: 30,
                    color: Color(0xff484E82),
                  ),
                ),
                Container(
                  height: 5.h,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                    color: Color(0xff484E82),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: Padding(
            padding: EdgeInsets.only(
              top: 5.h,
            ),
            child: Container(
              height: 5.h,
              width: 11.w,
              //decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(5)) ),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  size: 20,
                ),
                backgroundColor: Color(0xff484E82),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          //  backgroundColor: Color(0xffE5EBF4),
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(6.w),
                child: Container(
                  height: 50.h,
                  //width: 90.w,
                  width: tragetWidth,

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.short_text),
                            color: Color(0xff484E82),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            color: Color(0xff484E82),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 2.w,
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/pic.jpg'),
                              radius: 55.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        'Hira Riaz',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          color: Color(0xff484E82),
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'UX/UI Designer',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      IntrinsicHeight(
                        child: Padding(
                          padding: EdgeInsets.only(left: 1.w, right: 1.w),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      " \$8900",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xff484E82),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.w),
                                      child: Text(
                                        'Income',
                                        style: TextStyle(
                                            fontSize: 8.sp,
                                            color: Color(0xff484E82),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                color: Color(0xff484E82),
                                thickness: 0.2,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "\$5500",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xff484E82),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.w),
                                      child: Text(
                                        'Expenses',
                                        style: TextStyle(
                                            fontSize: 8.sp,
                                            fontFamily: 'Poppins',
                                            color: Color(0xff484E82),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                color: Color(0xff484E82),
                                // width: 40.w,

                                thickness: 0.2,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "\$890",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xff484E82),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.w),
                                      child: Text(
                                        'Loan',
                                        style: TextStyle(
                                            fontSize: 8.sp,
                                            fontFamily: 'Poppins',
                                            color: Color(0xff484E82),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            color: Color(0xff484E82).withOpacity(0.2),
                            blurRadius: 10.0,
                            offset: Offset(4.0, 4.5))
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.w),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Overview',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff484E82)),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    // Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 1.h, right: 10.w),
                      child: Container(
                        child: Stack(
                          children: <Widget>[
                            Icon(
                              Icons.notifications_none,
                              color: Colors.black,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 0.5.h, left: 4.w),
                                child: Container(
                                  height: 1.h,
                                  width: 1.5.w,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 7.w),
                      child: Text(
                        'Sept 13 ,2020',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Poppins',
                            color: Color(0xff484E82)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.h),
                child: Column(
                  children: [
                    Container(
                      height: 10.h,
                      // width: 90.w,
                      width: tragetWidth,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(23.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                color: Color(0xffE5EBF4).withOpacity(0.4),
                                blurRadius: 10.0,
                                offset: Offset(4.0, 4.5))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(4.w),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(
                                  Icons.arrow_upward_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                height: 10.h,
                                width: 12.w,
                                //width: tragetWidth,

                                decoration: BoxDecoration(
                                  color: Color(0xffE5EBF4),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 3.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.h),
                                    child: Text(
                                      'Sent',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  Text(
                                    'Sending payments to clients',
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),

                                  SizedBox(
                                    width: 16.w,
                                  ),

                                  //
                                ],
                              ),
                            ),
                            // SizedBox(width: 15.w,),
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    '\$150',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 2.5.h),
                    Container(
                      height: 10.h,
                      //width: 90.w,
                      width: tragetWidth,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(23.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                color: Colors.grey.withOpacity(0.4),
                                blurRadius: 10.0,
                                offset: Offset(4.0, 4.5))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(4.w),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(
                                  Icons.arrow_downward_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                height: 10.h,
                                width: 12.w,
                                decoration: BoxDecoration(
                                  color: Color(0xffE5EBF4),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 3.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.h),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Recieve',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    //mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Receiving Salary from company',
                                        style: TextStyle(fontSize: 8.sp),
                                      ),
                                      // SizedBox(
                                      //   width: 17.w,
                                      // ),
                                      Align(
                                        alignment: Alignment(1.00, 0.50),
                                        child: Text(
                                          '\$250',
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 2.5.h),
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
                                color: Colors.grey.withOpacity(0.4),
                                blurRadius: 10.0,
                                offset: Offset(4.0, 4.5))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(4.w),
                        child: Row(
                          children: [
                            Container(
                                child: Padding(
                                  padding: EdgeInsets.all(3.w),
                                  child: Container(
                                    // height: 4.h,
                                    // width: 7.w,
                                    child: Icon(
                                      Icons.attach_money_rounded,
                                      color: Colors.black,
                                      size: 20,
                                    ),

                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black,
                                          style: BorderStyle.solid,
                                          width: 3),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4.0),
                                      ),
                                      //shape: RoundedRectangleBorder
                                    ),
                                  ),
                                ),
                                height: 10.h,
                                width: 12.w,
                                decoration: BoxDecoration(
                                  color: Color(0xffE5EBF4),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                )),

                            //

                            //
                            SizedBox(
                              width: 2.8.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.h),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Loan',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Loan for Cars',
                                      style: TextStyle(fontSize: 8.sp),
                                    ),
                                    SizedBox(
                                      width: 40.w,
                                    ),
                                    Text(
                                      '\$400',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }));
  }
}

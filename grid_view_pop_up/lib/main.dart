import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(AddToTeam());
}

class AddToTeam extends StatefulWidget {
  @override
  _AddToTeamState createState() => _AddToTeamState();
}

class _AddToTeamState extends State<AddToTeam> {
  bool check = false;
  bool switchState = false;
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
        theme: ThemeData.light().copyWith(
          unselectedWidgetColor: Color(0xffF9F9F9),
        ),
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              toolbarHeight: 10.h,
              backgroundColor: Color(0xffF3F3F3),
              title: Text(
                'Add to a team',
                style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: Color(0xff363636),
                    fontWeight: FontWeight.w600),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.check),
                  color: Color(0xff7F71D9),
                  onPressed: () {},
                )
              ],
            ),
            body: SafeArea(
              child: Container(
                //width: 10.w,
                color: Color(0xffF3F3F3),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Role Name',
                            style: TextStyle(
                                fontSize: 15.sp, color: Color(0xff666666)),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff7F71D9)),
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
                            style: TextStyle(
                                fontSize: 15.sp, color: Color(0xff666666)),
                          ),
                        ],
                      ),
                    ),

                    /* Expanded(
                      child: GridView.count(crossAxisCount: 11,
                      children: [
                        Checkbox(
                                      value: check,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(9))),
                                      activeColor: Colors.black,
                                      onChanged: (a) {
                                        setState(() {
                                          check = a!;
                                        });
                                      }),
                      ],


                      
                      ),),*/

                    ListView.builder(itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            EdgeInsets.only(left: 3.w, right: 3.w, top: 2.w),
                        child: Card(
                          elevation: 0,
                          color: Color(0xffF9F9F9),
                          child: Container(
                            height: 18.w,
                            color: Color(0xff),
                            child: ListTile(
                              leading: Padding(
                                padding: EdgeInsets.only(top: 2.w),
                                child: Stack(children: [
                                  Icon(Icons.circle,
                                      color: Color(0xffC4C4C4), size: 15.w),
                                  Padding(
                                    padding: EdgeInsets.all(3.2.w),
                                    child: Text(
                                      'GT',
                                      style: GoogleFonts.poppins(
                                          color: Color(0xFF666666),
                                          fontSize: 6.w,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ]),
                              ),
                              title: Padding(
                                padding: EdgeInsets.only(top: 2.w),
                                child: Text(
                                  'Graphics Team',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.sp, color: Colors.grey[700]),
                                ),
                              ),
                              trailing: Padding(
                                padding: EdgeInsets.only(top: 2.w),
                                child: Checkbox(
                                    value: check,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9))),
                                    activeColor: Color(0xff7F71D9),
                                    onChanged: (a) {
                                      setState(() {
                                        check = a!;
                                      });
                                    }),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                    Text(
                      'Role Settings',
                      style:
                          TextStyle(fontSize: 15.sp, color: Color(0xff666666)),
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
                          padding: EdgeInsets.only(left: 12.w, bottom: 2.w),
                          child: MaterialButton(
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  color: Color(0xffC4C4C4), fontSize: 15.sp),
                            ),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: MaterialButton(
                            child: Text(
                              'OK',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.sp),
                            ),
                            onPressed: () {},
                            color: Color(0xff7F71D9),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      );
    }));
  }
}

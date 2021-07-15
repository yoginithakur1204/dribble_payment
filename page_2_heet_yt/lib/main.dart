import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(AddNewMember());
}

class AddNewMember extends StatefulWidget {
  @override
  _AddNewMemberState createState() => _AddNewMemberState();
}

class _AddNewMemberState extends State<AddNewMember> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 10.h,
            backgroundColor: Colors.white,
            title: Text(
              'Add to a team',
              style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {},
            ),
            // SvgPicture("images/check.svg"),
             /* IconButton(
                icon: Icon(Icons.check),
                color: Color(0xff7F71D9),
                onPressed: () {},
              )*/
            
          ),
          body: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 5.h,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd6d6d6),
                            ),
                            
                            
                            ),
                      fillColor: Colors.red,
                      prefixText: 'To:',
                      prefixStyle:  GoogleFonts.poppins(color: Color(0xff666666)),
                      hintText: "Type a team name",
                      hintStyle:  GoogleFonts.poppins(color: Color(0xffEBEBEB)),
                      

                            ),
                            
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(

                    //  itemCount: 5,
                    itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Card(
                      elevation: 0,
                      color: Color(0xffF9F9F9),
                      child: ListTile(
                        leading: Stack(children: [
                          Icon(Icons.circle, color: Color(0xffC4C4C4), size: 12.w),
                          Padding(
                            padding: EdgeInsets.all(3.w),
                            child: Text(
                              'GT',
                              style: GoogleFonts.poppins(
                                  color: Color(0xFF666666),
                                  fontSize: 5.w,
                                  fontWeight: FontWeight.w900),
                            ),
                          )
                        ]),
                        title: Text(
                          'Graphics Team',
                          style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.grey[700]),
                        ),
                        trailing: Checkbox(
                            value: check,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(9))),
                            activeColor: Color(0xff7F71D9),
                            onChanged: (a) {
                              setState(() {
                                check = a!;
                              });
                            }),
                      ),
                    ),
                  );
                }),
              )
            ],
          )),
        ),
      );
    }));
  }
}

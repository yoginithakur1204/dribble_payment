import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'addToPage_secondPage.dart';

void main() {
  runApp(AddNewMember());
}

class AddNewMember extends StatefulWidget {
  @override
  _AddNewMemberState createState() => _AddNewMemberState();
}

class _AddNewMemberState extends State<AddNewMember> {
  
List<String> filters=[
  'Graphics Team'
];

  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
        theme: ThemeData.light().copyWith(
          unselectedWidgetColor: Color(0xffF9F9F9)
        ),
        home: Scaffold(
          appBar: AppBar(
            
            toolbarHeight: 10.h,
            backgroundColor: Color(0xffF3F3F3),
            elevation: 0,
            
            title: Text(
              'Add to a team',
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
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
          body: SafeArea(child: MyApp(filters),
            ),
        ),
      );
    }));
  }
}
              
              
              
            /*  child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 3.h,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10.w),
                    child: Container(
                      width: 90.w,
                      decoration: BoxDecoration(color: Color(0xffF9F9F9)),
                      child:
                      
                       TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffd6d6d6),
                                ),
                                
                                
                                ),
                          fillColor: Colors.red,
                          prefixText: 'To:',
                          prefixStyle: TextStyle(color: Color(0xff666666)),
                          hintText: "Type a team name",
                          hintStyle: TextStyle(color: Color(0xffEBEBEB)),
                          

                                ),
                                
                      ),
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
                      color: Color(0xffF9F9F9),
                      child: Container(
                        color: Color(0xff),
                        child: ListTile(
                          leading: Stack(children: [
                            Icon(Icons.circle, color: Color(0xffC4C4C4), size: 12.w),
                            Padding(
                              padding: EdgeInsets.all(3.w),
                              child: Text(
                                'GT',
                                style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 5.w,
                                    fontWeight: FontWeight.w900),
                              ),
                            )
                          ]),
                          title: Text(
                            'Graphics Team',
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.grey[700]),
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
                    ),
                  );
                }),
              )
            ],
          ),*/
        




















/*/* Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 3.w, right: 3.w, top: 4.w),
                          child: Container(
                            height: 10.h,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w),
                                  child: Stack(children: [
                                    Icon(Icons.circle,
                                        color: Colors.grey, size: 12.w),
                                    Padding(
                                      padding: EdgeInsets.all(3.w),
                                      child: Text(
                                        'GT',
                                        style: TextStyle(
                                            color: Color(0xFF666666),
                                            fontSize: 5.w,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    )
                                  ]),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  'Graphics Team',
                                  style: TextStyle(
                                      fontSize: 14.sp, color: Colors.grey[700]),
                                ),
                                SizedBox(
                                  width: 27.w,
                                ),
                                Checkbox(
                                    value: check,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(9))),
                                    activeColor: Color(0xff7F71D9),
                                    onChanged: (a) {
                                      setState(() {
                                        check = a!;
                                      });
                                    }),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                          );
                          
                          
                          
                          
                           /* ListView.builder(itemBuilder: (context, index) {
            return 
            
            Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 3.w, right: 3.w, top: 4.w),
                        child: Container(
                          height: 10.h,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5.w),
                                child: Stack(children: [
                                  Icon(Icons.circle,
                                      color: Colors.grey, size: 12.w),
                                  Padding(
                                    padding: EdgeInsets.all(3.w),
                                    child: Text(
                                      'GT',
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 5.w,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  )
                                ]),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                'Graphics Team',
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey[700]),
                              ),
                              SizedBox(
                                width: 27.w,
                              ),
                              Checkbox(
                                  value: check,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(9))),
                                  activeColor: Color(0xff7F71D9),
                                  onChanged: (a) {
                                    setState(() {
                                      check = a!;
                                    });
                                  }),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }
          )*/*/ */

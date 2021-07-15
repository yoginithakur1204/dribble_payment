import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class MyApp extends StatefulWidget {

late List<String> filters;

MyApp(this.filters);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String selectedValue;
    bool check = false;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return Container(
        color: Color(0xffF3F3F3),

         child: Column(
            children: [
              SizedBox(
                  height: 4.h,
                  child: Padding(
                    padding:  EdgeInsets.all(8.w),
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
              

              Expanded(
                child: ListView.builder(

                    itemBuilder: (context, index) {
                      

                  return Padding(
                    padding:  EdgeInsets.all(1.w),
                    child: Card(
                      elevation: 0,
                      color: Color(0xffF9F9F9),
                      child: Container(child: Row(children:<Widget> [
                        Radio(value: widget.filters, groupValue: selectedValue, onChanged: (s){})


                      ],),)
                      
                      /*Container(
                        color: Color(0xffF9F9F9),
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
                      ),*/
                    ),
                  );
                }),
              )
            ],
          ), 



      );
    }));
  }
}

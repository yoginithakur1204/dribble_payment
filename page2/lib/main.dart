import 'package:flutter/material.dart';

void main()=>runApp(MyPage());

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.white10,
      title:Text("Bitcoin",
      style:TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.bold),) ,
      ),
      
      body:
        Container(
          child: Column(
            children: [
              Row(children: [
                Column(children: [
                  CircleAvatar(radius: 30.0,
                    backgroundImage:AssetImage("assets/p1.jpg",) ,
                  
                 ),
                  ],
                  ),     
                   SizedBox(width: 20.0,),

                  Column(                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    
                    children: [
                                         SizedBox(width: 18.0,),

                     Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,


                  children: [      
                   Text("Current BTC buy price", 
                    style: TextStyle(
                      color: Colors.white,fontSize: 14.0,
                    ),
                    ),
                   
                  ],
                ),
                     Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,



                          children: [   Text("BNB               ",style: TextStyle(color: Colors.white),
                      ),
                    
                      Text("0.13%",style: TextStyle(color: Colors.red[900],fontSize: 10.0),),

                     
                    ],
                    ),
                      
                    ],
                  ),
                  Column(
                    children: [
                     // Icon(""),
                    ],
                  ),
                  
              ],
              ),
            ],
          
          ),

      
    

      ),
      ),
       
       );
    
  }
}

      
  
      
      
      
      
      
      
      
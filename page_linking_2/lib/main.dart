
import 'package:flutter/material.dart';
import 'img_pic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch:Colors.pink,

      ),
     // routes: {
       // 'a': (BuildContext context)=> HomeScreen() ,
      //},
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  final nameconroller = new TextEditingController();

   @override 
   Widget build(BuildContext context){
     return Scaffold(
        appBar:AppBar(title:Text("Home"),
        ),
body:Padding(
  padding:const EdgeInsets.all(50.0),
  child:Center(
    child:Column(
  children:<Widget>[
    
    Text("Enter name",style:TextStyle(fontSize:25.0),),

    TextField(
      decoration: InputDecoration(
              hintText: "enter your first name",
              labelText: "Name",
        enabledBorder:OutlineInputBorder(
          borderSide:BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30.0)
          )
          ),
           focusedBorder: OutlineInputBorder(
           borderSide:BorderSide(color: Colors.pinkAccent),
           borderRadius:BorderRadius.all(Radius.circular(30.0)
          ),
           ),
      ),
      
      
      controller: nameconroller,
      
      ),

    
    SizedBox(height: 20.0,),
    
    ElevatedButton(
      
      onPressed: (){
        var nameEntered= nameconroller.text;
      print("name $nameEntered");
      Navigator.push(context, MaterialPageRoute(builder: 
      (context)=> ScreenWelcome(guestname: nameEntered)
      )
      );

      },
      
      child: Text('enter',style: TextStyle(fontSize: 20.0),
      ),)
           ]
     ),
  ), 

),
     );
   }

}


class ScreenWelcome extends StatelessWidget{
  final namecontroller = new TextEditingController();
//final nameconroller;
final guestname;
ScreenWelcome({@required this.guestname});//, @required this.namecontroller});
 Widget build(BuildContext context)

{

return Scaffold(

  appBar:  AppBar(
    title: Text("welcome Screen"),
     ),
     body:Padding(
  padding:const EdgeInsets.all(50.0),
  child:Center(
    
    child:Column(
  children:<Widget>[

     // Text("Welcome $guestname"),

    Text("Enter  surname",style:TextStyle(fontSize:25),),

    TextField(
      decoration: InputDecoration(
                      hintText: "enter your last name",
                       labelText: "Last Name",

        enabledBorder:OutlineInputBorder(
          borderSide:BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30.0)
          )
          ),
           focusedBorder: OutlineInputBorder(
           borderSide:BorderSide(color: Colors.pinkAccent),
           borderRadius:BorderRadius.all(Radius.circular(30.0)
          ),
           ),
      ),
      
      
      
      
      
      
      controller: namecontroller),
    SizedBox(height: 20,),
    
    ElevatedButton(
      
      onPressed: (){
      var nameEntered1= namecontroller.text;
      
      print("surname $namecontroller");
     //  var nameEntered;
                Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return Screen2(guestname:  nameEntered1,   nameEntered1: guestname,);
                }
        )
        );

      },
      
      child: Text('enter',style: TextStyle(fontSize: 20.0),
      ),)
           ]
     ),
  ), 

),
);
  
}
}


class Screen2 extends StatelessWidget{
  final guestname;
  final nameEntered1;
  Screen2({
    @required this.guestname, @required this.nameEntered1
    });
@override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: Text(" Personal details "),),

      body:   Padding(
  padding:const EdgeInsets.all(15.0),
       child: 
        Center(child:Column(
  children:<Widget>[

         Text("Welcome $nameEntered1 $guestname ",style: TextStyle(
           
           fontSize: 20,
           color: Colors.black,
           //fontWeight: FontWeight.bold,
           decoration: TextDecoration.combine([
          TextDecoration.underline,
        //  TextDecoration.underline,
           ]),
           decorationColor: Colors.pinkAccent,
         ),),

    Text("Enter  age",style:TextStyle(fontSize:25),),

    SizedBox(height: 20.0),
    TextField(
        
       decoration: InputDecoration(
                hintText: "age",
              labelText: "Age",

         enabledBorder:OutlineInputBorder(
            borderSide:BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(30.0)
            )
            ),
             focusedBorder: OutlineInputBorder(
             borderSide:BorderSide(color: Colors.pinkAccent),
             borderRadius:BorderRadius.all(Radius.circular(30.0)
            ),
             ),
        ),
        keyboardType: TextInputType.number,
        
        
    

    ),

  
 Text("**please select an image** ",style: TextStyle(color: Colors.red),),
    
    
    ElevatedButton(

      onPressed: (){
          
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>HomeScreen(name: guestname, surname: nameEntered1,)));
      },
        child: Text('Image')     //,style: TextStyle(fontSize: 20.0)),
        
        )
     ]
     ),
  ),
      ),   
  );
  }

}
/*onPressed: (){
        
          Navigator.push(context, MaterialPageRoute(
             builder: (context)=>HomeScreen(name:guestname,surname:nameEntered1)  

             ));},*/



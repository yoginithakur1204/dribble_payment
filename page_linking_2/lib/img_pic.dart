

Pimport 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'package:image_picker/image_picker.dart';

//void main()=> runApp(MaterialApp(home: HomeScreen(),));

class HomeScreen  extends StatefulWidget {
 final String name , surname;
  HomeScreen({
 this.name,this.surname
  });
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen > {
  
  PickedFile imageURL;
  final  ImagePicker _picker = ImagePicker();

  Future getImageFromCameraGallery(bool isCamera) async{
    var image = await _picker.getImage(
      source: (isCamera == true)? ImageSource.camera : ImageSource.gallery);
      setState(() {
        imageURL = image;
      });	
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
         Container(

         
         child: imageURL ==null? Text("No img",style: TextStyle(
           fontSize: 20.0,
           color: Colors.black,
           decoration: TextDecoration.combine([
             TextDecoration.underline,
             TextDecoration.overline,
           ]),
           decorationColor: Colors.pinkAccent),) :Image.file(File(imageURL.path)),
         
        ),
          imageURL==null?Text(""):Text("This belongs to${widget.name} ${widget.surname}",
   style: TextStyle(fontSize: 20.0, decoration: TextDecoration.combine([
                     TextDecoration.underline, ]  )
                      ),
                                 ),
	
                
        ]),
      
        
        floatingActionButton:
          Column(
                mainAxisAlignment : MainAxisAlignment.end,
                children:[
                    
                  FloatingActionButton(
                    onPressed: (){
                      getImageFromCameraGallery(true);
                  
                    },

                    child: Icon(Icons.camera),
                  ),
                  SizedBox(height:15.0),
                  FloatingActionButton(
                    onPressed: (){        
                              getImageFromCameraGallery(false);
                              setState((){});
                             },
                             
                    child: Icon(Icons.photo_album),

                      

                  ),  
                 
                   
  
                ]
              
            
          
          
          ),  
      
    );
  }
}

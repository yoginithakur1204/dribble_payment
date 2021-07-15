import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

import './pages/auth.dart';

import 'package:udemy_final_project/pages/product.dart';
import './pages/products_admin.dart';
import 'h_products.dart';

void main() {
  //debugPaintSizeEnabled=true;
  //debugPaintBaselinesEnabled=true;
  //debugPaintPointersEnabled=true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget { 
@override
  State<StatefulWidget> createState() {
   return _MyAppState();    
  }

}

class _MyAppState extends State<MyApp>{
  List<Map<String, dynamic>> _products=[];
  void _addProduct(Map<String, dynamic> product){
        setState((){
              _products.add(product);
              });
              print(_products);
     }
void _updateProduct(int index, Map<String,dynamic>product){
  setState(() {
    _products[index]=product;
  });
}



      void _deleteProduct(int index){
        setState(() {
          _products.removeAt(index);
        });
      }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.pink,
        accentColor: Colors.deepPurpleAccent[100],
      ),

      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/products': (BuildContext context) => ProductsPage(_products),
        '/admin': (BuildContext context) =>
            ProductsAdminPage(_addProduct,_updateProduct, _deleteProduct,_products),
      },

       onGenerateRoute: (RouteSettings settings){
         final List<String> pathElements = settings.name.split('/');  
          if(pathElements[0] != ''){
          return null;
          }

          if(pathElements[1] == 'product'){
           final int index = int.parse(pathElements[2]);
           return MaterialPageRoute<bool>(
             builder: (BuildContext context)=>ProductPage(
             _products[index]['title'] , _products[index]['image']),
           );


          }
          return null;
         
       },
       onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder:(BuildContext context)=>
           ProductsPage(_products) );

       },
     );
     
      }
      }
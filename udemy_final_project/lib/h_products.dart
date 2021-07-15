

import 'package:flutter/material.dart';
//import 'package:udemy_final_project/product_manager.dart';

import '../widgets/Products/products.dart';


class ProductsPage extends StatelessWidget{
 final List<Map<String, dynamic>> products;
 
 ProductsPage(this.products);




  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
        
      AppBar(
        automaticallyImplyLeading: false,
        title: Text('choose'),),
      ListTile(
        leading: Icon(Icons.edit),
        title: Text('Manage Products'),
         onTap: () {
           Navigator.pushReplacementNamed(context ,'/admin');
           
         },
      )
      ],
      ),
      ),
      appBar: AppBar(
        title: Text('Easy List'),
        actions: [
          IconButton(icon: Icon(Icons.favorite),
          onPressed: (){
            
          },)
        ],
      ),
       body: Products(products),

    );
  }
  }

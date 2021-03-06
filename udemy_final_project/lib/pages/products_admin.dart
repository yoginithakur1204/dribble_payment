
import 'package:flutter/material.dart';
import 'product_edit.dart';
import './product_list.dart';




class ProductsAdminPage extends StatelessWidget{

  final Function addProduct;
   final Function updateProduct;
 

  final Function deleteProduct;
  final List<Map<String,dynamic>>products;
  


  
  ProductsAdminPage(this.addProduct,
this.updateProduct,
  this.deleteProduct, this.products);
  

  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 2,
     child:  Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
           AppBar(
            automaticallyImplyLeading: false,
              title: Text('choose'),
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('All Products'),
           onTap: () {
           Navigator.pushReplacementNamed(context, '/');
           },
          )
          
        ],
        )
        ),
        appBar:AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.create),
              text: 'Create Product',
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'my Product',
            ),
            

            
          ],
          ),
        ),
        body: TabBarView(children: <Widget>[

          ProductEditPage(addProduct:addProduct),
          ProductListPage(products,updateProduct,deleteProduct),
        

        ],)
    ) ,
    );   
  }
}
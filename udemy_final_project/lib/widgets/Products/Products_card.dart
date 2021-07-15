import 'package:flutter/material.dart';
import 'package:udemy_final_project/ui_elements/title_default.dart';
import 'package:udemy_final_project/widgets/Products/Price_tag.dart';
class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final int productIndex;
  ProductCard(this.product, this.productIndex);
  @override
  Widget build(BuildContext context) {
    return Card( 
             child: Column(
                children: <Widget>[
       Image.asset(product['image']),
       
       Container(
         padding: EdgeInsets.only(top:10.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children:<Widget> [
             TitleDefault(product['title']),
          
                SizedBox(
                  width: 8.0,
                  ),
                  PriceTag(product['price'].toString())
               
           ]
           ),
           ),

           Container(
             padding: EdgeInsets.symmetric(horizontal:6.0,vertical: 2.5),
             
             decoration: BoxDecoration(
             border: Border.all(color:Colors.pink,
               width:1.0
               ),
               borderRadius: BorderRadius.circular(5.0)
               ),
               child:Text("New Poona Bakery,Pune"),

               ),

       ButtonBar(
         alignment: MainAxisAlignment.center,
         children:<Widget>[

           IconButton(
             onPressed:()=> Navigator.
            pushNamed<bool>(
              context, '/product/' + productIndex.toString()),

           
           icon: Icon(Icons.info),
                      color: Colors.pinkAccent,

           ),
           //then((bool value){

         //  }),


           IconButton(
             onPressed:()=> Navigator.
            pushNamed<bool>(
              context, '/product/' + productIndex.toString()),
           icon: Icon(Icons.favorite_border),
           color: Colors.pinkAccent,
           
           ),

           //we can se icons or else button
        /* MaterialButton(
           child:Text('Details'), 
            onPressed:()=> Navigator.
            pushNamed<bool>(
              context, '/product/' + index.toString())
          /*  .then((bool value) {
                  if(value) {
                    deleteProduct(index);
                  }
                }),*/
            ),*/
            ],
            )
       ],
     ),
     );
  }
}


import 'package:flutter/material.dart';
import 'package:udemy_final_project/pages/product_edit.dart';

class ProductListPage extends StatefulWidget {   //dont use stateless widget

final Function updateProduct;
final Function deleteProduct;
final List<Map<String, dynamic>> products;
  

  ProductListPage(this.products, this.updateProduct, this.deleteProduct);

  

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: Key(widget.products[index]['title']),
          onDismissed: (DismissDirection direction){
            if(direction == DismissDirection.startToEnd){
              print('Swiped start to end');
            }
            else{
              print('end to start');
            }
            
          },
          background: Container(color: Colors.red,),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(widget.products[index]['image'])),
                title: Text(widget.products[index]['title']),
                subtitle: Text('\$${widget.products[index]['price'].toString()}'),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext context) {
                          return ProductEditPage(product:widget.products[index],
                          updateProduct: widget.updateProduct ,
                          productIndex: index,
                          );
                        }));
                  },
                ),
              ),
              Divider(),
            ],
          ),
        );
      },
      itemCount: widget.products.length,
    );
  }
}

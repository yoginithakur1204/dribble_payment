import 'package:flutter/material.dart';
//import 'package:udemy_final_project/widgets/helpers/13.2%20ensure_visible.dart.dart';
//import '../widgets/helpers/ensure_visible.dart';


class ProductEditPage extends StatefulWidget {
  final Function addProduct;
  final Function updateProduct;
  final int productIndex;

  final Map<String, dynamic> product;

  ProductEditPage({this.addProduct, this.product, 
  this.updateProduct, this.productIndex});

  @override
  State<StatefulWidget> createState() {
    return _ProductEditPageState();
  }
}

class _ProductEditPageState extends State<ProductEditPage> {
  final Map<String, dynamic> _formData = {
    'title': null,
    'description': null,
   'price': null,
    'image': 'assets/f.jpg'
  };
  //String _titleValue;
  // String _descriptionValue;
  // double _priceValue;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //final _titleFocusNode = FocusNode();

  Widget _buildTitleTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Product title'),

      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) {
          return 'Tiltle required';
        }
      },
      onChanged: (String value) {
        setState(() {
          _formData['title'] = value;
        });
      },
    );
  }

  Widget _buildProductTextField() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Product Description'),
        onSaved: (String value) {
          _formData['description'] = value;
        });
  }

  Widget _buildPriceTextField() {
    return (
        TextFormField(

        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: 'Product price'),
        initialValue: widget.product==null ?  '' : widget.product['price'].toString() ,

       // ignore: missing_return
       validator: (String value) {
          // if (value.trim().length <= 0) {
          if (value.isEmpty ||
              !RegExp(r'^(?:[1-9]\d*|0)?(?:\.\d+)?$').hasMatch(value)) {
            return 'Price is required and should be a number.';
          }
        },
        onSaved: (String value) {
          _formData['price'] = double.parse(value);
        },
        
        
    ));
  }

  void _submitForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    if(widget.product==null){
    widget.addProduct(_formData);
    }
    else{
      widget.updateProduct(widget.productIndex,_formData);
    }
    /*  final Map<String,dynamic> product = {
          'title':_titleValue,
          'description':_descriptionValue,
          'price': _priceValue,
          'image': 'assets/f.jpg'
          };*/ //as we create null value ::::::::line no 16 17 18
    Navigator.pushReplacementNamed(context, '/products');
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    final double targetPadding = deviceWidth - targetWidth;
    final Widget pageContext=GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
          width: targetWidth,
          margin: EdgeInsets.all(10.0),
          child: Form(
              key: _formKey,
              child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: targetPadding / 2),
                  children: <Widget>[
                    _buildTitleTextField(),
                    _buildProductTextField(),
                    _buildPriceTextField(),

                    SizedBox(
                      height: 10.0,
                    ),

                    MaterialButton(
                      child: Text('Save '),
                      color: Theme.of(context).accentColor,
                      // color:Colors.orange,

                      textColor: Colors.black,

                      onPressed: _submitForm,
                    ),
                    //Text(titileValue)
                  ]))),
    );
    return widget.product ==null ? pageContext:Scaffold(
      appBar: AppBar(title:Text('Edit Product') ,
      ),
      body: pageContext,
    );
  }
}


/*MaterialButton(
      child: Text('save'),
      onPressed: (){
        showBottomSheet(context: context, builder: (BuildContext context){
        return Center(child:Text('this is a modal'));
        });//to add more info
      },
      
      
      );
       */
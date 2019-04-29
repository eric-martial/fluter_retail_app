import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  const ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreateState();
  }
}

class _ProductCreateState extends State<ProductCreatePage> {
  String _title = '';
  String _description = '';
  double _price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(50.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Product Title'),
              onChanged: (String value) {
                setState(() {
                  _title = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Description'),
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              onChanged: (String value) {
                setState(() {
                  _description = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onChanged: (String value) {
                setState(() {
                  _price = double.parse(value);
                });
              },
            ),
            RaisedButton(
              child: Text('Save'),
              onPressed: () {
                final Map<String, dynamic> product = {
                  'title': _title,
                  'description': _description,
                  'price': _price,
                  'imageUrl': 'assets/some_food.jpg'
                };
                widget.addProduct(product);
                Navigator.pushReplacementNamed(context, '/');
              },
            )
          ],
        ));
  }
}

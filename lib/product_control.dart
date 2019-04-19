import 'dart:math';

import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  final int _randomImageNumber = Random().nextInt(200);

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct({"title": _randomImageNumber.toString(), "imageUrl": 'assets/some_food.jpg'});
      },
      child: Text('Add Product'),
    );
  }
}

import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Productos'),
        ),
        body: _productContent(context)
    );
  }

  Widget _productContent(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
      children: <Widget>[
        new Text('Productos')
      ],
    );
  }

}
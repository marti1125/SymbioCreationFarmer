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
        body: _productContent(context));
  }

  Widget _productContent(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
      children: <Widget>[

        Center(
          child: new Card(
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                      alignment: FractionalOffset.center,
                      width: 130,
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
                      child: new Image.asset(
                        'assets/fruit.png',
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    new Container(
                      child: new Text(
                        'Frutas y Vegetales',
                        style: new TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                    ),

                  ],
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('VER PEDIDOS'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Center(
          child: new Card(
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                      alignment: FractionalOffset.center,
                      width: 130,
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
                      child: new Image.asset(
                        'assets/natural_medicine.png',
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    new Container(
                      child: new Text(
                        'Medicina Natural',
                        style: new TextStyle(
                            fontSize: 20.0
                        ),
                      ),
                    ),

                  ],
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('VER PEDIDOS'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Center(
          child: new Card(
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                      alignment: FractionalOffset.center,
                      width: 130,
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
                      child: new Image.asset(
                        'assets/old.png',
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    new Container(
                      child: new Text(
                        'Huacos',
                        style: new TextStyle(
                            fontSize: 20.0
                        ),
                      ),
                    ),

                  ],
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('VER PEDIDOS'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}

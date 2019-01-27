import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Symbio Creation Farmer'),
      ),
      body: _mainContent(context)
    );
  }

  Widget _mainContent(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
      children: <Widget>[
        SizedBox(height: 12.0,),
        Image.asset('assets/farmer.png', scale: 2.0, width: 150.0, height: 150.0),
        SizedBox(height: 12.0,),
        RaisedButton(
          child: Text('PRODUCTOS'),
          onPressed: () {
            Navigator.pushNamed(context, '/product');
          },
        ),
        SizedBox(height: 12.0,),
        RaisedButton(
          child: Text('COMPOSTA'),
          onPressed: () {
            Navigator.pushNamed(context, '/compost');
          },
        ),
        SizedBox(height: 12.0,),
        RaisedButton(
          child: Text('SENSORES'),
          onPressed: () {
            Navigator.pushNamed(context, '/sensor');
          },
        ),
      ],
    );
  }

}
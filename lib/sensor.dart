import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SensorPage extends StatefulWidget {
  @override
  _SensorPageState createState() => _SensorPageState();
}

class _SensorPageState extends State<SensorPage> {

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
        new LinearPercentIndicator(
          width: 260.0,
          lineHeight: 20.0,
          leading: new Text("Sensor de Gas"),
          percent: 0.2,
          center: Text("20.0%"),
          linearStrokeCap: LinearStrokeCap.butt,
          progressColor: Colors.green,
        ),
        new LinearPercentIndicator(
          width: 260.0,
          lineHeight: 20.0,
          leading: new Text("Sensor de CO2"),
          percent: 0.2,
          center: Text("10.0%"),
          linearStrokeCap: LinearStrokeCap.butt,
          progressColor: Colors.green,
        ),
        new LinearPercentIndicator(
          width: 230.0,
          lineHeight: 20.0,
          leading: new Text("Sensor de Humedad"),
          percent: 0.2,
          center: Text("10.0%"),
          linearStrokeCap: LinearStrokeCap.butt,
          progressColor: Colors.green,
        ),
      ],
    );
  }

}
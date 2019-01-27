import 'package:flutter/material.dart';

class CompostPage extends StatefulWidget {
  @override
  _CompostPageState createState() => _CompostPageState();
}

class _CompostPageState extends State<CompostPage> {

  // TODO/FIX get from service
  List<String> _municipalities = <String>['',
  'Provincia de Atalaya',
  'Provincia de Coronel Portillo',
  'Provincia de Padre Abad',
  'Provincia de Purús'];

  List<String> _compastTypes = <String>['',
  'Básica',
  'Caliente',
  'Café',
  'Lombrices',
  'Avi-compostaje'];

  String newMuniValue;
  String newCompastValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Composta'),
        ),
        body: _compostContent(context)
    );
  }

  Widget _compostContent(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    return new ListView(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
      children: <Widget>[
        new DropdownButton<String>(
          items: _municipalities.map((String value) {
            return new DropdownMenuItem<String>(
              value: value,
              child: new Text(value),
            );
          }).toList(),
          onChanged: (String muni) {
            newMuniValue = muni;
            setState(() {
              newMuniValue;
              print(newMuniValue);
            });
          },
          hint: new Text("Seleccionar Municipalidad"),
          value: newMuniValue,
        ),
        new DropdownButton<String>(
          items: _compastTypes.map((String value) {
            return new DropdownMenuItem<String>(
              value: value,
              child: new Text(value),
            );
          }).toList(),
          onChanged: (String compast) {
            newCompastValue = compast;
            setState(() {
              newCompastValue;
            });
          },
          value: newCompastValue,
          hint: new Text("Seleccionar Tipo de Composta"),
        ),
        new TextFormField(
            keyboardType: TextInputType.text, // Use email input type for emails.
            decoration: new InputDecoration(
                hintText: 'Comentarios...',
            )
        ),
        new Container(
          width: screenSize.width,
          child: new RaisedButton(
            child: new Text(
              'Enviar Solicitud',
              style: new TextStyle(
                  color: Colors.white
              ),
            ),
            onPressed: () => null,
            color: Colors.blue,
          ),
          margin: new EdgeInsets.only(
              top: 20.0
          ),
        )
      ],
      );
  }

}
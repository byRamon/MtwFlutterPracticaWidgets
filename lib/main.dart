import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'layouts.dart';
 
void main() {
  debugPaintSizeEnabled = true; //         <--- enable visual rendering
  runApp(Layouts());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: myWidget(),
      ),
    );
  }
} 

Widget myWidget(){
  // list view builder
  return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Row $index'),
            onTap: () {
              // do something
            },
          );
        },
      );
  /*ListView
  return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemExtent: 30.0,
      itemBuilder: (BuildContext context, int index) {
        return Text('Row $index');
      },
    );*/
    /*Column(
    children: <Widget>[
      TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Sugerencia',
          fillColor: Colors.blueAccent,
          labelText: 'Escribe tu Nombre',
        ),
        textAlign: TextAlign.right,
      ),
      TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Sugerencia',
          fillColor: Colors.blueAccent,
          labelText: 'Escribe tu apellido',
        ),
      ),
    ],
  );*/
  /*
  return Column(
    children: <Widget>[
      RaisedButton(
        child: Text('Button Raised'),
        //color: Colors.lime,
        //elevation: 4,
        splashColor: Colors.orange,
        onPressed: (){},
      ),
      MaterialButton(
        child: Text('Button Material'),
        //color: Colors.lime,
        //elevation: 4,
        splashColor: Colors.orange,
        onPressed: (){})
    ],
  );*/
  /*return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(26, 10, 0, 0),
        child: Text('Hola Mundo!!'),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(26, 100, 0, 0),
        child: Text('Hola Mundo!!'),
      ),
    ],
  );*/
  
  /*Padding(
    padding: EdgeInsets.fromLTRB(26, 10, 0, 0),
    child: Text('Hola Mundo!!'),
    );*/
  /*
  return Center(
          child: Container( color: Colors.green,
            child: Row(
              children: <Widget>[
                Spacer(), 
                Text('Hola Mundo!!', style: TextStyle(fontSize: 30.0)),
              ],
            ),
          ),
        );
        */
}
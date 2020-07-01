import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Building layouts"),
        ),
        body: myLayoutWidget(),
      ),
    );
  }
}

Widget myLayoutWidget() {
  Widget firstRow() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.favorite,
            color: Colors.green,
          ),
        ),
        Text(
          'BEAMS',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
  
  Widget secondRow = Padding(
    padding: EdgeInsets.symmetric(
      vertical: 16.0,
      horizontal: 0,
    ),
    child: Text(
      'Send programmable push notifications to iOS and Android devices with delivery and open rate tracking built in.',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
  Widget thirdRow = Row(
    children: [
      Text(
        'EXPLORE BEAMS',
        style: TextStyle(
          color: Colors.green,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.green,
        ),
      ),
    ],
  );
  return Container(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.purple[900],
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(3.0)),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        firstRow(),
        secondRow,
        thirdRow,
      ],
    ),
  );
}
/*
  return Column(
    children: [
      Row(
        children: [
          Icon(Icons.favorite),
          Text('BEAMS'),
        ],
      ),
      Text('description...'),
      Row(
        children: [
          Text('EXPLORE BEAMS'),
          Icon(Icons.arrow_forward),
        ],
      ),
    ],
  );
  return Stack(
    alignment: Alignment.bottomRight,
    children: [
      Image.asset('assets/sheep.jpg'),
      Padding(
        padding: EdgeInsets.all(16.0),
          child: Text('Baaaaaa', style: TextStyle(fontSize: 30),),
        ),
    ],
  );

  return Stack(
    alignment: Alignment.bottomRight,
    children: [
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
    ],
  );
  */
/*
  return Row(
    children: [
      Expanded(
        flex: 7,
        child: Container(
          color: Colors.green,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          color: Colors.yellow,
        ),
      ),
    ],
  );
  */
/*
  return Column(
    children: [
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
    ],
  );
  */
/*
  return Row(
    children: [
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
    ],
  );*/
/*
  return Container(
        margin: EdgeInsets.all(30.0),
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.topCenter,
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(),
        ),
        child: Text("Hello world!", style: TextStyle(fontSize: 30)),
      );
  */
/*Alingn
  return Align(
    alignment: Alignment(1,1),
    child: Text("Hello", style: TextStyle(fontSize: 30),),
  );
  */
/* Center
  return Center(
        child: Text("Hello world!", style: TextStyle(fontSize: 30),
        ),
      );
  */
/* padding
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("Hello world!"),
  );
  */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text(
              'Flutter GridView',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        body: Column(children: <Widget>[
          Row(
            //ROW 1
            children: [
              getContainer(),
              getContainer(),
              getContainer(),
              getContainer(),
            ],
          ),
          Row(//ROW 2
              children: [
            getContainer(),
            getContainer(),
            getContainer(),
            getContainer(),
          ]),
          Row(
            //ROW 3
            children: [
              getContainer(),
              getContainer(),
              getContainer(),
              getContainer(),
            ],
          ),
          Row(//ROW 4
              children: [
            getContainer(),
            getContainer(),
            getContainer(),
            getContainer(),
          ]),
          Row(//ROW 5
              children: [
            getContainer(),
            getContainer(),
            getContainer(),
            getContainer(),
          ]),
        ]),
      ),
    );
  }

  Widget getContainer() {
    return Container(
      height: 200,
      width: 200,
      //color: Colors.blue,
      margin: EdgeInsets.all(25.0),
      color: Colors.blue,
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//Copied from -> https://medium.com/globant/gridview-in-flutter-ede1df032fe7
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GridList(),
    );
  }
}

class GridList extends StatelessWidget {
  final List<String> _list = [
    "Text 01",
    "Text 02",
    "Text 03",
    "Text 04",
    "Text 05",
    "Text 06",
  ];
//list of strings to display in grid
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Demo'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(5.0),
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        children: _list
            .map((data) => Card(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(data),
                  )),
                ))
            .toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_pinterest/app_icons.dart';
import 'package:hovering/hovering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        key: _key,
        appBar: AppBar(
          title: Text('Icons Demo'),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              HoverWidget(
                //with HOVER
                hoverChild: Container(
                  height: 200,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: new Stack(
                      //https://api.flutter.dev/flutter/widgets/Stack-class.html
                      children: <Widget>[
                        //CHILD 1 -> IMAGE [LOW OPACITY]
                        new Container(
                          height: 200,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1616191845514-47bb03fa3db3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                              fit: BoxFit.cover,
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                              colorBlendMode: BlendMode.modulate,
                            ),
                          ),
                        ),

                        //Align -> https://stackoverflow.com/a/51999052/12302691
                        //https://stackoverflow.com/a/52637545/12302691
                        //CHILD 2 -> SAVE BUTTON
                        new Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            //https://stackoverflow.com/a/50348562/12302691
                            margin: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5.0),
                            height: 40,
                            //width: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //Using 2 floating action buttons, we get a single bar effect
                              children: <Widget>[
                                FloatingActionButton.extended(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15.0),
                                      topLeft: Radius.circular(15.0),
                                    ),
                                  ),
                                  backgroundColor: Colors.white70,
                                  onPressed: () {},
                                  label: Text(
                                    "Board",
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                  icon: Icon(
                                    AppIcons.down_open,
                                    color: Colors.black87,
                                    size: 15.0,
                                  ),
                                ),
                                FloatingActionButton.extended(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                    ),
                                  ),
                                  backgroundColor: Colors.red[800],
                                  onPressed: () {},
                                  label: Text(
                                    "Save",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //CHILD 3 -> 3DOTS MENU BUTTON
                        new Align(
                          alignment: Alignment(1.0, 1.0),
                          child: Container(
                            //https://stackoverflow.com/a/50348562/12302691
                            margin: const EdgeInsets.only(
                                bottom: 5.0, left: 10.0, right: 5.0),
                            height: 30,
                            width: 30,

                            child: FloatingActionButton(
                              backgroundColor: Colors.white70,
                              onPressed: () {},
                              child: Icon(
                                AppIcons.more_horiz,
                                color: Colors.black87,
                                size: 20.0,
                              ),
                            ),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),

                        //CHILD 4 -> UPLOAD BUTTON
                        new Align(
                          alignment: Alignment(0.6, 1.0),
                          child: Container(
                            //https://stackoverflow.com/a/50348562/12302691
                            margin: const EdgeInsets.only(
                                bottom: 5.0, left: 10.0, right: 10.0),
                            height: 30,
                            width: 30,

                            child: FloatingActionButton(
                              backgroundColor: Colors.white70,
                              onPressed: () {},
                              child: Icon(
                                AppIcons.upload,
                                color: Colors.black87,
                                size: 15.0,
                              ),
                            ),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),

                        //CHILD 5 -> LINK BUTTON
                        new Align(
                          alignment: Alignment(-1.0, 1.0),
                          child: Container(
                            //https://stackoverflow.com/a/55158464/12302691
                            constraints: BoxConstraints(maxWidth: 120),
                            //https://stackoverflow.com/a/50348562/12302691
                            margin: const EdgeInsets.only(
                                bottom: 5.0, left: 5.0, right: 10.0),
                            height: 30,
                            width: 120,
                            child: FloatingActionButton.extended(
                              backgroundColor: Colors.white70,
                              onPressed: () {},
                              icon: Icon(
                                AppIcons.down_open,
                                color: Colors.black87,
                                size: 15.0,
                              ),
                              //Overflow problem with long links
                              //https://medium.com/flutterworld/flutter-text-wrapping-ellipsis-4fa70b19d316 -> wrapped with sized box
                              label: SizedBox(
                                width: 80,
                                child: Text(
                                  "https://images.unsplash.com/photo-1616191845514-47bb03fa3db3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                                  style: TextStyle(color: Colors.black87),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              ),
                            ),
                          ),
                        ),
                        //END OF BUTTONS
                      ],
                    ),
                  ),
                ),

                onHover: (event) {
                  // ignore: deprecated_member_use
                  _key.currentState!.showSnackBar(SnackBar(
                    content: Text('Yaay! I am Hovered'),
                  ));
                },

                //without HOVER
                child: Container(
                  height: 200,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1616191845514-47bb03fa3db3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ]),
          ], // children
        )),
      ),
    );
  }
}

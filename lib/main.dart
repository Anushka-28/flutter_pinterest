//GridView -> https://medium.com/globant/gridview-in-flutter-ede1df032fe7
//Hovering Effect -> https://pub.dev/packages/hovering
//Opacity -> https://api.flutter.dev/flutter/widgets/Opacity-class.html
//ClipRRect -> https://www.appsdeveloperblog.com/image-with-rounded-corners-in-flutter/
//Icons -> https://medium.com/deviniti-technology-driven-blog/the-best-way-to-add-custom-icons-to-your-flutter-project-6381ab697813

import 'package:flutter/material.dart';
import 'package:flutter_pinterest/app_icons.dart';
import 'package:hovering/hovering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: GridList(),
    );
  }
}

//Modified the code from here -> https://medium.com/globant/gridview-in-flutter-ede1df032fe7
class GridList extends StatelessWidget {
  final List<String> _list = [
    "https://images.unsplash.com/photo-1613244447676-e6260346f5a6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80",
    "https://images.unsplash.com/photo-1565715853342-b4ff1ad4a09e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=926&q=80",
    "https://images.unsplash.com/photo-1510589751317-000ce48678ca?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1614113935629-04a401df711a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1071&q=80",
    "https://images.unsplash.com/photo-1615476329439-ae85784e24e3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    //5
    "https://images.unsplash.com/photo-1578885136359-16c8bd4d3a8e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1615474634824-f45fb12b24a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://thumbs.gfycat.com/DirtyRecklessHarrier-size_restricted.gif",
    "https://images.unsplash.com/photo-1616191845514-47bb03fa3db3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1618337069114-7c6a20fbeecd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    //10
    "https://images.unsplash.com/photo-1618337069068-85558bafca00?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1550940857-b8eec3d11873?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1604580825209-43c3e2f92652?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1037&q=80",
    "https://media1.tenor.com/images/d5674c1efcb9b39b5f5ae42210f0233d/tenor.gif?itemid=16278334",
    "https://images.unsplash.com/photo-1497733942558-e74c87ef89db?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    //15
    "https://images.unsplash.com/photo-1617515027075-17c3edad1788?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1617247815841-35c481245e46?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1616621023099-4bd57df8a268?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1603814973316-0fa4e291084c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1617130266198-067b697fd425?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80",
    //20
  ];

  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      //AppBar class -> https://api.flutter.dev/flutter/material/AppBar-class.html
      appBar: AppBar(
        backgroundColor: Colors.white,
        //LEADING
        //Leading -> https://api.flutter.dev/flutter/material/AppBar/leading.html
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {},
              icon: Icon(
                AppIcons.pinterest_icon,
                color: Colors.red[800],
                size: 25.0,
              ),
              hoverColor: Colors.black26,
              constraints: BoxConstraints.tightFor(width: 10.0, height: 10.0),
            );
          },
        ),
        //TITLE
        //Row and Expanded -> https://api.flutter.dev/flutter/widgets/Row-class.html
        title: Row(
          children: [
            //Child #1 -> "HOME" BUTTON
            Container(
              height: 35,
              width: 80,
              margin: const EdgeInsets.only(
                  top: 35.0, bottom: 35.0, left: 0.0, right: 10.0),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(40),
              ),
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black87,
                hoverColor: Colors.white60,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35.0)),
                ),
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            //Child #2 -> "TODAY" BUTTON
            Container(
              height: 35,
              width: 80,
              margin: const EdgeInsets.only(
                  top: 35.0, bottom: 35.0, left: 5.0, right: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                hoverColor: Colors.black26,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35.0)),
                ),
                child: Text(
                  "Today",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            //Child #3 -> SEARCH BAR
            Expanded(
              child: HoverContainer(
                height: 40,
                margin: const EdgeInsets.only(
                    top: 35.0, bottom: 35.0, left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(40),
                ),
                hoverDecoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(40),
                ),
                //TextFormField class -> https://api.flutter.dev/flutter/material/TextFormField-class.html
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(
                      AppIcons.search,
                      color: Colors.black45,
                      size: 20,
                    ),
                    hintText: "Search",
                  ),
                ),
              ),
            ),
          ],
        ),
        //ACTIONS
        actions: <Widget>[
          new Padding(padding: const EdgeInsets.all(5.0)),
          IconButton(
            onPressed: () {},
            hoverColor: Colors.black26,
            icon: const Icon(
              AppIcons.bell,
              color: Colors.black54,
              size: 20.0,
            ),
          ),
          new Padding(padding: const EdgeInsets.all(5.0)),
          IconButton(
            onPressed: () {},
            hoverColor: Colors.black26,
            icon: const Icon(
              AppIcons.chat,
              color: Colors.black54,
              size: 20.0,
            ),
          ),
          new Padding(padding: const EdgeInsets.all(5.0)),
          IconButton(
            onPressed: () {},
            hoverColor: Colors.black26,
            icon: const Icon(
              AppIcons.person,
              color: Colors.black54,
              size: 20.0,
            ),
          ),
          new Padding(padding: const EdgeInsets.all(5.0)),
          IconButton(
            onPressed: () {},
            hoverColor: Colors.black26,
            icon: const Icon(
              AppIcons.down_open,
              color: Colors.black54,
              size: 20.0,
            ),
          ),
          new Padding(padding: const EdgeInsets.all(5.0)),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 4,
        padding: EdgeInsets.all(5.0),
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        children: _list
            .map((data) => Card(
                  child: HoverWidget(
                    //WIDGET VISIBLE WITHOUT HOVER
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        data,
                        fit: BoxFit.cover,
                      ),
                    ),

                    //EVENT ONHOVER
                    onHover: (event) {
                      // ignore: deprecated_member_use
                      // _key.currentState!.showSnackBar(SnackBar(
                      //   content: Text('Yaay! I am Hovered'),
                      // ));
                    },

                    //WIDGET VISIBLE WITH HOVER
                    hoverChild: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      //https://api.flutter.dev/flutter/widgets/Stack-class.html
                      child: Stack(
                        children: <Widget>[
                          //CHILD #1 -> IMAGE (LOW OPACITY)
                          new SizedBox(
                            // height: 200,
                            // width: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.network(
                                data,
                                fit: BoxFit.cover,
                                color: Color.fromRGBO(255, 255, 255, 0.5),
                                colorBlendMode: BlendMode.modulate,
                              ),
                            ),
                          ),
                          //END OF CHILD #1
                          //
                          //CHILD #2 -> TOP BAR SAVE BUTTON
                          //Align -> https://stackoverflow.com/a/51999052/12302691
                          //https://stackoverflow.com/a/52637545/12302691
                          new Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              //Margin -> https://stackoverflow.com/a/50348562/12302691
                              margin: const EdgeInsets.only(
                                  top: 5.0, left: 5.0, right: 5.0),
                              height: 40,
                              //width: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  //BOARD DROPDOWN
                                  FloatingActionButton.extended(
                                    onPressed: () {},
                                    backgroundColor: Colors.white70,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15.0),
                                        topLeft: Radius.circular(15.0),
                                      ),
                                    ),
                                    label: Text(
                                      "My Board",
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
                                  //SAVE BUTTON
                                  FloatingActionButton.extended(
                                    onPressed: () {},
                                    backgroundColor: Colors.red[800],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15.0),
                                        topRight: Radius.circular(15.0),
                                      ),
                                    ),
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
                          //END OF CHILD #2
                          //
                          //CHILD #3 -> 3DOTS MENU BUTTON
                          new Align(
                            alignment: Alignment(1.0, 1.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              margin: const EdgeInsets.only(
                                  bottom: 5.0, left: 10.0, right: 5.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40)),
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white70,
                                child: Icon(
                                  AppIcons.more_horiz,
                                  color: Colors.black87,
                                  size: 15.0,
                                ),
                              ),
                            ),
                          ),
                          //END OF CHILD #3
                          //
                          //CHILD #4 -> SHARE BUTTON
                          new Align(
                            alignment: Alignment(0.6, 1.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              margin: const EdgeInsets.only(
                                  bottom: 5.0, left: 10.0, right: 10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40)),
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white70,
                                child: Icon(
                                  AppIcons.upload,
                                  color: Colors.black87,
                                  size: 15.0,
                                ),
                              ),
                            ),
                          ),
                          //END OF CHILD #4
                          //
                          //CHILD #5 -> LINK BUTTON
                          new Align(
                            alignment: Alignment(-1.0, 1.0),
                            child: Container(
                              height: 30,
                              width: 120,
                              margin: const EdgeInsets.only(
                                  bottom: 5.0, left: 5.0, right: 10.0),
                              child: FloatingActionButton.extended(
                                onPressed: () {},
                                backgroundColor: Colors.white70,
                                icon: Icon(
                                  AppIcons.direction,
                                  color: Colors.black87,
                                  size: 15.0,
                                ),
                                //Text Overflow Problem -> https://medium.com/flutterworld/flutter-text-wrapping-ellipsis-4fa70b19d316
                                label: SizedBox(
                                  width: 80,
                                  child: Text(
                                    data,
                                    style: TextStyle(color: Colors.black87),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //END OF CHILD #5
                        ],
                      ),

                      /*child: Image.network(
                        data,
                        fit: BoxFit.cover,
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        colorBlendMode: BlendMode.modulate,
                      ),*/
                    ),
                    //END OF hoverChild
                  ),
                ))
            .toList(),
      ),
    );
  }
}

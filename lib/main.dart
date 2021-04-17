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
        primarySwatch: Colors.blue,
      ),
      home: GridList(),
    );
  }
}

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
      appBar: AppBar(
        title: Text('GridView Demo'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        padding: EdgeInsets.all(5.0),
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        children: _list
            .map((data) => Card(
                  child: HoverWidget(
                      //-Simply changes one widget to another on Hover.
                      //-Also uses onHover property.

                      //WIDGET VISIBLE WITHOUT HOVER
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(
                          data,
                          fit: BoxFit.cover,
                        ),
                      ),

                      //WIDGET VISIBLE WITH HOVER
                      hoverChild: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(
                          data,
                          fit: BoxFit.cover,
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),

                      //EVENT ON HOVER
                      onHover: (event) {
                        // ignore: deprecated_member_use
                        _key.currentState!.showSnackBar(SnackBar(
                          content: Text('Yaay! I am Hovered'),
                        ));
                      }),

                  /*child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage(data),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),*/
                ))
            .toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:makeit_breakit/my_snappable.dart';
//import 'package:snappable/snappable.dart';

void main() => runApp(MyApp());

bool isVisible;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    isVisible = true;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("YOU AM RICHER!")),
        ),
        backgroundColor: Colors.blueGrey[300],
        body: Container(
          child: MyWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          child: Icon(Icons.navigation),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}


class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final key = GlobalKey<SnappableState>();
  bool isVisible=true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Snappable(
            key: key,
            numberOfBuckets: 10,
            child: Column(
              children: [
                Image.network(
                    'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                Text('This whill be snapped'),
              ],
            ),
          ),
          RaisedButton(
            child: Text('Snapo'),
            onPressed: () {
              snap();
              isVisible=!isVisible;
            },
          )
        ],
      ),
    );
  }

  void snap() {
    if (isVisible) {
      key.currentState.snap();
    }
    else {
      key.currentState.reset();
    }

  }
}
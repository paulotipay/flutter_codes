import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(

      // Scaffold Widget
        home: Scaffold(
          appBar: AppBar(
            // AppBar takes a Text Widget
            // in it's title parameter
            title: const Text('App Name'),
          ),
          body: Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children:  [
                Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 1")
                ),
                Container(
                    color: Colors.grey,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 2")
                ),
                Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 1")
                ),
                Container(
                    color: Colors.grey,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 2")
                ),
                Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 1")
                ),
                Container(
                    color: Colors.grey,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 2")
                ),
                Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 1")
                ),
                Container(
                    color: Colors.grey,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 2")
                ),
                Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 1")
                ),
                Container(
                    color: Colors.grey,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 2")
                ),
                Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 1")
                ),
                Container(
                    color: Colors.grey,
                    padding: EdgeInsets.all(5.0),
                    child: Text("This is data 2")
                ),
              ],
            ),
          )
        ));
  }
}

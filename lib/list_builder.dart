import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}
var names = ["Lesa", "Paul", "Aries", "Jeff"];

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
          body: ListView.builder(
              itemCount: names.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  leading: Icon(Icons.list),
                  trailing: ElevatedButton(
                    onPressed: (){},
                    child: Text("Edit"),
                  ),
                  title: Text(names[index]),
                );
              }
        ))
    );
  }
}

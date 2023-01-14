import 'package:flutter/material.dart';
import 'package:layout/home.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(

      // Scaffold Widget
        home: Scaffold(
            appBar: AppBar(
              // AppBar takes a Text Widget
              // in it's title parameter
              title: const Text('Screen TWO'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("this is the SECOND screen!")),
                ElevatedButton(
                    onPressed: (){
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          )
                      );
                    },
                    child: Text("Go back to HOME Screen!"))
              ],
            )
        ));
  }
}

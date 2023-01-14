import 'package:flutter/material.dart';

void main() {
  runApp(const GreetingsApp());
}

class GreetingsApp extends StatefulWidget {
  const GreetingsApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return _GreetingsAppState();
  }

}

class _GreetingsAppState extends State<GreetingsApp>{
  String name = "Your name will display here!";
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(

      // Scaffold Widget
        home: Scaffold(
            appBar: AppBar(
              // AppBar takes a Text Widget
              // in it's title parameter
              title: const Text('Greetings App'),
            ),
            body: Center(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Greetings App!",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Hello $name!",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Name",
                            hintText: "Enter your name"
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        name = nameController.text;
                      });
                    }, child: Text("Press me!"))
                  ],
                ),
              ),
            )
        ));
  }
}

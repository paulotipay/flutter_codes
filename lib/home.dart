import 'package:flutter/material.dart';
import 'package:layout/second_screen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(

      // Scaffold Widget
        home:MainScreen()
    );
  }
}


class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      // AppBar takes a Text Widget
      // in it's title parameter
      title: const Text('Screen ONE'),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("this is the HOME screen!")),
        ElevatedButton(
          onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondScreen(),
             )
            );
          },
        child: Text("Go to Next Screen!"))
      ],
    )
    );
  }
}
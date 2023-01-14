
import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutApp());
}

class LayoutApp extends StatelessWidget {
  const LayoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(

      // Scaffold Widget
        home: Scaffold(
          appBar: AppBar(
            // AppBar takes a Text Widget
            // in it's title parameter
            title:  Text('Layout App'),
          ),
          body:  Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children:[
                            Image.asset(
                                "assets/images/apple.jpg",
                                width: 100,
                                height: 100,
                            ),
                            Text(
                                "Apple",
                                style: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                            ),
                          ],
                        ),
                        Column(
                          children:[
                            Image.asset(
                              "assets/images/watermelon.jpeg",
                              width: 100,
                              height: 100,
                            ),
                            Text(
                              "Watermelon",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children:[
                            Image.asset(
                              "assets/images/orange.jpg",
                              width: 100,
                              height: 100,
                            ),
                            Text(
                              "Orange",
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ],
                    )

                  ),
                ],
              ),
            ],
          )
        ));
  }
}

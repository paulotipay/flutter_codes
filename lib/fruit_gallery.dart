
import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutApp());
}
var imageList = ["assets/images/apple.jpg","assets/images/orange.jpg","assets/images/watermelon.jpeg"];
int imageIndex = 0;

class LayoutApp extends StatefulWidget {
  const LayoutApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return _LayoutAppState();
  }
  

}

class _LayoutAppState extends State<LayoutApp> {
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children:[
                            Image.asset(
                              imageList[imageIndex],
                              width: 300,
                              height: 300,
                              alignment: Alignment.center,
                            ),
                            ElevatedButton(onPressed: (){
                              setState(() {
                                if(imageIndex < imageList.length -1 ) {
                                  imageIndex ++;
                                }else{
                                  imageIndex =0;
                                }
                              });
                            }, child: Text("Press for Next Image"))
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

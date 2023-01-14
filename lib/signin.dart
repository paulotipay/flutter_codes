import 'package:flutter/material.dart';

void main() {
  runApp(const SignIn());
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(

      // Scaffold Widget
        home: Scaffold(
          appBar: AppBar(
            // AppBar takes a Text Widget
            // in it's title parameter
            title: const Text('Sign In'),
          ),
          body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                    "Sign In Form",
                    style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "username",
                      border: OutlineInputBorder(),
                      hintText: "Enter Username"
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "password",
                        border: OutlineInputBorder(),
                        hintText: "Enter Password"
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("Sign in")
                )
              ],
            ),
          )
        ));
  }
}

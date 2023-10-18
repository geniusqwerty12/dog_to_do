import 'package:flutter/material.dart';

class StatelessSample extends StatelessWidget {
  const StatelessSample({super.key});

  @override
  Widget build(BuildContext context) {
    String message = "Hello world!";

    return Scaffold(
        appBar: AppBar(
          title: Text("What the dog doing?"),
          leading: Icon(Icons.pets),
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/dog-eat-couch.jpg",
              width: 200,
              height: 200,
            ),
            Image.asset(
              "assets/dog-wait.jpg",
              width: 200,
              height: 200,
            ),
            Image.asset(
              "assets/dog-weird-friend.jpg",
              width: 200,
              height: 200,
            ),
            Image.asset(
              "assets/dog-good-boy.jpg",
              width: 200,
              height: 200,
            ),
            Text("Message: $message"),
            ElevatedButton(
              onPressed: () {
                print("Nice try");
                message = "New message";
              },
              child: Text("Click me to change the text above?"),
            ),
          ],
        ));
  }
}

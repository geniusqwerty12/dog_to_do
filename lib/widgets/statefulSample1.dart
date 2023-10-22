import 'package:flutter/material.dart';

class StatefulSample1 extends StatefulWidget {
  const StatefulSample1({super.key});

  @override
  State<StatefulSample1> createState() => _StatefulSample1State();
}

class _StatefulSample1State extends State<StatefulSample1> {
  // This is the variable that is displayed
  // and needs to be updated
  // when the user clicks the button
  String message = "Hello world";

  @override
  Widget build(BuildContext context) {
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
                // update the value
                message = "New message";
                // this line rerenders the widget
                // redraw the widget visual
                setState(() {});
              },
              child: Text("Click me to change the text above?"),
            ),
          ],
        ));
  }
}

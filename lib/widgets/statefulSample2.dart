import 'package:flutter/material.dart';

class StatefulSample2 extends StatefulWidget {
  const StatefulSample2({super.key});

  @override
  State<StatefulSample2> createState() => _StatefulSample2State();
}

class _StatefulSample2State extends State<StatefulSample2> {
  String dogAction = "";

  // function to determine what image will appear in the app
  Widget whatDogDo(String buttonCase) {
    String finalValue = "";
    switch (buttonCase) {
      case "eat-couch":
        finalValue = "dog-eat-couch.jpg";
        break;
      case "good-boy":
        finalValue = "dog-good-boy.jpg";
        break;
      case "dog-wait":
        finalValue = "dog-wait.jpg";
        break;
      case "bring-friend":
        finalValue = "dog-weird-friend.jpg";
        break;
      default:
        finalValue = "dog-wait.jpg";
        break;
    }
    return Image.asset(
      finalValue,
      height: 200,
      width: 200,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("What the dog doing?"),
          leading: Icon(Icons.pets),
        ),
        body: ListView(
          children: [
            whatDogDo(dogAction),
            Text("Master left the house, what will you do?"),
            ElevatedButton(
              onPressed: () {
                print("Nice try");
                // setState(() {});
              },
              child: Text("Click me to change the text above?"),
            ),
          ],
        ));
  }
}

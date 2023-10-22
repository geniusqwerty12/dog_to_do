import 'package:dog_to_do/widgets/statefulSample1.dart';
import 'package:dog_to_do/widgets/statelessSample.dart';
import 'package:flutter/material.dart';

import 'widgets/statefulSample2.dart';

void main() {
  runApp(const MyApp());
  // widget that uses the routing
  // runApp(const NavRoutes());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // The widgets are custom
      // They are located inside the widgets folder
      home: StatelessSample(),
      // home: StatefulSample1(),
      // home: StatefulSample2(),
    );
  }
}

class NavRoutes extends StatelessWidget {
  const NavRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // once we stated the routes,
      // the home property is not used
      // Flutter uses the initialRoute property
      initialRoute: '/stl',
      // we specify the routes (existing pages)
      routes: {
        '/stl': (BuildContext ctx) => StatelessSample(),
        '/stfl1': (BuildContext ctx) => StatefulSample1(),
        '/stfl2': (BuildContext ctx) => StatefulSample2(),
      },
    );
  }
}

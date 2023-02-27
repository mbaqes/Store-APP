import 'package:flutter/material.dart';
import 'package:stateapp/views/homepagesteptwo/homepagewithstatemangment.dart';
import 'package:stateapp/views/hompagestepone/homepage.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageStepTwo(),
    );
  }
}

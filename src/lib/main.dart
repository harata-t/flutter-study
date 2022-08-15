import 'package:flutter/material.dart';
import '../my_home_page.dart';
import '../first_page.dart';
import '../second_page.dart';
import '../state_button.dart';
import '../youtube_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.pink,
        primaryColor: Colors.white,
      ),
      // home: const MyHomePage(title: 'Flutter sample app'),
      initialRoute: '/',
      routes:{
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => FirstPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => SecondPage(),
        '/state_button': (context) => StateButton(),
        '/youtube': (context) => YoutubePage(),
      },
    );
  }
}


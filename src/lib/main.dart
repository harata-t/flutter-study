import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../my_home_page.dart';
import '../first_page.dart';
import '../second_page.dart';
import '../state_button.dart';
import '../youtube_page.dart';
import '../login_page.dart';
import '../register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCb_wEIPE2Udb2ArzsGOJmJzaSm5v2G5fI",
        authDomain: "fir-sample-4f52c.firebaseapp.com",
        projectId: "fir-sample-4f52c",
        storageBucket: "fir-sample-4f52c.appspot.com",
        messagingSenderId: "528591575770",
        appId: "1:528591575770:web:d9d19d9cf5e9a80b9a23e3"),
  );
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
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}


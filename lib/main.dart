import 'package:flutter/material.dart';
import 'package:quizet/screens/sondeo.view.dart';
import 'package:quizet/screens/splash.view.dart';
import 'package:quizet/screens/home.view.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SondeoApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext ctx) => const Splash(),
        '/Home': (BuildContext ctx) => const HomePage(),
        '/Sondeo': (BuildContext ctx) => const SondeoPage(),

      },
    );

  }
}

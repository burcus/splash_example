import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:splash_example/screens/Home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  SpinKitSquareCircle spinkit;

  @override
  void initState() {
    spinkit = SpinKitSquareCircle(
      color: Colors.black87,
      size: 50.0,
      controller: AnimationController(
          vsync: this, duration: const Duration(milliseconds: 1000)),
    );

    Future.delayed(const Duration(seconds: 4), () async {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              spinkit,
              //Image.asset('assets/images/flutterlogo.png', width: 40, height: 40,),
              SizedBox(
                height: 25,
              ),
              Text(
                "Splash Screen",
                style: GoogleFonts.nunito(fontSize: 20),
              ),
            ],
        ),
      ),
    );
  }
}

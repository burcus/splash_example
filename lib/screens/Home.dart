import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      //onGenerateRoute: Router.generateRoute,
      //initialRoute: HomeRoute,
      body: Center(
        child: Text("Anasayfa", style: GoogleFonts.nunito()),
      ),

    );
  }


}
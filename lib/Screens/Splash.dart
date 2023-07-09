import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rajaniti/Screens/Home.dart';
class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    shift();
  }
  void shift(){
    Timer(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context,
            MaterialPageRoute( builder:(context)=>Home())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1, bottom: MediaQuery.of(context).size.width*0.1),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(153, 148, 208, 1.0),
                Color.fromRGBO(233, 217, 208,1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 200,
                height: 200,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Image.asset(
                  "assets/iti.png",
                  scale: 1.7,
                ),
              ),
              Container(width: 200,
                height: 200,
                padding: EdgeInsets.only(left: 2, right: 2),
                child:Center(
                  child: Text("Rajan Pvt I.T.I.",style: GoogleFonts.sora(color: Colors.white,fontSize: 50,),textAlign: TextAlign.center,),
                ),
              ),
              Container(width: 200,
                height: 200,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Image.asset(
                  "assets/Logo.png",
                  scale: 1.7,
                ),
              ),
              const SizedBox(
                height: 73,
              ),
            ]),
      ),
    );
  }
}

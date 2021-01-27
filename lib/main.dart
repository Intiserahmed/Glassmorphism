import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Glassmorphism',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double s = size.width * 0.75;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset("assets/DP.jpg").image, fit: BoxFit.cover)),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: s,
              height: s,
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 6.0,
                      sigmaY: 6.0,
                    ),
                    child: Container(width: s, height: s, child: Text(" ")),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 30,
                              offset: Offset(2, 2))
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.white.withOpacity(0.2), width: 1.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.2),
                            Colors.white.withOpacity(0.2),
                          ],
                        )),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Glassmorphism",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 22.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

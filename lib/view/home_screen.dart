// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/view/widgets/movieSlider.dart';
import 'package:movie_app/view/widgets/trennding.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.asset(
            "assets/images/logoname2.png",
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            height: 45,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text( 
                  "Trending Movies",
                  style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 8),
                Trending(),
                SizedBox(height: 18),
                Text(
                  "Top Rated Movies",
                  style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 8),
                MoviesSlider(),
                SizedBox(height: 18),
                Text(
                  "UpComing Movies",
                  style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 8),
                MoviesSlider()
              ],
            ),
          ),
        ));
  }
}



// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/api/api.dart';
import 'package:movie_app/model/model.dart';
import 'package:movie_app/view/widgets/movie_slider.dart';
import 'package:movie_app/view/widgets/trending.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Movies>> trendingMovies;
  late Future<List<Movies>> topRatedMovies;
  late Future<List<Movies>> upComingMovies;

  @override
  void initState() {
    super.initState();
    trendingMovies = Api().getTrendingMovies();
    topRatedMovies = Api().getTopRatedMovies();
    upComingMovies = Api().getUpComingMovies();
  }

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
                SizedBox(height: 32),
                SizedBox(
                  child: FutureBuilder(
                      future: trendingMovies,
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(
                              child: Text(
                            snapshot.error.toString(),
                            style: TextStyle(color: Colors.white),
                          ));
                        } else if (snapshot.hasData) {
                          return Trending(
                            snapshot: snapshot,
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
                // Trending();

                SizedBox(height: 18),
                Text(
                  "Top Rated Movies",
                  style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 3),
                SizedBox(
                  child: FutureBuilder(
                      future: topRatedMovies,
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(child: Text("aaa"));
                        } else if (snapshot.hasData) {
                          return MoviesSlider(
                            snapshot: snapshot,
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),

                // MoviesSlider(),
                SizedBox(height: 18),
                Text(
                  "UpComing Movies",
                  style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 3),
                //MoviesSlider(),
                SizedBox(
                  child: FutureBuilder(
                      future: upComingMovies,
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(child: Text("aaa"));
                        } else if (snapshot.hasData) {
                          return MoviesSlider(
                            snapshot: snapshot,
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}

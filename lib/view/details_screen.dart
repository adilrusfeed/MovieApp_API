// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/model/model.dart';
import 'package:movie_app/view/widgets/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.movie});
  final Movies movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar.large(
          leading: Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(
              top: 16,
              left: 16,
            ),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(6)),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_rounded)),
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          expandedHeight: 500,
          pinned: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(movie.title,
                style: GoogleFonts.aBeeZee(
                    fontSize: 17, fontWeight: FontWeight.w600)),
            background: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24)),
              child: Image.network(
                '${Constants.imagePath}${movie.posterPath}',
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Overview",
                style: GoogleFonts.aBeeZee(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Text(
                movie.overView,
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w400),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        )),
      ]),
    );
  }
}

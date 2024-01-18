import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 10,
      options: CarouselOptions(
          height: 270,
          autoPlay: true,
          viewportFraction: 0.55,
          enlargeCenterPage: true,
          pageSnapping: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(seconds: 1)),
      itemBuilder: (context, itemIndex, PageViewIndex) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: 200,
            width: 180,
            color: Colors.amber,
          ),
        );
      },
    );
  }
}

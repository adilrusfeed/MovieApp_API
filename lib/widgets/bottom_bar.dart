import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:movie_app/controller/bottom_provider.dart';
import 'package:movie_app/view/screens/home_screen.dart';
import 'package:movie_app/view/screens/movie_screen.dart';
import 'package:movie_app/view/screens/search.dart';
import 'package:movie_app/view/screens/tv_show.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatelessWidget {
  final List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    MovieScreen(),
    TvShowScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final bottomProvider = Provider.of<BottomBarProvider>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: _pages[bottomProvider.currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            child: NavigationBar(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              selectedIndex: bottomProvider.currentIndex,
              onDestinationSelected: (index) {
                bottomProvider.navigatePage(index);
              },
              destinations: [
                NavigationDestination(
                  icon: Icon(Iconsax.home,
                      color: bottomProvider.currentIndex == 0
                          ? Colors.white
                          : Color.fromARGB(255, 255, 255, 255)),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.search_normal,
                      color: bottomProvider.currentIndex == 1
                          ? Colors.white
                          : Color.fromARGB(255, 255, 255, 255)),
                  label: 'Search',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.video,
                      color: bottomProvider.currentIndex == 2
                          ? Colors.white
                          : const Color.fromARGB(255, 106, 105, 105)),
                  label: 'Movies',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.video_horizontal,
                      color: bottomProvider.currentIndex == 3
                          ? Colors.white
                          : const Color.fromARGB(255, 106, 105, 105)),
                  label: 'TV',
                ),
              ],
              indicatorColor: Color.fromARGB(255, 33, 143, 149),
              surfaceTintColor: Color.fromARGB(255, 4, 2, 17),
            ),
          ),
        ),
      ),
    );
  }
}

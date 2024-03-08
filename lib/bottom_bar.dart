import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Bottom_Bar extends StatelessWidget {
  const Bottom_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Convex Bottom Bar"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.amber,
        curve: Curves.easeOut,
        items: const <TabItem>[
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.favorite, title: 'Favorites'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
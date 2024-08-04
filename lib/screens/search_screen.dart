import 'package:fickleflight/screens/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtomNavigationBar(),
      appBar: AppBar(
        title: const Text("Search"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Seacrh page"),
      ),
    );
  }
}

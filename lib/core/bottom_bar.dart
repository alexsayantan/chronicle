import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Center(
        child: Text("News"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_arrow_trending_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_arrow_trending_filled),
                label: "Trending"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_bookmark_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_bookmark_filled),
                label: "Save"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
                label: "Alex"),
          ]),
    );
  }
}

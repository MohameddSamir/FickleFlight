import 'package:fickleflight/screens/booking_screen.dart';
import 'package:fickleflight/screens/main_screen.dart';
import 'package:fickleflight/screens/profile_screen.dart';
import 'package:fickleflight/screens/search_screen.dart';
import 'package:flutter/material.dart';

class CustomButtomNavigationBar extends StatefulWidget {
  @override
  State<CustomButtomNavigationBar> createState() =>
      _CustomButtomNavigationBarState();
}

class _CustomButtomNavigationBarState extends State<CustomButtomNavigationBar> {
  int _indx = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.grey,
            ),
            label: "Explore"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: Colors.grey,
            ),
            label: "Booking"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.flight,
              color: Colors.grey,
            ),
            label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: "Profile"),
      ],
      currentIndex: _indx,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookingScreen()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchScreen()),
            );
            break;
          default:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
            break;
        }
        setState(() {
          _indx = index;
        });
      },
    );
  }
}

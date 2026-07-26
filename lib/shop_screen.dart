import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  Text(
                    "Shoes \nCollection",
                    style: TextStyle(fontWeight: .bold, fontSize: 25),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 3,
                        ),
                        errorMaxLines: 1,
                        floatingLabelAlignment: .start,
                        hintStyle: TextStyle(fontWeight: .bold),
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                            color: Colors.grey, // Idle stroke color
                            width: 1.0,
                          ),
                        ),
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(style: BorderStyle.solid),
                        //   borderRadius: BorderRadius.all(Radius.circular(16)),
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
              GNav(
                rippleColor: const Color.fromARGB(
                  255,
                  159,
                  159,
                  159,
                ), // tab button ripple color when pressed
                hoverColor: const Color.fromARGB(
                  255,
                  255,
                  252,
                  252,
                ), // tab button hover color
                haptic: true, // haptic feedback
                tabBorderRadius: 15,
                tabActiveBorder: Border.all(
                  color: Colors.black,
                  width: 1,
                ), // tab button border
                tabBorder: Border.all(
                  color: Colors.grey,
                  width: 1,
                ), // tab button border
                tabShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8),
                ], // tab button shadow
                curve: Curves.easeOutExpo, // tab animation curves
                duration: Duration(milliseconds: 900), // tab animation duration
                gap: 8, // the tab button gap between icon and text
                color: Colors.grey[800], // unselected icon color
                activeColor: Colors.purple, // selected icon and text color
                iconSize: 24, // tab button icon size
                tabBackgroundColor: Colors.purple.withOpacity(
                  0.1,
                ), // selected tab background color
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ), // navigation bar padding
                tabs: [
                  GButton(icon: Icons.home, text: 'Home'),
                  GButton(icon: Icons.heart_broken, text: 'Likes'),
                  GButton(icon: Icons.search, text: 'Search'),
                  GButton(icon: Icons.person, text: 'Profile'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

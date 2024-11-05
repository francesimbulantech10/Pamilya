import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarDrawer extends StatefulWidget {
  // ignore: use_super_parameters
  const AppBarDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<AppBarDrawer> createState() => _AppBarDrawerState();
}

class _AppBarDrawerState extends State<AppBarDrawer> {
  List<String> page = [
    "Home",
    "Services",
    "Contact Us",
    "About Us",
  ];

  String activePage = "Home";

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(0, 255, 255, 255),
      width: 200,
      child: Stack(
        children: [
          Drawer(
            child: SafeArea(
              right: true,
              child: ListView(
                padding: EdgeInsets.zero,
                controller: ScrollController(),
                children: [
                  InkWell(
                    onTap: () {
                      context.go('/');
                    },
                    child: SizedBox(
                      width: 200,
                      height: 100,
                      child: Image.asset('assets/pamilya_logo.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppBarMenus(
                    title: "About-us",
                    action: () {
                      context.go('/');
                    },
                    isActive: activePage == "Home",
                    fontWeight: FontWeight.bold, // Make Home bold
                    color: Colors.black, // Set the text color to white
                  ),
                  AppBarMenus(
                    title: "Be our Partner",
                    action: () {
                      context.go('/our-blog');
                    },
                    isActive: activePage == "Our Blog",
                    fontWeight: FontWeight.bold, // Make Our Blog normal
                  ),
                  AppBarMenus(
                    title: "Advantages",
                    action: () {
                      context.go('/about-us');
                    },
                    isActive: activePage == "About us",
                    fontWeight: FontWeight.bold, // Make About Us normal
                  ),
                  AppBarMenus(
                    title: "FAQ",
                    action: () {
                      context.go('/about-us');
                    },
                    isActive: activePage == "About us",
                    fontWeight: FontWeight.bold, // Make About Us normal
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 2, // Thickness of the bottom line
              color: Colors
                  .grey.shade300, // Color of the bottom line (adjust as needed)
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarMenus extends StatelessWidget {
  final String title;
  final VoidCallback action;
  final bool isActive;
  final FontWeight fontWeight; // New parameter for font weight
  final Color color; // Define color properly

  const AppBarMenus({
    super.key,
    required this.title,
    required this.action,
    this.isActive = false,
    this.fontWeight = FontWeight.normal, // Default to normal
    this.color = Colors.black, // Default color set to black
  }); // Correct super constructor

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0), // Adjust vertical padding for alignment
      title: Container(
        alignment: Alignment.center, // Aligns text to the center
        child: Text(
          title, // Use the standard Text widget
          style: TextStyle(
            fontSize: 16.0, // Adjust font size as needed
            fontWeight: fontWeight, // Use the font weight parameter
            color: isActive
                ? Colors.black
                : color, // Change color based on isActive
          ),
        ),
      ),
      onTap: () {
        action(); // Call the action on tap
      },
    );
  }
}

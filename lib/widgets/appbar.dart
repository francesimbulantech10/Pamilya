import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SampleAppBar extends StatelessWidget {
  const SampleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth > 1280) {
          return const AppBar(); // Desktop view for wide screens
        } else {
          return const MobileAppBar(); // Mobile view for narrow screens
        }
      }),
    );
  }
}

//App Bar for mobiles devices
class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // Wrap the entire app bar in a Container to provide a solid background
      color:
          const Color(0xFFFFF3F8), // Apply the pink color to the entire app bar
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                context.go('/');
              },
              child: SizedBox(
                width: 200,
                height: 100,
                child: Image.asset('assets/pamilya_logo.png'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 0),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child:
                      Icon(Icons.menu, color: Colors.black), // Black menu icon
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//App bar for the web
class AppBar extends StatefulWidget {
  const AppBar({super.key});

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Material(
      elevation: 0,
      child: SizedBox(
        height: 100, // Adjusted height to add blue color at the bottom
        child: Stack(
          children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Row(
                  children: [
                    AppBarMenu(
                      title: 'About us',
                      action: () {
                        context.go('/about-us');
                      },
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    AppBarMenu(
                      title: 'Be our partner',
                      action: () {
                        context.go('/our-blog');
                      },
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    AppBarMenu(
                      title: 'Advantages',
                      action: () {
                        context.go('/our-blog');
                      },
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    AppBarMenu(
                      title: 'FAQ',
                      action: () {
                        context.go('/our-blog');
                      },
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ],
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
        ]),
      ),
    );
  }
}

class AppBarMenu extends StatelessWidget {
  final String title;
  final VoidCallback action;
  final TextStyle? textStyle; // Add a textStyle parameter

  const AppBarMenu({
    super.key,
    required this.title,
    required this.action,
    this.textStyle, // Make the textStyle optional
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: action,
      child: SizedBox(
        height: 1300,
        width: size.width > 1500 ? 200 : 150,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
              title,
              maxLines: 2,
              style: textStyle ??
                  const TextStyle(
                      fontSize: 15), // Apply the textStyle if provided
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/auto_size_inter_text.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1274) {
          return const WebView(); // Desktop view for wide screens
        } else if (constraints.maxWidth > 695) {
          return const TabletView(); // Tablet view for medium screens
        } else {
          return const MobileView(); // Mobile view for narrow screens
        }
      },
    );
  }
}

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebView();
}

class _WebView extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 50,
        children: [
          SizedBox(
            width: 630,
            child: Stack(
              children: [
                Image.asset(
                  "assets/2heart.png",
                  width: 630,
                ),
                SizedBox(
                  width: 574,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(100),
                      const AutoSizeInterText(
                        text:
                            "Discover Local Treasures, Delivered to Your Doorstep.",
                        fontSize: 40,
                        color: Color(0xFFFF0077),
                        fw: FontWeight.bold,
                        maxLines: 2,
                        fontFamily: "Poppins",
                      ),
                      const Gap(20),
                      const SizedBox(
                        width: 480,
                        child: AutoSizeInterText(
                          text:
                              "Shop from a curated collection of locally-made products that celebrate Filipino craftsmanship. Support local businesses while enjoying unique finds, all in one place!",
                          fontSize: 14,
                          color: Colors.black,
                          fw: FontWeight.normal,
                          fontFamily: "Poppinslight",
                          maxLines: 5,
                        ),
                      ),
                      const Gap(40),
                      SizedBox(
                        width: 160,
                        child: Stack(
                          children: [
                            Container(
                              //transform properties x(horizontal spacing) y(vetical spacing) z(tilt animation)
                              transform: Matrix4.translationValues(0, -20, 0),
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                'assets/1hearth.png',
                                width: 50,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFF404FA1),
                                ),
                                child: const AutoSizeInterText(
                                  text: "Shop With Us",
                                  color: Colors.white,
                                  fontSize: 14,
                                  fw: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/landingimg.png",
            width: 620,
          ),
        ],
      ),
    );
  }
}

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletView();
}

class _TabletView extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 630,
            child: Stack(
              children: [
                Image.asset(
                  "assets/2heart.png",
                  width: 630,
                ),
                SizedBox(
                  width: 574,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(100),
                      const AutoSizeInterText(
                        text:
                            "Discover Local Treasures, Delivered to Your Doorstep.",
                        fontSize: 40,
                        color: Color(0xFFFF0077),
                        fw: FontWeight.bold,
                        maxLines: 2,
                        fontFamily: "Poppins",
                      ),
                      const Gap(20),
                      const SizedBox(
                        width: 480,
                        child: AutoSizeInterText(
                          text:
                              "Shop from a curated collection of locally-made products that celebrate Filipino craftsmanship. Support local businesses while enjoying unique finds, all in one place!",
                          fontSize: 14,
                          color: Colors.black,
                          fw: FontWeight.normal,
                          fontFamily: "Poppinslight",
                          maxLines: 5,
                        ),
                      ),
                      const Gap(40),
                      SizedBox(
                        width: 160,
                        child: Stack(
                          children: [
                            Container(
                              //transform properties x(horizontal spacing) y(vetical spacing) z(tilt animation)
                              transform: Matrix4.translationValues(0, -20, 0),
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                'assets/1hearth.png',
                                width: 50,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFF404FA1),
                                ),
                                child: const AutoSizeInterText(
                                  text: "Shop With Us",
                                  color: Colors.white,
                                  fontSize: 14,
                                  fw: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Gap(60),
          Image.asset(
            "assets/landingimg.png",
            width: 620,
          ),
        ],
      ),
    );
  }
}

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 630,
            child: Stack(
              children: [
                Image.asset(
                  "assets/2heart.png",
                  width: 630,
                ),
                SizedBox(
                  width: 574,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(100),
                      const AutoSizeInterText(
                        text:
                            "Discover Local Treasures, Delivered to Your Doorstep.",
                        fontSize: 40,
                        color: Color(0xFFFF0077),
                        fw: FontWeight.bold,
                        maxLines: 2,
                        fontFamily: "Poppins",
                      ),
                      const Gap(20),
                      const SizedBox(
                        width: 480,
                        child: AutoSizeInterText(
                          text:
                              "Shop from a curated collection of locally-made products that celebrate Filipino craftsmanship. Support local businesses while enjoying unique finds, all in one place!",
                          fontSize: 14,
                          color: Colors.black,
                          fw: FontWeight.normal,
                          fontFamily: "Poppinslight",
                          maxLines: 5,
                        ),
                      ),
                      const Gap(40),
                      SizedBox(
                        width: 160,
                        child: Stack(
                          children: [
                            Container(
                              //transform properties x(horizontal spacing) y(vetical spacing) z(tilt animation)
                              transform: Matrix4.translationValues(0, -20, 0),
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                'assets/1hearth.png',
                                width: 50,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFF404FA1),
                                ),
                                child: const AutoSizeInterText(
                                  text: "Shop With Us",
                                  color: Colors.white,
                                  fontSize: 14,
                                  fw: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Gap(60),
          Image.asset(
            "assets/landingimg.png",
            width: 420,
          ),
        ],
      ),
    );
  }
}

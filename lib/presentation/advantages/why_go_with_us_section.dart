import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pamilya_project1/widgets/auto_size_inter_text.dart';

class WhyGoWithUsSection extends StatefulWidget {
  const WhyGoWithUsSection({super.key});

  @override
  State<WhyGoWithUsSection> createState() => _WhyGoWithUsSection();
}

class _WhyGoWithUsSection extends State<WhyGoWithUsSection> {
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
        child: Column(
          children: [
            SizedBox(
                width: size.width,
                child: Image.asset(
                  'assets/whygowithusbg.png',
                  width: size.width,
                )),
            const Gap(50),
            const AutoSizeInterText(
              text: 'How Can Pamilya Help You?',
              fontSize: 32,
              color: Color(0xFFED2080),
              fw: FontWeight.bold,
              fontFamily: "Poppinsbold",
              maxLines: 20,
            ),
            const Gap(100),
            Wrap(
              spacing: 50,
              children: [
                SizedBox(
                    width: 500,
                    child: Image.asset(
                      'assets/landingimg.png',
                      width: size.width,
                    )),
                const Gap(50),
                Wrap(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 500,
                          child: Image.asset('assets/group1.png'),
                        ),
                        const Gap(50),
                        SizedBox(
                          width: 500,
                          child: Image.asset('assets/ads.png'),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 500,
                          child: Image.asset('assets/group2.png'),
                        ),
                        SizedBox(
                          width: 500,
                          child: Image.asset('assets/group3.png'),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Gap(50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 700,
                    child: Image.asset(
                      'assets/pamilyabd.png',
                      width: size.width,
                    )),
                const Gap(20),
                const SizedBox(
                  width: 800,
                  child: AutoSizeInterText(
                    text:
                        'Join us as a valued partner in promoting native Philippine products. Together, we can empower local artisans, celebrate our culture, and enhance brand awareness while supporting sustainable local industries. Let’s create a platform that connects consumers with authentic, high-quality products that tell the Philippines\' story!',
                    fontSize: 18,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    align: TextAlign.center,
                    maxLines: 30,
                  ),
                )
              ],
            ),
          ],
        ));
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
        child: const Wrap(
            alignment: WrapAlignment.center, spacing: 50, children: [
        ]
      ));
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
          children: [
            SizedBox(
                width: size.width,
                child: Image.asset(
                  'assets/whygowithusbg.png',
                  width: size.width,
                )),
          ],
        ));
  }
}

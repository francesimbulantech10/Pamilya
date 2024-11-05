import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pamilya_project1/widgets/auto_size_inter_text.dart';

class BeOurPartnerSection extends StatefulWidget {
  const BeOurPartnerSection({super.key});

  @override
  State<BeOurPartnerSection> createState() => _BeOurPartnerSection();
}

class _BeOurPartnerSection extends State<BeOurPartnerSection> {
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
        child: Column(children: [
          Stack(
            children: [
              SizedBox(
                width: size.width,
                child: Image.asset(
                  'assets/bg_ourpartner.png',
                  width: size.width,
                ),
              ),
              Positioned.fill(
                child: Container(
                  alignment: Alignment.center, // Keep this as is
                  // ignore: deprecated_member_use

                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 100.0), // Adjust the left padding as needed
                    child: SizedBox(
                      width: 600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the text vertically
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 550,
                            child: AutoSizeInterText(
                              text:
                                  'Discover Local Treasures, Delivered to Your Doorstep.',
                              fontSize: 50,
                              color: Colors
                                  .white, // Changed to white for visibility
                              fw: FontWeight.bold,
                              fontFamily: "Poppinsbold",
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(50),
          const SizedBox(
            width: 1000,
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the text vertically
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeInterText(
                  text: 'Became A Partner',
                  fontSize: 50,
                  color: Color(0xFFED2080), // Changed to white for visibility
                  fw: FontWeight.bold,
                  fontFamily: "Poppinsbold",
                  maxLines: 2,
                ),
                Gap(20),
                SizedBox(
                  child: AutoSizeInterText(
                    text:
                        "Become a valued partner with us and play an important role in promoting and appreciating the diverse range of native Philippine products. We can work together to empower local craftsmen and businesses, creating a community that celebrates our country's distinctive workmanship and colorful culture. Collaboration with us will not only increase your brand's awareness, but will also help to grow local industries that are sustainable. Let's collaborate to establish a platform that connects consumers with real, high-quality products that represent the Philippines' narrative!",
                    fontSize: 18,
                    color: Colors.black,
                    fw: FontWeight.bold,
                    fontFamily: "Poppinslight",
                    maxLines: 20,
                    align: TextAlign.center,
                  ),
                ),
                Gap(50),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            width: 700,
            child: Image.asset('assets/global_partner.png'),
          )
        ]));
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
        child: const Wrap(
            alignment: WrapAlignment.center, spacing: 50, children: [
        ]
      ));
  }
}

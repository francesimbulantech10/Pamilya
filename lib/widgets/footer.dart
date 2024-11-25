import 'package:flutter/material.dart';
import 'package:pamilya_project1/widgets/auto_size_inter_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gap/gap.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1321) {
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

void _launchURL(String url) async {
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
      color: const Color.fromARGB(255, 231, 231, 231),
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Wrap(
          spacing: 50,
          alignment: WrapAlignment.center,
          children: [
            SizedBox(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      child: Image.asset(
                    "assets/pamilya_logo.png",
                    width: 150,
                  )),
                  const AutoSizeInterText(
                    text:
                        'Pamilya.com.ph is an e-commerce platform empowering Filipino entrepreneurs and local businesses to showcase their culture, craftsmanship, and products to a global market.',
                    fontSize: 2,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  const Gap(20),
                  Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => _launchURL(
                              "https://www.facebook.com/pamilya.com.ph"),
                          child: SizedBox(
                            width: 40,
                            height: 20,
                            child: Image.asset("assets/Facebook.png"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // Space between the images
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => _launchURL(
                              "https://instagram.com/pamilya_ph/?fbclid=IwY2xjawGOiI9leHRuA2FlbQIxMAABHSugpfXhNASzSfOwQE3vVkTU85JTpwkhKF8fL1RvReQf3lF1qTBa5ol5VA_aem_l9AxhoNJtOX3M2Pa654I2A"),
                          child: SizedBox(
                            width: 40,
                            height: 20,
                            child: Image.asset("assets/Instagram.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 500),
            const SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeInterText(
                    text: 'Features',
                    fontSize: 18,
                    color: Colors.black,
                    fw: FontWeight.bold,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  Gap(10),
                  AutoSizeInterText(
                    text: 'About us',
                    fontSize: 14,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  Gap(10),
                  AutoSizeInterText(
                    text: 'Be our partner',
                    fontSize: 14,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  Gap(10),
                  AutoSizeInterText(
                    text: 'Advantages',
                    fontSize: 14,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  Gap(10),
                  AutoSizeInterText(
                    text: 'Faq',
                    fontSize: 14,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoSizeInterText(
                    text: 'Contact',
                    fontSize: 18,
                    color: Colors.black,
                    fw: FontWeight.bold,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  const Gap(12),
                  InkWell(
                      onTap: () async {
                        final Uri phoneUri = Uri(
                          scheme: 'tel',
                          path: '09189160459',
                        );
                        if (await canLaunchUrl(phoneUri)) {
                          await launchUrl(phoneUri);
                        } else {
                          throw 'Could not launch $phoneUri';
                        }
                      },
                      child: const AutoSizeInterText(
                        text: '09189160459',
                        fontSize: 14,
                        color: Colors.black,
                        fw: FontWeight.normal,
                        fontFamily: "Poppinslight",
                        maxLines: 5,
                      )),
                  const Gap(11),
                  InkWell(
                    onTap: () async {
                      final Uri emailUri = Uri(
                        scheme: 'mailto',
                        path: 'eunicegarmino@gmail.com',
                      );
                      if (await canLaunchUrl(emailUri)) {
                        await launchUrl(emailUri);
                      } else {
                        throw 'Could not launch $emailUri';
                      }
                    },
                    child: const AutoSizeInterText(
                      text: 'eunicegarmino@gmail.com',
                      fontSize: 14,
                      color: Colors.black,
                      fw: FontWeight.normal,
                      fontFamily: "Poppinslight",
                      maxLines: 5,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(50),
            const AutoSizeInterText(
              text: 'Copyright © 2024 pamilya.com.ph',
              fontSize: 14,
              color: Colors.black,
              fw: FontWeight.bold,
              fontFamily: "Poppinslight",
            )
          ],
        ),
      ),
    );
  }
}

//Tablet view
//Tablet view
//Tablet view
//Tablet view

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletView();
}

class _TabletView extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      color: const Color.fromARGB(255, 231, 231, 231),
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Wrap(
          spacing: 50,
          alignment: WrapAlignment.center,
          children: [
            SizedBox(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      child: Image.asset(
                    "assets/pamilya_logo.png",
                    width: 150,
                  )),
                  const AutoSizeInterText(
                    text:
                        'Pamilya.com.ph is an e-commerce platform empowering Filipino entrepreneurs and local businesses to showcase their culture, craftsmanship, and products to a global market.',
                    fontSize: 2,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  const Gap(20),
                  Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => _launchURL(
                              "https://www.facebook.com/pamilya.com.ph"),
                          child: SizedBox(
                            width: 40,
                            height: 20,
                            child: Image.asset("assets/Facebook.png"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // Space between the images
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => _launchURL(
                              "https://instagram.com/pamilya_ph/?fbclid=IwY2xjawGOiI9leHRuA2FlbQIxMAABHSugpfXhNASzSfOwQE3vVkTU85JTpwkhKF8fL1RvReQf3lF1qTBa5ol5VA_aem_l9AxhoNJtOX3M2Pa654I2A"),
                          child: SizedBox(
                            width: 40,
                            height: 20,
                            child: Image.asset("assets/Instagram.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeInterText(
                    text: 'Features',
                    fontSize: 18,
                    color: Colors.black,
                    fw: FontWeight.bold,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  Gap(10),
                  AutoSizeInterText(
                    text: 'About us',
                    fontSize: 14,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  Gap(10),
                  AutoSizeInterText(
                    text: 'Be our partner',
                    fontSize: 14,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  Gap(10),
                  AutoSizeInterText(
                    text: 'Advantages',
                    fontSize: 14,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  Gap(10),
                  AutoSizeInterText(
                    text: 'Faq',
                    fontSize: 14,
                    color: Colors.black,
                    fw: FontWeight.normal,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoSizeInterText(
                    text: 'Contact',
                    fontSize: 18,
                    color: Colors.black,
                    fw: FontWeight.bold,
                    fontFamily: "Poppinslight",
                    maxLines: 5,
                  ),
                  const Gap(12),
                  InkWell(
                      onTap: () async {
                        final Uri phoneUri = Uri(
                          scheme: 'tel',
                          path: '09189160459',
                        );
                        if (await canLaunchUrl(phoneUri)) {
                          await launchUrl(phoneUri);
                        } else {
                          throw 'Could not launch $phoneUri';
                        }
                      },
                      child: const AutoSizeInterText(
                        text: '09189160459',
                        fontSize: 14,
                        color: Colors.black,
                        fw: FontWeight.normal,
                        fontFamily: "Poppinslight",
                        maxLines: 5,
                      )),
                  const Gap(11),
                  InkWell(
                    onTap: () async {
                      final Uri emailUri = Uri(
                        scheme: 'mailto',
                        path: 'eunicegarmino@gmail.com',
                      );
                      if (await canLaunchUrl(emailUri)) {
                        await launchUrl(emailUri);
                      } else {
                        throw 'Could not launch $emailUri';
                      }
                    },
                    child: const AutoSizeInterText(
                      text: 'eunicegarmino@gmail.com',
                      fontSize: 14,
                      color: Colors.black,
                      fw: FontWeight.normal,
                      fontFamily: "Poppinslight",
                      maxLines: 5,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(50),
            const AutoSizeInterText(
              text: 'Copyright © 2024 pamilya.com.ph',
              fontSize: 14,
              color: Colors.black,
              fw: FontWeight.bold,
              fontFamily: "Poppinslight",
            )
          ],
        ),
      ),
    );
  }
}

//Mobile View
//Mobile View
//Mobile View
//Mobile View
//Mobile View
//Mobile View

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      color: const Color.fromARGB(255, 231, 231, 231),
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    child: Image.asset(
                  "assets/pamilya_logo.png",
                  width: 150,
                )),
                const AutoSizeInterText(
                  text:
                      'Pamilya.com.ph is an e-commerce platform empowering Filipino entrepreneurs and local businesses to showcase their culture, craftsmanship, and products to a global market.',
                  fontSize: 2,
                  color: Colors.black,
                  fw: FontWeight.normal,
                  fontFamily: "Poppinslight",
                  maxLines: 5,
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _launchURL(
                            "https://www.facebook.com/pamilya.com.ph"),
                        child: SizedBox(
                          width: 60,
                          height: 30,
                          child: Image.asset("assets/Facebook.png"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5), // Space between the images
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _launchURL(
                            "https://instagram.com/pamilya_ph/?fbclid=IwY2xjawGOiI9leHRuA2FlbQIxMAABHSugpfXhNASzSfOwQE3vVkTU85JTpwkhKF8fL1RvReQf3lF1qTBa5ol5VA_aem_l9AxhoNJtOX3M2Pa654I2A"),
                        child: SizedBox(
                          width: 60,
                          height: 30,
                          child: Image.asset("assets/Instagram.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(20),
          const SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeInterText(
                  text: 'Features',
                  fontSize: 18,
                  color: Colors.black,
                  fw: FontWeight.bold,
                  fontFamily: "Poppinslight",
                  maxLines: 5,
                  align: TextAlign.start,
                ),
                Gap(10),
                AutoSizeInterText(
                  text: 'About us',
                  fontSize: 14,
                  color: Colors.black,
                  fw: FontWeight.normal,
                  fontFamily: "Poppinslight",
                  maxLines: 5,
                ),
                Gap(10),
                AutoSizeInterText(
                  text: 'Be our partner',
                  fontSize: 14,
                  color: Colors.black,
                  fw: FontWeight.normal,
                  fontFamily: "Poppinslight",
                  maxLines: 5,
                ),
                Gap(10),
                AutoSizeInterText(
                  text: 'Advantages',
                  fontSize: 14,
                  color: Colors.black,
                  fw: FontWeight.normal,
                  fontFamily: "Poppinslight",
                  maxLines: 5,
                ),
                Gap(10),
                AutoSizeInterText(
                  text: 'Faq',
                  fontSize: 14,
                  color: Colors.black,
                  fw: FontWeight.normal,
                  fontFamily: "Poppinslight",
                  maxLines: 5,
                ),
              ],
            ),
          ),
          const Gap(20),
          const AutoSizeInterText(
            text: 'Contact',
            fontSize: 18,
            color: Colors.black,
            fw: FontWeight.bold,
            fontFamily: "Poppinslight",
            maxLines: 5,
          ),
          const Gap(12),
          InkWell(
              onTap: () async {
                final Uri phoneUri = Uri(
                  scheme: 'tel',
                  path: '09189160459',
                );
                if (await canLaunchUrl(phoneUri)) {
                  await launchUrl(phoneUri);
                } else {
                  throw 'Could not launch $phoneUri';
                }
              },
              child: const AutoSizeInterText(
                text: '09189160459',
                fontSize: 14,
                color: Colors.black,
                fw: FontWeight.normal,
                fontFamily: "Poppinslight",
                maxLines: 5,
              )),
          const Gap(11),
          InkWell(
            onTap: () async {
              final Uri emailUri = Uri(
                scheme: 'mailto',
                path: 'eunicegarmino@gmail.com',
              );
              if (await canLaunchUrl(emailUri)) {
                await launchUrl(emailUri);
              } else {
                throw 'Could not launch $emailUri';
              }
            },
            child: const AutoSizeInterText(
              text: 'eunicegarmino@gmail.com',
              fontSize: 14,
              color: Colors.black,
              fw: FontWeight.normal,
              fontFamily: "Poppinslight",
              maxLines: 5,
            ),
          ),
          const Gap(50),
          const AutoSizeInterText(
            text: 'Copyright © 2024 pamilya.com.ph',
            fontSize: 14,
            color: Colors.black,
            fw: FontWeight.bold,
            fontFamily: "Poppinslight",
          )
        ],
      ),
    );
  }
}

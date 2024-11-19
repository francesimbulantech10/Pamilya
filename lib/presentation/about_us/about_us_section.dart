import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pamilya_project1/widgets/auto_size_inter_text.dart';
import 'dart:async';

import 'package:url_launcher/url_launcher.dart';

class AboutUssection extends StatefulWidget {
  const AboutUssection({super.key});

  @override
  State<AboutUssection> createState() => _AboutUssection();
}

class _AboutUssection extends State<AboutUssection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1300) {
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
  int? hoverIndex;
  List<String> imgList = [
    'assets/autofade/img1_home.png',
    'assets/autofade/img2_home.png',
    'assets/autofade/img3_home.png',
    'assets/asians-market-bambo.png',
  ];
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAutoFade();
  }

  void _startAutoFade() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      setState(() {
        hoverIndex = ((hoverIndex ?? 0) + 1) % imgList.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      color: Colors.white,
      child: SizedBox(
          width: size.width,
          child: SizedBox(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: size.width,
                    height: 800,
                    child: Stack(
                      children: imgList.asMap().entries.map((entry) {
                        int index = entry.key;
                        String imgPath = entry.value;
                        return AnimatedOpacity(
                          opacity: hoverIndex == index ? 1.0 : 0.0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOut,
                          child: Image.asset(
                            imgPath,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      alignment: Alignment.centerLeft, // Keep this as is
                      // ignore: deprecated_member_use

                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 100.0), // Adjust the left padding as needed
                        child: SizedBox(
                          width: 700,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Center the text vertically
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 700,
                                child: AutoSizeInterText(
                                  text:
                                      'Discover Local Treasures, Delivered to Your Doorstep.',
                                  fontSize: 70,
                                  color: Colors
                                      .white, // Changed to white for visibility
                                  fw: FontWeight.bold,
                                  fontFamily: "Poppinsbold",
                                  maxLines: 2,
                                ),
                              ),

                              const SizedBox(
                                  height: 50), // Add space between the texts
                              const SizedBox(
                                width: 500,
                                child: AutoSizeInterText(
                                  text:
                                      'Shop from a curated collection of locally-made products that celebrate Filipino craftsmanship. Support local businesses while enjoying unique finds, all in one place!',
                                  fontSize: 20,
                                  color: Colors.white,
                                  fw: FontWeight.normal,
                                  fontFamily: "Poppinslight",
                                  maxLines: 5,
                                ),
                              ),
                              const Gap(50),
                              SizedBox(
                                child: TextButton(
                                  onPressed: () async {
                                    const url = 'https://pamilya.com.ph';
                                    // ignore: deprecated_member_use
                                    if (await canLaunch(url)) {
                                      // ignore: deprecated_member_use
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: const Color(
                                        0xFF404FA1), // Set background color to #404FA1
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                  ),
                                  child: const Text(
                                    'Shop Now',
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Set text color for visibility
                                      fontSize: 16,
                                    ),
                                  ),
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
              const Gap(100),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 120,
                runSpacing: 10,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              // ignore: deprecated_member_use
                              .withOpacity(0.3), // Shadow color with opacity
                          spreadRadius: 5, // How wide the shadow spreads
                          blurRadius: 10, // How soft the shadow looks
                          offset: const Offset(
                              0, 5), // Position of the shadow (x, y)
                        ),
                      ],
                    ),
                    child: SizedBox(
                      height: 350,
                      width: 650,
                      child: Image.asset(
                        'assets/about_us_pic.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(50),
                  const SizedBox(
                    width: 600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeInterText(
                          text: 'About Us',
                          fontSize: 32,
                          color: Color(0xFFED2080),
                          fw: FontWeight.bold,
                          fontFamily: "Poppinsbold",
                          maxLines: 20,
                        ),
                        Gap(10),
                        SizedBox(
                          child: AutoSizeInterText(
                            text:
                                'Pamilya.com.ph is an e-commerce platform created to provide  Filipino entrepreneurs and community-based businesses digital global market platform  to showcase the rich culture, excellence, and ingenuity of Filipino craftsmanship and products. Pamilya.com.ph is a  brand under the e-commerce business unit of We Lead Comtech Inc. ',
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fw: FontWeight.bold,
                            fontFamily: "Poppinslight",
                            maxLines: 12,
                            align: TextAlign.center,
                          ),
                        ),
                        Gap(20),
                        AutoSizeInterText(
                          text:
                              'It is owned by a Christian business owner, Emmanuel C. Fernandez.',
                          fontSize: 14,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fw: FontWeight.bold,
                          fontFamily: "Poppinslight",
                          maxLines: 12,
                          align: TextAlign.justify,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Gap(100),
              //VALUES
              const SizedBox(
                width: 710,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeInterText(
                      text: 'Value',
                      fontSize: 32,
                      color: Color(0xFFED2080),
                      fw: FontWeight.bold,
                      fontFamily: "Poppinsbold",
                      maxLines: 20,
                    ),
                    Gap(10),
                    SizedBox(
                      child: AutoSizeInterText(
                        text:
                            'We will go and bear fruit as we become a global leader in the e-commerce industry who continues to elevate Filipino lives by raising up the culture of service, inclusion, and ownership, and ultimately pointing them to God.',
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fw: FontWeight.bold,
                        fontFamily: "Poppinslight",
                        maxLines: 12,
                        align: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              const Gap(100),
              //VALUES
              SizedBox(
                width: size.width,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeInterText(
                      text: 'Mission',
                      fontSize: 32,
                      color: Color(0xFFED2080),
                      fw: FontWeight.bold,
                      fontFamily: "Poppinsbold",
                      maxLines: 20,
                    ),
                    Gap(10),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 50,
                      children: [
                        SizedBox(
                          width: 410,
                          child: AutoSizeInterText(
                            text:
                                '🙶 Honor God through serving our country by providing opportunities to local artisans and their families, helping them showcase their God-given identity, talents, and artistry.',
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fw: FontWeight.bold,
                            fontFamily: "Poppinslight",
                            maxLines: 12,
                            align: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 410,
                          child: AutoSizeInterText(
                            text:
                                '🙶 Support communities and bridge the gap in the market by promoting unique and authentic products that are locally made and reflect the rich cultural heritage of the Philippines.',
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fw: FontWeight.bold,
                            fontFamily: "Poppinslight",
                            maxLines: 12,
                            align: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 410,
                          height: 80,
                          child: AutoSizeInterText(
                            text:
                                '🙶 Give the best of ourselves to do business that has an eternal impact on the lives of our customers, employees, and countrymen.',
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fw: FontWeight.bold,
                            fontFamily: "Poppinslight",
                            maxLines: 12,
                            align: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(100),
              SizedBox(
                child: Column(
                  children: [
                    const AutoSizeInterText(
                      text: 'Core Values',
                      fontSize: 32,
                      color: Color(0xFFED2080),
                      fw: FontWeight.bold,
                      fontFamily: "Poppinsbold",
                      maxLines: 20,
                    ),
                    SizedBox(
                      height: 250,
                      width: 1000,
                      child: Image.asset(
                        'assets/visions1.png',
                        width: 600,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ))),
    );
  }
}

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletView();
}

class _TabletView extends State<TabletView> {
  int? hoverIndex;
  List<String> imgList = [
    'assets/autofade/img1_home.png',
    'assets/autofade/img2_home.png',
    'assets/autofade/img3_home.png',
    'assets/asians-market-bambo.png',
  ];
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAutoFade();
  }

  void _startAutoFade() {
    _timer = Timer.periodic(const Duration(seconds: 8), (Timer timer) {
      setState(() {
        hoverIndex = ((hoverIndex ?? 0) + 1) % imgList.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      color: Colors.white,
      child: SizedBox(
          width: size.width,
          child: SizedBox(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(70),
              Stack(
                children: [
                  SizedBox(
                    width: size.width,
                    height: 800,
                    child: Stack(
                      children: imgList.asMap().entries.map((entry) {
                        int index = entry.key;
                        String imgPath = entry.value;
                        return AnimatedOpacity(
                          opacity: hoverIndex == index ? 1.0 : 0.0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOut,
                          child: Image.asset(
                            imgPath,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      alignment: Alignment.centerLeft, // Keep this as is
                      // ignore: deprecated_member_use

                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 100.0), // Adjust the left padding as needed
                        child: SizedBox(
                          width: 600,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Center the text vertically
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: size.width * .4,
                                child: const AutoSizeInterText(
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

                              const SizedBox(
                                  height: 50), // Add space between the texts
                              SizedBox(
                                width: size.width * .4,
                                child: const AutoSizeInterText(
                                  text:
                                      'Shop from a curated collection of locally-made products that celebrate Filipino craftsmanship. Support local businesses while enjoying unique finds, all in one place!',
                                  fontSize: 18,
                                  color: Colors.white,
                                  fw: FontWeight.normal,
                                  fontFamily: "Poppinslight",
                                  maxLines: 5,
                                ),
                              ),
                              const Gap(50),
                              SizedBox(
                                child: TextButton(
                                  onPressed: () async {
                                    const url = 'https://pamilya.com.ph';
                                    // ignore: deprecated_member_use
                                    if (await canLaunch(url)) {
                                      // ignore: deprecated_member_use
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: const Color(
                                        0xFF404FA1), // Set background color to #404FA1
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                  ),
                                  child: const Text(
                                    'Shop Now',
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Set text color for visibility
                                      fontSize: 16,
                                    ),
                                  ),
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

              const Gap(100),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              // ignore: deprecated_member_use
                              .withOpacity(0.3), // Shadow color with opacity
                          spreadRadius: 5, // How wide the shadow spreads
                          blurRadius: 10, // How soft the shadow looks
                          offset: const Offset(
                              0, 5), // Position of the shadow (x, y)
                        ),
                      ],
                    ),
                    child: SizedBox(
                      height: 350,
                      width: 650,
                      child: Image.asset(
                        'assets/about_us_pic.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(20),
                  const SizedBox(
                    width: 600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeInterText(
                          text: 'About Us',
                          fontSize: 32,
                          color: Color(0xFFED2080),
                          fw: FontWeight.bold,
                          fontFamily: "Poppinsbold",
                          maxLines: 20,
                        ),
                        Gap(10),
                        SizedBox(
                          child: AutoSizeInterText(
                            text:
                                'Pamilya.com.ph is an e-commerce platform created to provide  Filipino entrepreneurs and community-based businesses digital global market platform  to showcase the rich culture, excellence, and ingenuity of Filipino craftsmanship and products. Pamilya.com.ph is a  brand under the e-commerce business unit of We Lead Comtech Inc. ',
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fw: FontWeight.bold,
                            fontFamily: "Poppinslight",
                            maxLines: 12,
                            align: TextAlign.center,
                          ),
                        ),
                        Gap(20),
                        AutoSizeInterText(
                          text:
                              'It is owned by a Christian business owner, Emmanuel C. Fernandez.',
                          fontSize: 14,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fw: FontWeight.bold,
                          fontFamily: "Poppinslight",
                          maxLines: 12,
                          align: TextAlign.justify,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Gap(100),
              //VALUES
              const SizedBox(
                width: 710,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeInterText(
                      text: 'Value',
                      fontSize: 32,
                      color: Color(0xFFED2080),
                      fw: FontWeight.bold,
                      fontFamily: "Poppinsbold",
                      maxLines: 20,
                    ),
                    Gap(10),
                    SizedBox(
                      child: AutoSizeInterText(
                        text:
                            'We will go and bear fruit as we become a global leader in the e-commerce industry who continues to elevate Filipino lives by raising up the culture of service, inclusion, and ownership, and ultimately pointing them to God.',
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fw: FontWeight.bold,
                        fontFamily: "Poppinslight",
                        maxLines: 12,
                        align: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              const Gap(100),
              //VALUES
              SizedBox(
                width: size.width,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeInterText(
                      text: 'Mission',
                      fontSize: 32,
                      color: Color(0xFFED2080),
                      fw: FontWeight.bold,
                      fontFamily: "Poppinsbold",
                      maxLines: 20,
                    ),
                    Gap(10),
                    Column(
                      spacing: 50,
                      children: [
                        SizedBox(
                          width: 410,
                          child: AutoSizeInterText(
                            text:
                                '🙶 Honor God through serving our country by providing opportunities to local artisans and their families, helping them showcase their God-given identity, talents, and artistry.',
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fw: FontWeight.bold,
                            fontFamily: "Poppinslight",
                            maxLines: 12,
                            align: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 410,
                          child: AutoSizeInterText(
                            text:
                                '🙶 Support communities and bridge the gap in the market by promoting unique and authentic products that are locally made and reflect the rich cultural heritage of the Philippines.',
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fw: FontWeight.bold,
                            fontFamily: "Poppinslight",
                            maxLines: 12,
                            align: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 410,
                          height: 80,
                          child: AutoSizeInterText(
                            text:
                                '🙶 Give the best of ourselves to do business that has an eternal impact on the lives of our customers, employees, and countrymen.',
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fw: FontWeight.bold,
                            fontFamily: "Poppinslight",
                            maxLines: 12,
                            align: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(100),
              SizedBox(
                width: size.width * .9,
                child: Column(
                  children: [
                    const AutoSizeInterText(
                      text: 'Core Values',
                      fontSize: 32,
                      color: Color(0xFFED2080),
                      fw: FontWeight.bold,
                      fontFamily: "Poppinsbold",
                      maxLines: 20,
                    ),
                    SizedBox(
                      height: 250,
                      width: 1000,
                      child: Image.asset(
                        'assets/visions1.png',
                        width: 600,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/rds.png',
                  width: 100,
                ),
              )),
            ],
          ))),
    );
  }
}

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  int? hoverIndex;
  List<String> imgList = [
    'assets/autofade/img1_home.png',
    'assets/autofade/img2_home.png',
    'assets/autofade/img3_home.png',
    'assets/asians-market-bambo.png',
  ];
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAutoFade();
  }

  void _startAutoFade() {
    _timer = Timer.periodic(const Duration(seconds: 8), (Timer timer) {
      setState(() {
        hoverIndex = ((hoverIndex ?? 0) + 1) % imgList.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      color: Colors.white,
      child: SizedBox(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 600,
            child: Stack(
              children: [
                SizedBox(
                  width: size.width,
                  height: 800,
                  child: Stack(
                    children: imgList.asMap().entries.map((entry) {
                      int index = entry.key;
                      String imgPath = entry.value;
                      return AnimatedOpacity(
                        opacity: hoverIndex == index ? 1.0 : 0.0,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                        child: Image.asset(
                          imgPath,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    alignment: Alignment.topCenter, // Keep this as is
                    // ignore: deprecated_member_use

                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20), // Adjust the left padding as needed
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Center the text vertically
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
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

                            const SizedBox(
                                height: 50), // Add space between the texts
                            const SizedBox(
                              child: AutoSizeInterText(
                                text:
                                    'Shop from a curated collection of locally-made products that celebrate Filipino craftsmanship. Support local businesses while enjoying unique finds, all in one place!',
                                fontSize: 18,
                                color: Colors.white,
                                fw: FontWeight.normal,
                                fontFamily: "Poppinslight",
                                maxLines: 5,
                              ),
                            ),
                            const Gap(50),
                            SizedBox(
                              child: TextButton(
                                onPressed: () async {
                                  const url = 'https://pamilya.com.ph';
                                  // ignore: deprecated_member_use
                                  if (await canLaunch(url)) {
                                    // ignore: deprecated_member_use
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: const Color(
                                      0xFF404FA1), // Set background color to #404FA1
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                ),
                                child: const Text(
                                  'Shop Now',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Set text color for visibility
                                    fontSize: 16,
                                  ),
                                ),
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
          ),
          const Gap(100),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          // ignore: deprecated_member_use
                          .withOpacity(0.3), // Shadow color with opacity
                      spreadRadius: 5, // How wide the shadow spreads
                      blurRadius: 10, // How soft the shadow looks
                      offset:
                          const Offset(0, 5), // Position of the shadow (x, y)
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 350,
                  width: size.width * .9,
                  child: Image.asset(
                    'assets/about_us_pic.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Gap(20),
              SizedBox(
                width: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AutoSizeInterText(
                      text: 'About Us',
                      fontSize: 32,
                      color: Color(0xFFED2080),
                      fw: FontWeight.bold,
                      fontFamily: "Poppinsbold",
                      maxLines: 20,
                    ),
                    const Gap(10),
                    SizedBox(
                      width: size.width * .9,
                      child: const AutoSizeInterText(
                        text:
                            'Pamilya.com.ph is an e-commerce platform created to provide  Filipino entrepreneurs and community-based businesses digital global market platform  to showcase the rich culture, excellence, and ingenuity of Filipino craftsmanship and products. Pamilya.com.ph is a  brand under the e-commerce business unit of We Lead Comtech Inc. ',
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fw: FontWeight.bold,
                        fontFamily: "Poppinslight",
                        maxLines: 12,
                        align: TextAlign.center,
                      ),
                    ),
                    const Gap(20),
                    SizedBox(
                      width: size.width * .9,
                      child: const AutoSizeInterText(
                        text:
                            'It is owned by a Christian business owner, Emmanuel C. Fernandez.',
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fw: FontWeight.bold,
                        fontFamily: "Poppinslight",
                        maxLines: 12,
                        align: TextAlign.center,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(100),
          //VALUES
          SizedBox(
            width: 710,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AutoSizeInterText(
                  text: 'Value',
                  fontSize: 32,
                  color: Color(0xFFED2080),
                  fw: FontWeight.bold,
                  fontFamily: "Poppinsbold",
                  maxLines: 20,
                ),
                const Gap(10),
                SizedBox(
                  width: size.width * .9,
                  child: const AutoSizeInterText(
                    text:
                        'We will go and bear fruit as we become a global leader in the e-commerce industry who continues to elevate Filipino lives by raising up the culture of service, inclusion, and ownership, and ultimately pointing them to God.',
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fw: FontWeight.bold,
                    fontFamily: "Poppinslight",
                    maxLines: 12,
                    align: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          const Gap(100),
          //VALUES
          SizedBox(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AutoSizeInterText(
                  text: 'Mission',
                  fontSize: 32,
                  color: Color(0xFFED2080),
                  fw: FontWeight.bold,
                  fontFamily: "Poppinsbold",
                  maxLines: 20,
                ),
                const Gap(10),
                Column(
                  spacing: 50,
                  children: [
                    SizedBox(
                      width: size.width * .9,
                      child: const AutoSizeInterText(
                        text:
                            '🙶 Honor God through serving our country by providing opportunities to local artisans and their families, helping them showcase their God-given identity, talents, and artistry.',
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fw: FontWeight.bold,
                        fontFamily: "Poppinslight",
                        maxLines: 12,
                        align: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: size.width * .9,
                      child: const AutoSizeInterText(
                        text:
                            '🙶 Support communities and bridge the gap in the market by promoting unique and authentic products that are locally made and reflect the rich cultural heritage of the Philippines.',
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fw: FontWeight.bold,
                        fontFamily: "Poppinslight",
                        maxLines: 12,
                        align: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: size.width * .9,
                      height: 80,
                      child: const AutoSizeInterText(
                        text:
                            '🙶 Give the best of ourselves to do business that has an eternal impact on the lives of our customers, employees, and countrymen.',
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fw: FontWeight.bold,
                        fontFamily: "Poppinslight",
                        maxLines: 12,
                        align: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(100),
          SizedBox(
            width: size.width * .9,
            child: Column(
              children: [
                const AutoSizeInterText(
                  text: 'Core Values',
                  fontSize: 32,
                  color: Color(0xFFED2080),
                  fw: FontWeight.bold,
                  fontFamily: "Poppinsbold",
                  maxLines: 20,
                ),
                SizedBox(
                  height: 250,
                  width: 1000,
                  child: Image.asset(
                    'assets/visions1.png',
                    width: 600,
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

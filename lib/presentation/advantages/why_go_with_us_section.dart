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
                        Stack(
                          children: [
                            SizedBox(
                              width: 520,
                              child: Image.asset('assets/boxshadow1.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60, top: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text: 'FREE MARKETING & ADVERTISEMENT',
                                      fontSize: 15,
                                      color: Color(0xFFED2080),
                                      fw: FontWeight.bold,
                                      fontFamily: "Poppinsbold",
                                      maxLines: 20,
                                    ),
                                  ),
                                  Gap(20),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              '• Using the Pamilya.com.ph platform will help entrepreneurs: ',
                                          fontSize: 8,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.start,
                                          maxLines: 30,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              '1.   Reach a wider audience of Filipino families across the Philippines.',
                                          fontSize: 8,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.start,
                                          maxLines: 30,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              '2. Showcase their products and services to thousands of potential customers.',
                                          fontSize: 8,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.start,
                                          maxLines: 30,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              '3. You will have brand visibility through the website and social media pages of PAMILYA.',
                                          fontSize: 8,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.start,
                                          maxLines: 30,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Gap(50),
                        Stack(
                          children: [
                            SizedBox(
                              width: 520,
                              child: Image.asset('assets/boxshadow2.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60, top: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text:
                                          'PROVIDE FREE ACCOUNT REGISTRATION & SIGN UP',
                                      fontSize: 15,
                                      color: Color(0xFFED2080),
                                      fw: FontWeight.bold,
                                      fontFamily: "Poppinsbold",
                                      maxLines: 20,
                                    ),
                                  ),
                                  Gap(20),
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text:
                                          'Pamilya.com.ph will be an online platform for Christian  Entrepreneurs which will provide FREE registration and sign-up.',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fw: FontWeight.normal,
                                      fontFamily: "Poppinslight",
                                      align: TextAlign.center,
                                      maxLines: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: 520,
                              child: Image.asset('assets/boxshadow4.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60, top: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text: 'WHAT DO YOU NEED TO SIGN UP :',
                                      fontSize: 15,
                                      color: Color(0xFFED2080),
                                      fw: FontWeight.bold,
                                      fontFamily: "Poppinsbold",
                                      maxLines: 20,
                                    ),
                                  ),
                                  Gap(20),
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text:
                                          'Pre-registration form will be sent to you after the Business Opportunity Meeting for review and approval.PAMILYA Team will be the one to create an account with you for hassle-free registration. Account Details will be then sent to your active email address.',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fw: FontWeight.normal,
                                      fontFamily: "Poppinslight",
                                      align: TextAlign.center,
                                      maxLines: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Gap(50),
                        Stack(
                          children: [
                            SizedBox(
                              width: 520,
                              child: Image.asset('assets/boxshadow3.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60, top: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text: 'PROVIDE YOU ADDITIONAL SALES',
                                      fontSize: 15,
                                      color: Color(0xFFED2080),
                                      fw: FontWeight.bold,
                                      fontFamily: "Poppinsbold",
                                      maxLines: 20,
                                    ),
                                  ),
                                  Gap(20),
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text:
                                          '•Pamilya.com.ph will HELP YOU gain additional sales on top of your existing marketing platforms (Shopee, Lazada, social media pages, etc).•Since we are also pursuing bulk orders, this could potentially increase sales on a large scale and help you gain consistent buyers.',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fw: FontWeight.normal,
                                      fontFamily: "Poppinslight",
                                      align: TextAlign.center,
                                      maxLines: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
              fontSize: 25,
              color: Color(0xFFED2080),
              fw: FontWeight.bold,
              fontFamily: "Poppinsbold",
              maxLines: 20,
            ),
            const Gap(100),
            Column(
              spacing: 50,
              children: [
                SizedBox(
                    width: 500,
                    child: Image.asset(
                      'assets/landingimg.png',
                      width: size.width,
                    )),
                const Gap(50),
                Column(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: 520,
                              child: Image.asset('assets/boxshadow1.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60, top: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text: 'FREE MARKETING & ADVERTISEMENT',
                                      fontSize: 15,
                                      color: Color(0xFFED2080),
                                      fw: FontWeight.bold,
                                      fontFamily: "Poppinsbold",
                                      maxLines: 20,
                                    ),
                                  ),
                                  Gap(20),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              '• Using the Pamilya.com.ph platform will help entrepreneurs: ',
                                          fontSize: 8,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.start,
                                          maxLines: 30,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              '1.   Reach a wider audience of Filipino families across the Philippines.',
                                          fontSize: 8,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.start,
                                          maxLines: 30,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              '2. Showcase their products and services to thousands of potential customers.',
                                          fontSize: 8,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.start,
                                          maxLines: 30,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              '3. You will have brand visibility through the website and social media pages of PAMILYA.',
                                          fontSize: 8,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.start,
                                          maxLines: 30,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Gap(50),
                        Stack(
                          children: [
                            SizedBox(
                              width: 520,
                              child: Image.asset('assets/boxshadow2.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60, top: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text:
                                          'PROVIDE FREE ACCOUNT REGISTRATION & SIGN UP',
                                      fontSize: 15,
                                      color: Color(0xFFED2080),
                                      fw: FontWeight.bold,
                                      fontFamily: "Poppinsbold",
                                      maxLines: 20,
                                    ),
                                  ),
                                  Gap(20),
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text:
                                          'Pamilya.com.ph will be an online platform for Christian  Entrepreneurs which will provide FREE registration and sign-up.',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fw: FontWeight.normal,
                                      fontFamily: "Poppinslight",
                                      align: TextAlign.center,
                                      maxLines: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: 520,
                              child: Image.asset('assets/boxshadow4.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60, top: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text: 'WHAT DO YOU NEED TO SIGN UP :',
                                      fontSize: 15,
                                      color: Color(0xFFED2080),
                                      fw: FontWeight.bold,
                                      fontFamily: "Poppinsbold",
                                      maxLines: 20,
                                    ),
                                  ),
                                  Gap(20),
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text:
                                          'Pre-registration form will be sent to you after the Business Opportunity Meeting for review and approval.PAMILYA Team will be the one to create an account with you for hassle-free registration. Account Details will be then sent to your active email address.',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fw: FontWeight.normal,
                                      fontFamily: "Poppinslight",
                                      align: TextAlign.center,
                                      maxLines: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Gap(50),
                        Stack(
                          children: [
                            SizedBox(
                              width: 520,
                              child: Image.asset('assets/boxshadow3.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60, top: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text: 'PROVIDE YOU ADDITIONAL SALES',
                                      fontSize: 15,
                                      color: Color(0xFFED2080),
                                      fw: FontWeight.bold,
                                      fontFamily: "Poppinsbold",
                                      maxLines: 20,
                                    ),
                                  ),
                                  Gap(20),
                                  SizedBox(
                                    width: 400,
                                    child: AutoSizeInterText(
                                      text:
                                          '•Pamilya.com.ph will HELP YOU gain additional sales on top of your existing marketing platforms (Shopee, Lazada, social media pages, etc).•Since we are also pursuing bulk orders, this could potentially increase sales on a large scale and help you gain consistent buyers.',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fw: FontWeight.normal,
                                      fontFamily: "Poppinslight",
                                      align: TextAlign.center,
                                      maxLines: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
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
            const Gap(20),
            SizedBox(
                width: size.width,
                height: 400,
                child: Image.asset(
                  'assets/whygowithusbg.png',
                  width: size.width,
                  height: 400,
                  fit: BoxFit.cover,
                )),
            const Gap(50),
            const SizedBox(
              width: 400,
              child: AutoSizeInterText(
                text: 'How Can Pamilya Help You?',
                fontSize: 32,
                color: Color(0xFFED2080),
                fw: FontWeight.bold,
                fontFamily: "Poppinsbold",
                maxLines: 20,
                align: TextAlign.center,
              ),
            ),
            const Gap(100),
            Column(
              spacing: 50,
              children: [
                SizedBox(
                    width: 500,
                    child: Image.asset(
                      'assets/landingimg.png',
                      width: size.width,
                    )),
                const Gap(50),
                Column(
                  spacing: 50,
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  width: 520,
                                  child: Image.asset(
                                    'assets/boxshadow1mobileview.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 40, top: 40),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              'FREE MARKETING & ADVERTISEMENT',
                                          fontSize: 18,
                                          color: Color(0xFFED2080),
                                          fw: FontWeight.bold,
                                          fontFamily: "Poppinsbold",
                                          maxLines: 20,
                                        ),
                                      ),
                                      Gap(5),
                                      Column(
                                        children: [
                                          SizedBox(
                                            width: 350,
                                            child: AutoSizeInterText(
                                              text:
                                                  '• Using the Pamilya.com.ph platform will help entrepreneurs: ',
                                              fontSize: 14,
                                              color: Colors.black,
                                              fw: FontWeight.normal,
                                              fontFamily: "Poppinslight",
                                              align: TextAlign.start,
                                              maxLines: 30,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 300,
                                            child: AutoSizeInterText(
                                              text:
                                                  '1.   Reach a wider audience of Filipino families across the Philippines.',
                                              fontSize: 14,
                                              color: Colors.black,
                                              fw: FontWeight.normal,
                                              fontFamily: "Poppinslight",
                                              align: TextAlign.start,
                                              maxLines: 30,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 300,
                                            child: AutoSizeInterText(
                                              text:
                                                  '2. Showcase their products and services to thousands of potential customers.',
                                              fontSize: 14,
                                              color: Colors.black,
                                              fw: FontWeight.normal,
                                              fontFamily: "Poppinslight",
                                              align: TextAlign.start,
                                              maxLines: 30,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 300,
                                            child: AutoSizeInterText(
                                              text:
                                                  '3. You will have brand visibility through the website and social media pages of PAMILYA.',
                                              fontSize: 14,
                                              color: Colors.black,
                                              fw: FontWeight.normal,
                                              fontFamily: "Poppinslight",
                                              align: TextAlign.start,
                                              maxLines: 30,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Gap(50),
                            Stack(
                              children: [
                                SizedBox(
                                  width: 520,
                                  child: Image.asset(
                                      'assets/boxshadow2mobile.png'),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 40, top: 40),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 500,
                                        child: AutoSizeInterText(
                                          text:
                                              'PROVIDE FREE ACCOUNT REGISTRATION & SIGN UP',
                                          fontSize: 18,
                                          color: Color(0xFFED2080),
                                          fw: FontWeight.bold,
                                          fontFamily: "Poppinsbold",
                                          maxLines: 20,
                                        ),
                                      ),
                                      Gap(20),
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              'Pamilya.com.ph will be an online platform for Christian  Entrepreneurs which will provide FREE registration and sign-up.',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.center,
                                          maxLines: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  width: 520,
                                  child: Image.asset(
                                      'assets/boxshadow4mobile.png'),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 40, top: 40),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text: 'WHAT DO YOU NEED TO SIGN UP :',
                                          fontSize: 18,
                                          color: Color(0xFFED2080),
                                          fw: FontWeight.bold,
                                          fontFamily: "Poppinsbold",
                                          maxLines: 20,
                                        ),
                                      ),
                                      Gap(20),
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text:
                                              'Pre-registration form will be sent to you after the Business Opportunity Meeting for review and approval.PAMILYA Team will be the one to create an account with you for hassle-free registration. Account Details will be then sent to your active email address.',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.center,
                                          maxLines: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Gap(50),
                            Stack(
                              children: [
                                SizedBox(
                                  width: 520,
                                  child: Image.asset(
                                      'assets/boxshadow3mobile.png'),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 40, top: 40),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 400,
                                        child: AutoSizeInterText(
                                          text: 'PROVIDE YOU ADDITIONAL SALES',
                                          fontSize: 18,
                                          color: Color(0xFFED2080),
                                          fw: FontWeight.bold,
                                          fontFamily: "Poppinsbold",
                                          maxLines: 20,
                                        ),
                                      ),
                                      Gap(20),
                                      SizedBox(
                                        width: 300,
                                        child: AutoSizeInterText(
                                          text:
                                              '•Pamilya.com.ph will HELP YOU gain additional sales on top of your existing marketing platforms (Shopee, Lazada, social media pages, etc).•Since we are also pursuing bulk orders, this could potentially increase sales on a large scale and help you gain consistent buyers.',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fw: FontWeight.normal,
                                          fontFamily: "Poppinslight",
                                          align: TextAlign.center,
                                          maxLines: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
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
                  width: 400,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: AutoSizeInterText(
                      text:
                          'Join us as a valued partner in promoting native Philippine products. Together, we can empower local artisans, celebrate our culture, and enhance brand awareness while supporting sustainable local industries. Let’s create a platform that connects consumers with authentic, high-quality products that tell the Philippines\' story!',
                      fontSize: 18,
                      color: Colors.black,
                      fw: FontWeight.normal,
                      fontFamily: "Poppinslight",
                      align: TextAlign.justify,
                      maxLines: 30,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

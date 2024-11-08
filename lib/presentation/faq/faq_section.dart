import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pamilya_project1/widgets/auto_size_inter_text.dart';

class FAQSection extends StatefulWidget {
  const FAQSection({super.key});

  @override
  State<FAQSection> createState() => _FAQSection();
}

class _FAQSection extends State<FAQSection> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Stack(
                children: [
                  SizedBox(
                    width: 1500,
                    child: Image.asset(
                      'assets/Faqbg.png',
                      width: size.width,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40, top: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(20),
                        AutoSizeInterText(
                          text: 'Frequently Ask Question',
                          fontSize: 46,
                          color: Color(0xFFED2080),
                          fw: FontWeight.bold,
                          fontFamily: "Poppinsbold",
                        ),
                        Gap(70),
                        SizedBox(
                          width: 1000,
                          child: AutoSizeInterText(
                            text:
                                'The Pamilya platform offers a variety of Filipino-made products. Our goal is to support both Filipino business owners and workers by showcasing the craftsmanship and delicacies from various regions in the Philippines. We invite you to learn more about us and encourage you to reach out with any inquiries you may have.  ',
                            fontSize: 24,
                            color:
                                Colors.black, // Changed to white for visibility
                            fw: FontWeight.normal,
                            fontFamily: "Poppinslight",
                            align: TextAlign.justify,
                            maxLines: 10,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 100,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 500,
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 122, 122,
                                          122), // Set the border color here
                                      width:
                                          1.0, // Adjust the border width as needed
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Optional: add rounded corners
                                  ),
                                  child: const ExpansionTile(
                                    title: Text(
                                      "Who can sell on Pamilya.com.ph?",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors
                                            .pink, // Adjust color to match the screenshot
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.expand_more,
                                      color: Colors.black,
                                    ),
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          "• Pamilya.com.ph welcomes both individuals and businesses "
                                          "(Christian or non-Christian) who offer products or services "
                                          "that align with the platform's mission and guidelines.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 500,
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 122, 122,
                                          122), // Set the border color here
                                      width:
                                          1.0, // Adjust the border width as needed
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Optional: add rounded corners
                                  ),
                                  child: const ExpansionTile(
                                    title: Text(
                                      "Pre-register as a SELLER on PAMILYA Store",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors
                                            .pink, // Adjust color to match the screenshot
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.expand_more,
                                      color: Colors.black,
                                    ),
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          "Please fill out the Google Form that will be sent to you. We still need to gather  your basic details and product information",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 500,
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 122, 122,
                                          122), // Set the border color here
                                      width:
                                          1.0, // Adjust the border width as needed
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Optional: add rounded corners
                                  ),
                                  child: const ExpansionTile(
                                    title: Text(
                                      "Marketing",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors
                                            .pink, // Adjust color to match the screenshot
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.expand_more,
                                      color: Colors.black,
                                    ),
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          "Pamilya will handle the marketing ensuring they reach a wider audience. You just need to send us your business logo, product photos and price lists as basis",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 500,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 122, 122,
                                        122), // Set the border color here
                                    width:
                                        1.0, // Adjust the border width as needed
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Optional: add rounded corners
                                ),
                                child: const ExpansionTile(
                                  title: Text(
                                    "Shipping",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors
                                          .pink, // Adjust color to match the screenshot
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.expand_more,
                                    color: Colors.black,
                                  ),
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        "• Sellers will be subject to fees, such as service fee from the platform, which is 7%"
                                        "This will be used to maintain our website and to help you with online marketing your products."
                                        "Ex. The total sale (including shipping fee) is Php 200,Php"
                                        ','
                                        "Php 14.00 will be our service fee.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 122, 122,
                                        122), // Set the border color here
                                    width:
                                        1.0, // Adjust the border width as needed
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Optional: add rounded corners
                                ),
                                child: const ExpansionTile(
                                  title: Text(
                                    "Payment",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors
                                          .pink, // Adjust color to match the screenshot
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.expand_more,
                                    color: Colors.black,
                                  ),
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        "Once the product is successfully delivered, we will process the payment and it will be credited on your bank account / GCASH number provided during the REGISTRATION. kindly wait for 5-7 banking days.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 122, 122,
                                        122), // Set the border color here
                                    width:
                                        1.0, // Adjust the border width as needed
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Optional: add rounded corners
                                ),
                                child: const ExpansionTile(
                                  title: Text(
                                    "Are there any fees for selling on pamilya.com.ph",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors
                                          .pink, // Adjust color to match the screenshot
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.expand_more,
                                    color: Colors.black,
                                  ),
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        "Pamilya will handle the marketing ensuring they reach a wider audience. You just need to send us your business logo, product photos and price lists as basis",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(100),
                ],
              ),
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
        child: const Wrap(
            alignment: WrapAlignment.center, spacing: 50, children: [
        ]
      ));
  }
}

import 'package:flutter/material.dart';


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
  final List<FAQModel> faqList = [
    FAQModel(
      title: "Who can sell on Pamilya.com.ph?",
      content: "• Pamilya.com.ph welcomes both individuals and businesses "
          "(Christian or non-Christian) who offer products or services "
          "that align with the platform's mission and guidelines.",
    ),
    FAQModel(
      title: "Pre-register as a SELLER on PAMILYA Store",
      content:
          "Please fill out the Google Form that will be sent to you. We still need to gather your basic details and product information.",
    ),
    FAQModel(
      title: "Marketing",
      content:
          "Pamilya will handle the marketing ensuring they reach a wider audience. You just need to send us your business logo, product photos, and price lists as basis.",
    ),
    FAQModel(
      title: "Shipping",
      content:
          "Sellers will be subject to fees, such as a service fee from the platform, which is 7%. This will be used to maintain our website and to help you with online marketing your products. For example, if the total sale (including shipping fee) is Php 200, Php 14.00 will be our service fee.",
    ),
    FAQModel(
      title: "Payment",
      content:
          "Once the product is successfully delivered, we will process the payment and it will be credited to your bank account / GCASH number provided during the REGISTRATION. Kindly wait for 5-7 banking days.",
    ),
    FAQModel(
      title: "Are there any fees for selling on pamilya.com.ph?",
      content:
          "Yes, there is a 7% service fee which will be used for maintaining our platform and for marketing your products.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header with background image and description
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
                      SizedBox(height: 20),
                      Text(
                        'Frequently Ask Question',
                        style: TextStyle(
                          fontSize: 46,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFED2080),
                          fontFamily: "Poppinsbold",
                        ),
                      ),
                      SizedBox(height: 70),
                      SizedBox(
                        width: 1000,
                        child: Text(
                          'The Pamilya platform offers a variety of Filipino-made products. Our goal is to support both Filipino business owners and workers by showcasing the craftsmanship and delicacies from various regions in the Philippines.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontFamily: "Poppinslight",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // FAQ Section using mapping
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 100,
              children: faqList
                  .map((faq) => SizedBox(
                        width: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 122, 122, 122),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: ExpansionTile(
                                  title: Text(
                                    faq.title,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  trailing: const Icon(
                                    Icons.expand_more,
                                    color: Colors.black,
                                  ),
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        faq.content,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
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
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

// Model class for FAQ
class FAQModel {
  final String title;
  final String content;

  FAQModel({required this.title, required this.content});
}

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletView();
}

class _TabletView extends State<TabletView> {
  @override
  final List<FAQModel> faqList = [
    FAQModel(
      title: "Who can sell on Pamilya.com.ph?",
      content: "• Pamilya.com.ph welcomes both individuals and businesses "
          "(Christian or non-Christian) who offer products or services "
          "that align with the platform's mission and guidelines.",
    ),
    FAQModel(
      title: "Pre-register as a SELLER on PAMILYA Store",
      content:
          "Please fill out the Google Form that will be sent to you. We still need to gather your basic details and product information.",
    ),
    FAQModel(
      title: "Marketing",
      content:
          "Pamilya will handle the marketing ensuring they reach a wider audience. You just need to send us your business logo, product photos, and price lists as basis.",
    ),
    FAQModel(
      title: "Shipping",
      content:
          "Sellers will be subject to fees, such as a service fee from the platform, which is 7%. This will be used to maintain our website and to help you with online marketing your products. For example, if the total sale (including shipping fee) is Php 200, Php 14.00 will be our service fee.",
    ),
    FAQModel(
      title: "Payment",
      content:
          "Once the product is successfully delivered, we will process the payment and it will be credited to your bank account / GCASH number provided during the REGISTRATION. Kindly wait for 5-7 banking days.",
    ),
    FAQModel(
      title: "Are there any fees for selling on pamilya.com.ph?",
      content:
          "Yes, there is a 7% service fee which will be used for maintaining our platform and for marketing your products.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header with background image and description
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
                      SizedBox(height: 20),
                      Text(
                        'Frequently Ask Question',
                        style: TextStyle(
                          fontSize: 46,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFED2080),
                          fontFamily: "Poppinsbold",
                        ),
                      ),
                      SizedBox(height: 70),
                      SizedBox(
                        width: 1000,
                        child: Text(
                          'The Pamilya platform offers a variety of Filipino-made products. Our goal is to support both Filipino business owners and workers by showcasing the craftsmanship and delicacies from various regions in the Philippines.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontFamily: "Poppinslight",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // FAQ Section using mapping
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 100,
              children: faqList
                  .map((faq) => SizedBox(
                        width: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 122, 122, 122),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: ExpansionTile(
                                  title: Text(
                                    faq.title,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  trailing: const Icon(
                                    Icons.expand_more,
                                    color: Colors.black,
                                  ),
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        faq.content,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
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
                      ))
                  .toList(),
            ),
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
  final List<FAQModel> faqList = [
    FAQModel(
      title: "Who can sell on Pamilya.com.ph?",
      content: "• Pamilya.com.ph welcomes both individuals and businesses "
          "(Christian or non-Christian) who offer products or services "
          "that align with the platform's mission and guidelines.",
    ),
    FAQModel(
      title: "Pre-register as a SELLER on PAMILYA Store",
      content:
          "Please fill out the Google Form that will be sent to you. We still need to gather your basic details and product information.",
    ),
    FAQModel(
      title: "Marketing",
      content:
          "Pamilya will handle the marketing ensuring they reach a wider audience. You just need to send us your business logo, product photos, and price lists as basis.",
    ),
    FAQModel(
      title: "Shipping",
      content:
          "Sellers will be subject to fees, such as a service fee from the platform, which is 7%. This will be used to maintain our website and to help you with online marketing your products. For example, if the total sale (including shipping fee) is Php 200, Php 14.00 will be our service fee.",
    ),
    FAQModel(
      title: "Payment",
      content:
          "Once the product is successfully delivered, we will process the payment and it will be credited to your bank account / GCASH number provided during the REGISTRATION. Kindly wait for 5-7 banking days.",
    ),
    FAQModel(
      title: "Are there any fees for selling on pamilya.com.ph?",
      content:
          "Yes, there is a 7% service fee which will be used for maintaining our platform and for marketing your products.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header with background image and description
          SizedBox(
            child: Stack(
              children: [
                SizedBox(
                  width: size.width,
                  child: Image.asset(
                    'assets/Faqbg.png',
                    width: size.width,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Frequently Ask Question',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFED2080),
                          fontFamily: "Poppinsbold",
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 270,
                          child: Text(
                            'The Pamilya platform offers a variety of Filipino-made products. Our goal is to support both Filipino business owners and workers by showcasing the craftsmanship and delicacies from various regions in the Philippines.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "Poppinslight",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // FAQ Section using mapping
          Column(
            children: faqList
                .map((faq) => SizedBox(
                      width: 340,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 122, 122, 122),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: ExpansionTile(
                                title: Text(
                                  faq.title,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink,
                                  ),
                                ),
                                trailing: const Icon(
                                  Icons.expand_more,
                                  color: Colors.black,
                                ),
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      faq.content,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
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
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:pamilya_project1/presentation/about_us/about_us_section.dart';

import 'package:pamilya_project1/widgets/footer.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});
  @override
  State<AboutUsScreen> createState() => _AboutUsScreen();
}

class _AboutUsScreen extends State<AboutUsScreen> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBody: true,
      drawerEnableOpenDragGesture: false,
      drawerEdgeDragWidth: 0,
      endDrawerEnableOpenDragGesture: false,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: Size(
            size.height,
            75,
          ),
          child: const SampleAppBar()),
      endDrawer: const AppBarDrawer(),
      body: Stack(
        children: [
          Image.asset('assets'),
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Purpose of this is still display the class in home section

                      AboutUssection(),
                      Gap(150),
                      FooterSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

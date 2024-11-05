import 'package:pamilya_project1/presentation/about_us/about_us_screen.dart';
import 'package:pamilya_project1/presentation/advantages/why_go_with_us_sreen.dart';
import 'package:pamilya_project1/presentation/be_our_partner/be_our_partner_screen.dart';
import 'package:pamilya_project1/presentation/faq/faq_screen.dart';

import 'package:go_router/go_router.dart';
import 'package:pamilya_project1/presentation/home/home_screen.dart';

class WebRouter {
  String initial = '/';

  WebRouter();
  late final router = GoRouter(
    //This remove the hashtags of the URL, However i can't find the solution for refreshing the screen
    // urlPathStrategy: UrlPathStrategy.path,
    debugLogDiagnostics: true,
    //Redirection

    // errorBuilder: (context, state) => const NotFoundScreen(),

    routes: <GoRoute>[
      GoRoute(
          path: '/',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const HomeScreen(),
            );
          }),
      GoRoute(
          path: '/about-us',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const AboutUsScreen(),
            );
          }),
      GoRoute(
          path: '/whygous',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const WhyGoWithUsSreen(),
            );
          }),
      GoRoute(
          path: '/be-our-partner',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const BeOurPartnerScreen(),
            );
          }),
      GoRoute(
          path: '/faq',
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const FaqScreen(),
            );
          }),
    ],
  );
}

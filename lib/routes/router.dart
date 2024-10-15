import 'package:pamilya_project1/presentation/home/home_screen.dart';
import 'package:go_router/go_router.dart';

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
    
     
   
    ],
  );
}
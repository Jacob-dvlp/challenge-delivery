
import 'imporst.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashPage(),
    '/home': (context) => const HomePage()
  };
}

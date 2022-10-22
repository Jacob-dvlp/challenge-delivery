import 'imports.dart';
import 'widgets/body_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Challenge'),
          centerTitle: true,
          elevation: 0,
        ),
        body: const BodyHomePage());
  }
}

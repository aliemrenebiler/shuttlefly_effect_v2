import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/screens/homescreen.dart';
import '/screens/choosescreen.dart';
import '/screens/gamescreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive,
      overlays: [SystemUiOverlay.bottom]);
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(const MyApp());
  });
}

// App Widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/homescreen',
      routes: {
        '/homescreen': (context) => const HomeScreen(),
        '/choosescreen': (context) => const ChooseScreen(),
        '/gamescreen': (context) => const GameScreen(),
      },
    );
  }
}

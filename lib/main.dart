import 'package:flutter/material.dart';
import 'screens/gamescreen.dart';

void main() {
  runApp(const MyApp());
}

// App Widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/welcomescreen': (context) => const WelcomeScreen(),
        '/gamescreen': (context) => const GameScreen(),
      },
      home: const WelcomeScreen(),
    );
  }
}

// New Game button included
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text("OYNA"),
          onPressed: () {
            Navigator.pushNamed(context, '/gamescreen');
          },
        ),
      ),
    );
  }
}

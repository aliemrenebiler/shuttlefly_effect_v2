import 'package:flutter/material.dart';

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
        '/welcome': (context) => const WelcomeScreen(),
        '/game': (context) => const GameScreen(),
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
      appBar: AppBar(
        title: const Text('START GAME PAGE'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: FlatButton(
          child: const Text('Play'),
          color: Colors.red,
          onPressed: () => Navigator.pushNamed(context, '/game'),
        ),
      ),
    );
  }
}

// New Game and Continue buttons included
class GameScreen extends StatelessWidget {
  const GameScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is Continue Page'),
    );
  }
}

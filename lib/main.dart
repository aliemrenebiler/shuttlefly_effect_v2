import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// App Widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: WelcomePage(),
      ),
    );
  }
}

// New Game button included
class WelcomePage extends StatefulWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text('Shuttlefly Effect'),
          ),
          TextButton(
            child: const Text('New Game'),
            onPressed: changePage,
          ),
          TextButton(
            child: const Text('Continue'),
            onPressed: changePage,
          ),
        ],
      ),
    );
  }

  void changePage() {}
}

// New Game and Continue buttons included
class ContinuePage extends StatelessWidget {
  const ContinuePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is Continue Page'),
    );
  }
}

// The main game page that all the events happen
class GamePage extends StatelessWidget {
  const GamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is Game Page'),
    );
  }
}

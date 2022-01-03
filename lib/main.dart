import 'package:flutter/material.dart';
import 'database/texts.dart';

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
      body: Center(
        child: MaterialButton(
          child: const Text('Play'),
          color: Colors.red,
          onPressed: () => Navigator.pushNamed(context, '/game'),
        ),
      ),
    );
  }
}

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Column(
          children: const [Text('blabla'), Text('long bla bla bla...')],
        ),
        Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: CharStateBox(index: 0),
                  flex: 1,
                  child: CharStateBox(index: 1),
                  flex: 1,
                  child: CharStateBox(index: 2),
                ),
              ],
            ),
            Flexible(flex: 2, child: CharStateBox(index: 0)),
            SizedBox(width: 20),
            Expanded(child: CharStateBox(index: 1)),
            SizedBox(width: 20),
            Expanded(child: CharStateBox(index: 2)),
          ],
        )
      ],
    ));
  }
}

class CharStateBox extends StatelessWidget {
  final int index;
  // Character character;
  CharStateBox({required this.index /*, this.character*/});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        // Character photo
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const Icon(Icons.ac_unit),
            ),
          ],
        ),

        // Other
        Column(
          children: [
            Row(
              children: [
                Text('character name'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.arrow_back),
                Icon(Icons.arrow_back),
                Icon(Icons.arrow_back),
                Icon(Icons.arrow_back),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}

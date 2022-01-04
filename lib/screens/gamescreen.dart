import 'package:flutter/material.dart';
import '../database/texts.dart';

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
                ),
                Flexible(
                  flex: 1,
                  child: CharStateBox(index: 1),
                ),
                Flexible(
                  flex: 1,
                  child: CharStateBox(index: 2),
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}

class CharStateBox extends StatelessWidget {
  final int index;
  // Character character;
  const CharStateBox({Key? key, required this.index /*, this.character*/})
      : super(key: key);
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
              children: const [
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

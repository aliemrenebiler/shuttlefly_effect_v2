import 'package:flutter/material.dart';
import '../database/texts.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var event = Event("YIKILIYORUZ", "OHAAAA");
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(event.title),
                Text(event.desc),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: const [
                Expanded(
                  flex: 1,
                  child: CharStateBox(index: 0),
                ),
                Expanded(
                  flex: 1,
                  child: CharStateBox(index: 1),
                ),
                Expanded(
                  flex: 1,
                  child: CharStateBox(index: 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Icon(Icons.ac_unit),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: const Text('character name'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: const [
                    Icon(Icons.arrow_back),
                    Icon(Icons.arrow_back),
                    Icon(Icons.arrow_back),
                    Icon(Icons.arrow_back),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

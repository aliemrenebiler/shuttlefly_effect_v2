import 'package:flutter/material.dart';
import '../database/allvariables.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  Text(event.title),
                  Text(event.desc),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: CharStateBox(
                      charName: char0.name,
                      h: char0.health,
                      o: char0.oxygen,
                      p: char0.psycho,
                      e: char0.energy),
                ),
                Expanded(
                  flex: 1,
                  child: CharStateBox(
                      charName: char1.name,
                      h: char1.health,
                      o: char1.oxygen,
                      p: char1.psycho,
                      e: char1.energy),
                ),
                Expanded(
                  flex: 1,
                  child: CharStateBox(
                      charName: char2.name,
                      h: char2.health,
                      o: char2.oxygen,
                      p: char2.psycho,
                      e: char2.energy),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CharStateBox extends StatefulWidget {
  final String charName;
  int h; // health
  int o; // oxygen
  int p; // psychology
  int e; // energy
  // Character character;
  CharStateBox(
      {Key? key,
      required this.charName,
      required this.h,
      required this.o,
      required this.p,
      required this.e})
      : super(key: key);

  @override
  State<CharStateBox> createState() => _CharStateBoxState();
}

class _CharStateBoxState extends State<CharStateBox> {
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
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(widget.charName),
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

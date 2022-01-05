import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CHOOSE CHARACTERS',
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/gamescreen');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[Text('DONE')],
                  )))
        ],
        elevation: 0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CharacterBox(index: 0, img_url: 'assets/avatar1.png'),
          ),
          Expanded(
            child: CharacterBox(index: 1, img_url: 'assets/avatar1.png'),
          ),
          Expanded(
            child: CharacterBox(index: 2, img_url: 'assets/avatar1.png'),
          ),
        ],
      ),
    );
  }
}

class CharacterBox extends StatefulWidget {
  final int index;
  String img_url;
  CharacterBox({Key? key, required this.index, required this.img_url})
      : super(key: key);
  @override
  _CharacterBoxState createState() => _CharacterBoxState();
}

class _CharacterBoxState extends State<CharacterBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(widget.img_url),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      /*child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Icon(Icons.icecream),
                      ),*/
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: const Text('NAME'),
                        )),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('SKILL NAME'),
                        )),
                    Expanded(
                      flex: 1,
                      child: Text('desc.'),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const Text('RANDOMIZE',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo),
                ),
              ),
            )),
      ],
    );
  }
}
/*
class CharacterBox extends StatelessWidget {
  final int index;
  CharacterBox({required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/avatar1.png'), 
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      /*child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Icon(Icons.icecream),
                      ),*/
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text('NAME'),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Text('SKILL NAME'),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text('desc.'),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton(
            onPressed: () {},
            child: const Text('RANDOMIZE',
                style: TextStyle(
                  color: Colors.indigo,
                )),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigo[100]),
            ),
          ),
        ),
      ],
    );
  }
}*/

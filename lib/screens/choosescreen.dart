import 'package:flutter/material.dart';

class Choose extends StatelessWidget {
  const Choose({Key? key}) : super(key: key);

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
            child: CharacterBox(index: 0),
          ),
          Expanded(
            child: CharacterBox(index: 1),
          ),
          Expanded(
            child: CharacterBox(index: 2),
          ),
        ],
      ),
    );
  }
}

class CharacterBox extends StatelessWidget {
  late final int index;
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
                    /*Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/avatar1.png'), 
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),*/
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Icon(Icons.icecream),
                      ),
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
}

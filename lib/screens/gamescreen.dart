import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../database/allvariables.dart';
import '../database/theme.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(seDarkBlue),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child:
                    EventBox(eventTitle: event.title, eventDesc: event.desc)),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: CharStateBox(
                        charName: char0.charName,
                        imgURL: char0.imgURL,
                        h: char0.health,
                        o: char0.oxygen,
                        p: char0.psycho,
                        e: char0.energy),
                  ),
                  Expanded(
                    flex: 5,
                    child: CharStateBox(
                        charName: char1.charName,
                        imgURL: char1.imgURL,
                        h: char1.health,
                        o: char1.oxygen,
                        p: char1.psycho,
                        e: char1.energy),
                  ),
                  Expanded(
                    flex: 5,
                    child: CharStateBox(
                        charName: char2.charName,
                        imgURL: char2.imgURL,
                        h: char2.health,
                        o: char2.oxygen,
                        p: char2.psycho,
                        e: char2.energy),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: MenuButton(),
                        ),
                        Expanded(
                          flex: 2,
                          child: SkipButton(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// EVENT BOX
class EventBox extends StatefulWidget {
  String eventTitle; // event title
  String eventDesc; // event description
  EventBox({
    Key? key,
    required this.eventTitle,
    required this.eventDesc,
  }) : super(key: key);

  @override
  State<EventBox> createState() => _EventBoxState();
}

class _EventBoxState extends State<EventBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text(
              widget.eventTitle,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.fredokaOne(
                color: Color(seDarkBlue),
                fontSize: 25,
              ),
            ),
            margin: const EdgeInsets.fromLTRB(15, 20, 15, 10),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Text(
                  widget.eventDesc,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.fredokaOne(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: seBorderWidth,
          color: Color(seBlue),
        ),
      ),
      margin: const EdgeInsets.all(5),
    );
  }
}

// CHARACTER STATE BOX
class CharStateBox extends StatelessWidget {
  final String charName;
  final String imgURL;
  int h; // health
  int o; // oxygen
  int p; // psychology
  int e; // energy

  CharStateBox({
    Key? key,
    required this.imgURL,
    required this.charName,
    required this.h,
    required this.o,
    required this.p,
    required this.e,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imgURL,
                  ),
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  width: seBorderWidth,
                  color: Color(seDarkCream),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    charName,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.fredokaOne(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  margin: const EdgeInsets.all(3),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: StateValueBox(
                          text: 'Health',
                          color: sePinkyRed,
                          dColor: seDarkPinkyRed,
                          value: h,
                        ),
                      ),
                      Expanded(
                        child: StateValueBox(
                          text: 'Oxygen',
                          color: seLightBlue,
                          dColor: seBlue,
                          value: o,
                        ),
                      ),
                      Expanded(
                        child: StateValueBox(
                          text: 'Moral',
                          color: sePurple,
                          dColor: seDarkPurple,
                          value: p,
                        ),
                      ),
                      Expanded(
                        child: StateValueBox(
                          text: 'Energy',
                          color: seYellow,
                          dColor: seDarkYellow,
                          value: e,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Color(seLightCream),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: seBorderWidth,
          color: Color(seCream),
        ),
      ),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(2),
    );
  }
}

// STATE VALUE BOX
class StateValueBox extends StatefulWidget {
  final String text;
  var color;
  var dColor;
  int value;
  StateValueBox({
    Key? key,
    required this.text,
    required this.color,
    required this.dColor,
    required this.value,
  }) : super(key: key);

  @override
  _StateValueBoxState createState() => _StateValueBoxState();
}

class _StateValueBoxState extends State<StateValueBox> {
  var value;
  @override
  Widget build(BuildContext context) {
    value = widget.value;
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            '$value',
            textAlign: TextAlign.center,
            style: GoogleFonts.fredokaOne(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Text(
            widget.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.fredokaOne(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Color(widget.color),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: seBorderWidth,
          color: Color(widget.dColor),
        ),
      ),
      margin: const EdgeInsets.all(3),
    );
  }
}

// MENU BOX
class MenuBox extends StatelessWidget {
  const MenuBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        'PAUSED',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.fredokaOne(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      margin: const EdgeInsets.only(left: 10),
                    ),
                  ),
                  const MenuCloseButton(),
                ],
              ),
              const MainMenuButton(),
              const RestartButton(),
            ],
          ),
          width: 200,
          margin: const EdgeInsets.all(15),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: seBorderWidth,
          color: Color(seGrey),
        ),
      ),
    );
  }
}

// RESTART BOX
class RestartBox extends StatelessWidget {
  const RestartBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5),
                height: 50,
                child: Column(
                  children: [
                    Text(
                      'ARE YOU SURE?',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.fredokaOne(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'You will lose all progress.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.fredokaOne(
                        color: Color(sePinkyRed),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const NoButton(),
              const YesButton(),
            ],
          ),
          width: 200,
          margin: const EdgeInsets.all(15),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: seBorderWidth,
          color: Color(seGrey),
        ),
      ),
    );
  }
}

// BUTTONS
class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: const MenuBox(),
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'MENU',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredokaOne(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        decoration: BoxDecoration(
          color: Color(seLightBlue),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: seBorderWidth,
            color: Color(seBlue),
          ),
        ),
        margin: const EdgeInsets.all(5),
      ),
    );
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SKIP',
              style: GoogleFonts.fredokaOne(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Color(sePinkyRed),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: seBorderWidth,
            color: Color(seDarkPinkyRed),
          ),
        ),
        margin: const EdgeInsets.all(5),
      ),
    );
  }
}

class MenuCloseButton extends StatelessWidget {
  const MenuCloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        // SAVE GAME AND GO BACK TO MAIN MENU
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'X',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredokaOne(
            color: Color(seDarkPinkyRed),
            fontSize: 30,
          ),
        ),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(seLightGrey),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: seBorderWidth,
            color: Color(seGrey),
          ),
        ),
        margin: const EdgeInsets.all(5),
      ),
    );
  }
}

class MainMenuButton extends StatelessWidget {
  const MainMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        Navigator.pop(context);
        Navigator.pop(context);
        // SAVE GAME AND GO BACK TO MAIN MENU
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'MAIN MENU',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredokaOne(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        height: seButtonHeight,
        decoration: BoxDecoration(
          color: Color(seLightBlue),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: seBorderWidth,
            color: Color(seBlue),
          ),
        ),
        margin: const EdgeInsets.all(5),
      ),
    );
  }
}

class RestartButton extends StatelessWidget {
  const RestartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: const RestartBox(),
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'RESTART',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredokaOne(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        height: seButtonHeight,
        decoration: BoxDecoration(
          color: Color(sePinkyRed),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: seBorderWidth,
            color: Color(seDarkPinkyRed),
          ),
        ),
        margin: const EdgeInsets.all(5),
      ),
    );
  }
}

class YesButton extends StatelessWidget {
  const YesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        Navigator.pop(context);
        // DELETE ALL THE PROGRESS
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'YES',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredokaOne(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        height: seButtonHeight,
        decoration: BoxDecoration(
          color: Color(sePinkyRed),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: seBorderWidth,
            color: Color(seDarkPinkyRed),
          ),
        ),
        margin: const EdgeInsets.all(5),
      ),
    );
  }
}

class NoButton extends StatelessWidget {
  const NoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'NO',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredokaOne(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        height: seButtonHeight,
        decoration: BoxDecoration(
          color: Color(seGrey),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: seBorderWidth,
            color: Color(seDarkGrey),
          ),
        ),
        margin: const EdgeInsets.all(5),
      ),
    );
  }
}

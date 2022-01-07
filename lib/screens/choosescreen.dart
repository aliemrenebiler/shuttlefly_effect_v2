import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../database/allvariables.dart';
import '../database/theme.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(seDarkBlue),
      appBar: AppBar(
        title: Text(
          'CHOOSE CHARACTERS',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredokaOne(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(seBlue),
        leading: const BackButton(),
        leadingWidth: 100,
        actions: const [
          DoneButton(),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: CharacterBox(
                      index: 1,
                      imgURL: char0.imgURL,
                      charName: char0.charName,
                    ),
                  ),
                  SkillBox(
                    index: 1,
                    skillName: char0.skillName,
                    skillDesc: char0.skillDesc,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: CharacterBox(
                      index: 2,
                      imgURL: char1.imgURL,
                      charName: char1.charName,
                    ),
                  ),
                  SkillBox(
                    index: 2,
                    skillName: char1.skillName,
                    skillDesc: char1.skillDesc,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: CharacterBox(
                      index: 3,
                      imgURL: char2.imgURL,
                      charName: char2.charName,
                    ),
                  ),
                  SkillBox(
                    index: 3,
                    skillName: char2.skillName,
                    skillDesc: char2.skillDesc,
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

// CHARACTER NAME AND PICTURE BOX
class CharacterBox extends StatefulWidget {
  int index;
  String imgURL;
  String charName;
  CharacterBox(
      {Key? key,
      required this.index,
      required this.imgURL,
      required this.charName})
      : super(key: key);
  @override
  _CharacterBoxState createState() => _CharacterBoxState();
}

class _CharacterBoxState extends State<CharacterBox> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    var index = widget.index;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'CHARACTER $index',
              textAlign: TextAlign.center,
              style: GoogleFonts.fredokaOne(
                color: Color(seDarkPinkyRed),
                fontSize: 20,
              ),
            ),
            margin: const EdgeInsets.only(top: 10),
          ),
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      widget.imgURL,
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    if (counter == 0) {
                      counter = 4;
                    } else {
                      counter--;
                    }

                    // GEREKLİ İŞLEMLER <======

                    setState(() {});
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '<',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.fredokaOne(
                        color: Colors.white,
                        fontSize: 35,
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
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        '$counter',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      height: seButtonHeight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          width: seBorderWidth,
                          color: Color(seDarkCream),
                        ),
                      ),
                      margin: const EdgeInsets.only(top: 5, bottom: 5),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    if (counter == 4) {
                      counter = 0;
                    } else {
                      counter++;
                    }

                    // GEREKLİ İŞLEMLER <======

                    setState(() {});
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '>',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.fredokaOne(
                        color: Colors.white,
                        fontSize: 35,
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
                ),
              ),
            ],
          ),
        ],
      ),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(seLightCream),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: seBorderWidth,
          color: Color(seCream),
        ),
      ),
    );
  }
}

// CHARACTER NAME AND PICTURE BOX
class SkillBox extends StatefulWidget {
  final int index;
  String skillName;
  String skillDesc;
  SkillBox(
      {Key? key,
      required this.index,
      required this.skillName,
      required this.skillDesc})
      : super(key: key);
  @override
  _SkillBoxState createState() => _SkillBoxState();
}

class _SkillBoxState extends State<SkillBox> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    var index = widget.index;
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'SKILL OF $index',
              textAlign: TextAlign.center,
              style: GoogleFonts.fredokaOne(
                color: Color(seDarkBlue),
                fontSize: 20,
              ),
            ),
            margin: const EdgeInsets.only(top: 5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    if (counter == 0) {
                      counter = 9;
                    } else {
                      counter--;
                    }

                    // GEREKLİ İŞLEMLER <======

                    setState(() {});
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '<',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.fredokaOne(
                        color: Colors.white,
                        fontSize: 35,
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
                ),
              ),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: SkillDescBox(
                            skillName: widget.skillName,
                            skillDesc: widget.skillDesc,
                          ),
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
                      widget.skillName,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.fredokaOne(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    height: seButtonHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        width: seBorderWidth,
                        color: Color(seDarkGrey),
                      ),
                    ),
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    if (counter == 9) {
                      counter = 0;
                    } else {
                      counter++;
                    }

                    // GEREKLİ İŞLEMLER <======

                    setState(() {});
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '>',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.fredokaOne(
                        color: Colors.white,
                        fontSize: 35,
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
                ),
              ),
            ],
          ),
        ],
      ),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(seLightGrey),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: seBorderWidth,
          color: Color(seGrey),
        ),
      ),
    );
  }
}

// SKILL DESCRIPTION BOX
class SkillDescBox extends StatelessWidget {
  final String skillName;
  final String skillDesc;
  const SkillDescBox(
      {Key? key, required this.skillName, required this.skillDesc})
      : super(key: key);

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
                        skillName,
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
              Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height / 3,
                child: SingleChildScrollView(
                  child: Text(
                    skillDesc,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.fredokaOne(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
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
class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        // DELETE ALL THE PROGRESS
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'BACK',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredokaOne(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        height: seButtonHeight,
        width: 100,
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

class DoneButton extends StatelessWidget {
  const DoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/gamescreen');
        // DELETE ALL THE PROGRESS
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'DONE',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredokaOne(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        height: seButtonHeight,
        width: 100,
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

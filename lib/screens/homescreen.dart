import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../database/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/shuttlefly_effect_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 0),
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height * 2 / 3,
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/shuttlefly_effect_logo.png'),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              margin: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  NewGameButton(),
                  ContinueButton(),
                  ExitButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// EXIT BOX
class ExitBox extends StatelessWidget {
  const ExitBox({Key? key}) : super(key: key);

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
                child: Text(
                  'ARE YOU SURE?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredokaOne(
                    color: Colors.black,
                    fontSize: 20,
                  ),
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
class NewGameButton extends StatelessWidget {
  const NewGameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/choosescreen');
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'NEW GAME',
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

class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'CONTINUE',
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

class ExitButton extends StatelessWidget {
  const ExitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: const ExitBox(),
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
          'EXIT',
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

class YesButton extends StatelessWidget {
  const YesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        SystemNavigator.pop(); // EXIT
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

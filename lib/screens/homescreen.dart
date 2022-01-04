import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('CONTINUE',
                  style: TextStyle(
                    color: Colors.indigo,
                  )),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo[100]),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/choose');
              },
              child: const Text('NEW GAME',
                  style: TextStyle(
                    color: Colors.indigo,
                  )),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo[100]),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('SETTINGS',
                  style: TextStyle(
                    color: Colors.indigo,
                  )),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo[100]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

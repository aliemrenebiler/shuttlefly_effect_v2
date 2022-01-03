import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size);
    return Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: () => print('clicked'),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 100,
              ),
            ),
          ],
          leading: InkWell(
            onTap: () => print('clicked'),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 100,
            ),
          ),
          title: Text(
            'CHOOSE CHARACTERS',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Flexible(flex: 2, child: KarakterBox(index: 0)),
                SizedBox(width: 20),
                Expanded(child: KarakterBox(index: 1)),
                SizedBox(width: 20),
                Expanded(child: KarakterBox(index: 2)),
              ],
            )
          ],
        ));
  }
}

class KarakterBox extends StatelessWidget {
  final int index;
  KarakterBox({required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const Icon(Icons.ac_unit),
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            Icon(Icons.arrow_back),
            Text('NAME'),
            Icon(Icons.arrow_right),
          ],
        ),
        SizedBox(height: 40),
        Text('SKILL NAME'),
        Text('lorem lipsum'),
        SizedBox(height: 40),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text('Randomize'),
        )
      ],
    );
  }
}

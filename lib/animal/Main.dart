import 'package:flutter/material.dart';

import '../main.dart';
import 'Animal.dart';
import 'Cat.dart';
import 'Dog.dart';
import 'Home.dart';
import 'Panda.dart';

const TAG = "Main";

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Animal> animals = [Cat(), Dog(), Panda()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: animals.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: (animals[index] is Home)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            "${animals[index].getKind()} любит ${animals[index].getFood()}",
                            style: const TextStyle(fontSize: 22)),
                        Text("(${(animals[index] as Home).getFunction()})",
                            style: const TextStyle(fontSize: 22)),
                      ],
                    )
                  : Text(
                      "${animals[index].getKind()} любит ${animals[index].getFood()}",
                      style: const TextStyle(fontSize: 22)),
              leading: (animals[index] is Home)
                  ? const Icon(Icons.home)
                  : const Text(""),
            );
          }),
    );
  }
}

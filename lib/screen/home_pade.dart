import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widget/selected_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          backgroundBlendMode: BlendMode.color,
          gradient: LinearGradient(colors: [Colors.pink, Colors.black])),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.rectangle),
                  width: 1000,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      const ListTile(
                        title: Text('user full name'),
                        subtitle: Text('college name'),
                        trailing: CircleAvatar(
                          radius: 40,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: const Text('TODO LIST')),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text('EDIT PROFILE'))
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
              GridView.count(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  childAspectRatio: 1.6,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(choices.length, (index) {
                    return Center(child: SelectCard(choice: choices[index]));
                  })),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {},child: Icon(Icons.logout),),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});
  final String? title;
  final IconData? icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Home', icon: Icons.home),
  Choice(title: 'Contact', icon: Icons.contacts),
  Choice(title: 'Map', icon: Icons.map),
  Choice(title: 'Phone', icon: Icons.phone),
  Choice(title: 'Camera', icon: Icons.camera_alt),
  Choice(title: 'Setting', icon: Icons.settings),
];

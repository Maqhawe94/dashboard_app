import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_simple_app/screen/floatbutton.dart';

import '../widget/elevatedbutton.dart';
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
          title: const Text('Do Not Know'),
        ),
        drawer:const Drawer(backgroundColor: Colors.pink,),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      shape: BoxShape.rectangle),
                  width: 1000,
                  height: 150,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(margin: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                           const ListTile(
                             contentPadding: EdgeInsets.zero,
                              title: Text('User name'),
                              subtitle: Text('college name'),
                            ),
                            Row(
                              children: [
                               CustomElevatedButton(elevation: MaterialStateProperty.all(10),text: 'TODO LIST',onPressed:(){},),
                                const SizedBox(
                                  width: 10,
                                ),
                                CustomElevatedButton(color: Colors.white,onPressed: (){},elevation: MaterialStateProperty.all(10),text: 'EDIT PROFILE',)
                              ],
                            )
                          ],
                        ),
                      )),
                      Container(
                        margin:const EdgeInsets.only(right: 10),
                        child:const CircleAvatar(
                          radius: 50,
                          child: Icon(Icons.person,size: 45,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GridView.count(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  childAspectRatio: 1.5,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  children: List.generate(choices.length, (index) {
                    return Center(child: SelectCard(choice: choices[index]));
                  })),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const FloatAction()));
          },
          child:const Icon(Icons.logout),
        ),
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

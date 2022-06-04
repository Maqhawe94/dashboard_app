import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FloatAction extends StatelessWidget {
  const FloatAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Welcome',style: Theme.of(context).textTheme.bodyLarge,),
    );
  }
}
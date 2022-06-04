import 'dart:math';

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(  {Key? key, this.text, this.onPressed,this.elevation,this.color})
      : super(key: key);
  Color? color;
  String? text;
  MaterialStateProperty<double?>? elevation;
   void Function()? onPressed;
   Color color1 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            elevation: elevation,
            backgroundColor: MaterialStateProperty.all(
                color?? Theme.of(context).primaryColor)),
        child:Text(text!,style:TextStyle(color: color!=null?Theme.of(context).primaryColor:null)));
  }
}

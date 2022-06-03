
import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final void Function()? onPressed;
  String? text;
   CustomTextButton({Key? key,this.onPressed,this.text}) : super(key: key);

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends 


State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: widget.onPressed,child:Text(widget.text!) );
  }
}
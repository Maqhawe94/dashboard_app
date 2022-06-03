import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String? label;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final bool? obscureText;
  final Function? validator;

  CustomTextField(
      {this.label,
      this.controller,
      this.inputType = TextInputType.text,
      this.obscureText = false,
      this.validator});

  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Color? currentColor;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 1.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextField(
            obscureText: widget.obscureText!,
            
            
            //keyboardType: widget.inputType,
            controller: widget.controller,
            decoration: InputDecoration(
              hintStyle:const TextStyle(
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w300,
              ),
              border: InputBorder.none,
              hintText: widget.label,
            ),
          ),
        ),
      ),
    );
  }
}

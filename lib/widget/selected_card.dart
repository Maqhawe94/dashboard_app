import 'package:flutter/material.dart';

import '../screen/home_pade.dart';

class SelectCard extends StatelessWidget {  
   SelectCard({Key? key, this.choice}) : super(key: key);  
  final Choice? choice;  
  
  @override  
  Widget build(BuildContext context) {  
    final TextStyle? textStyle = Theme.of(context).textTheme.headline5;  
    return GestureDetector(
      onTap: (() {
        showAboutDialog(context: context,applicationName: 'Hello welcome');
      }),
      child: Container(  width: 100,height: 100,
          color: Colors.white,  
          child: Center(child: Column(  
              crossAxisAlignment: CrossAxisAlignment.center,  
              children: <Widget>[  
                Expanded(child: Icon(choice!.icon, size:35.0, color: textStyle!.color)),  
                Text(choice!.title!, style: textStyle),  
              ]  
          ),  
          )  
      ),
    );  
  }  
}  
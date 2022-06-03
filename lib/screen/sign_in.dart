import 'package:flutter/material.dart';
import 'package:flutter_simple_app/screen/home_pade.dart';
import 'package:flutter_simple_app/widget/textfield.dart';

import '../widget/textbutton.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          Text(
            'Happy you are back!',
            style: Theme.of(context).textTheme.headline5,
          ),
           const SizedBox(
            height: 15,
          ),
          Text(
            'Log In',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          CustomTextField(
            label: 'Email',
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            label: 'Password',
          ),
          const SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [const Text('Not a member?'),CustomTextButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const SignIn()), (route) => false);
            },text: 'Sign Up',)],),
          ElevatedButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const HomePage()), (route) => false);
          }, child:const Text('Log In'))
        ],
      ),
    );
  }
}

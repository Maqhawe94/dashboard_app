import 'package:flutter/material.dart';
import 'package:flutter_simple_app/screen/home_pade.dart';
import 'package:flutter_simple_app/screen/sign_in.dart';
import 'package:flutter_simple_app/widget/textbutton.dart';

import '../widget/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the family!',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Register',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10,),
            CustomTextField(
              label: 'Ful Name',
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              label: 'Email Address',
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              label: 'Password',
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              label: 'Repeat Password',
            ),
            const SizedBox(height:10),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [const Text('Already a member?'),CustomTextButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const SignIn()), (route) => false);
            },text: 'Sign In',)],),
            ElevatedButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage()), (route) => false);
            }, child:const Text('Register'))
          ],
        ),
      ),
    );
  }
}
